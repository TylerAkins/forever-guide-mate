local _, ns = ...

-- Source decisions: docs/loremaster/wetlands.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-wetlands",
    title = "Wetlands",
    category = "Loremaster Guides",
    revision = 1,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
        {
            checkpointQuest = 98461,
            complete = { level = { min = 18 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-darkshore-part-2-level-before-woven-accept-98461-unrequited-love",
            kind = "note",
            requiredLevel = 18,
            requiredQuests = {},
            text = "Reach level 18 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-darkshore-part-2",
            sourceActionID = "level-before-woven-accept-98461-unrequited-love",
            dependsOn = {},
        },
        {
            alternativeQuests = { 455 },
            id = "alliance-extra-468-level",
            kind = "note",
            checkpointQuest = 468,
            text = "Reach level 21 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 21 } },
            requiredLevel = 21,
        },
        {
            alternativeQuests = { 455 },
            id = "alliance-extra-468-accept",
            kind = "accept",
            text = "Accept Report to Mountaineer Rockgar from Mountaineer Kadrell.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } } } },
            route = {
                {
                    mapID = 1432,
                    x = 0.32799999999999996,
                    y = 0.496,
                    label = "Mountaineer Kadrell",
                    offMapText = "Travel to Mountaineer Kadrell in Loch Modan.",
                },
            },
            complete = { quest = { id = 468, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-468-level" },
        },
        {
            complete = { quest = { id = 98461, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-darkshore-part-2-woven-accept-98461-unrequited-love",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Archaeologist Hollee", mapID = 1439, offMapText = "Travel to Archaeologist Hollee.", x = 0.3746, y = 0.4188 },
            },
            text = "Accept Unrequited Love from Archaeologist Hollee in Auberdine. Wetlands turns Hollee's Note in to Tarrel Rockweaver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-darkshore-part-2",
            sourceActionID = "woven-accept-98461-unrequited-love",
        },
        {
            checkpointQuest = 484,
            complete = { level = { min = 18 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-wetlands-level-before-accept-484-young-crocolisk-skins",
            kind = "note",
            requiredLevel = 18,
            requiredQuests = {},
            text = "Reach level 18 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "level-before-accept-484-young-crocolisk-skins",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 484, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-accept-484-young-crocolisk-skins",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "James Halloran", mapID = 1437, offMapText = "Travel to James Halloran in Wetlands.", x = 0.0851, y = 0.5571 },
            },
            sourceStep = 1,
            text = "Accept Young Crocolisk Skins from James Halloran.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "accept-484-young-crocolisk-skins",
        },
        {
            checkpointQuest = 279,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-wetlands-level-before-accept-279-claws-from-the-deep",
            kind = "note",
            requiredLevel = 20,
            requiredQuests = {},
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "level-before-accept-279-claws-from-the-deep",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 279, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-accept-279-claws-from-the-deep",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Karl Boran", mapID = 1437, offMapText = "Travel to Karl Boran in Wetlands.", x = 0.0831, y = 0.5853 },
            },
            sourceStep = 2,
            text = "Accept Claws from the Deep from Karl Boran.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "accept-279-claws-from-the-deep",
        },
        {
            checkpointQuest = 288,
            complete = { level = { min = 22 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-wetlands-level-before-accept-288-the-third-fleet",
            kind = "note",
            requiredLevel = 22,
            requiredQuests = {},
            text = "Reach level 22 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "level-before-accept-288-the-third-fleet",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 288, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-accept-288-the-third-fleet",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "First Mate Fitzsimmons",
                    mapID = 1437,
                    offMapText = "Travel to First Mate Fitzsimmons in Wetlands.",
                    x = 0.1089,
                    y = 0.5967,
                },
            },
            sourceStep = 10,
            text = "Accept The Third Fleet from First Mate Fitzsimmons.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "accept-288-the-third-fleet",
        },
        {
            complete = { quest = { id = 463, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-accept-463-the-greenwarden",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "First Mate Fitzsimmons",
                    mapID = 1437,
                    offMapText = "Travel to First Mate Fitzsimmons in Wetlands.",
                    x = 0.1089,
                    y = 0.5967,
                },
            },
            sourceStep = 10,
            text = "Accept The Greenwarden from First Mate Fitzsimmons.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "accept-463-the-greenwarden",
        },
        {
            complete = { quest = { id = 288, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-288-the-third-fleet" },
            id = "alliance-leveling-era-alliance-wetlands-objective-288-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 14,
            text = "For The Third Fleet: Buy First Mate Fitzsimmons a Flagon of Mead.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "objective-288-quest-work",
        },
        {
            complete = { quest = { id = 288, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-accept-288-the-third-fleet",
                "alliance-leveling-era-alliance-wetlands-objective-288-quest-work",
            },
            id = "alliance-leveling-era-alliance-wetlands-turnin-288-the-third-fleet",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "First Mate Fitzsimmons",
                    mapID = 1437,
                    offMapText = "Travel to First Mate Fitzsimmons in Wetlands.",
                    x = 0.1089,
                    y = 0.5967,
                },
            },
            sourceStep = 14,
            text = "Turn in The Third Fleet to First Mate Fitzsimmons.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "turnin-288-the-third-fleet",
        },
        {
            complete = { quest = { id = 470, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-accept-470-digging-through-the-ooze",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Sida", mapID = 1437, offMapText = "Travel to Sida in Wetlands.", x = 0.118, y = 0.5799 } },
            sourceStep = 15,
            text = "Accept Digging Through the Ooze from Sida.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "accept-470-digging-through-the-ooze",
        },
        {
            complete = { quest = { id = 305, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 21 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-accept-305-in-search-of-the-excavation-team",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Tarrel Rockweaver",
                    mapID = 1437,
                    offMapText = "Travel to Tarrel Rockweaver in Wetlands.",
                    x = 0.115,
                    y = 0.5214,
                },
            },
            sourceStep = 17,
            text = "Accept In Search of The Excavation Team from Tarrel Rockweaver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "accept-305-in-search-of-the-excavation-team",
        },
        {
            complete = { questObjective = { count = 1, id = 279, index = 2, text = "Gobbler" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-279-claws-from-the-deep" },
            id = "alliance-leveling-era-alliance-wetlands-objective-279-2-gobbler",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Gobbler", mapID = 1437, offMapText = "Travel to Gobbler.", x = 0.1799, y = 0.4038 } },
            sourceStep = 18,
            text = "Collect 1 Gobbler's Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "objective-279-2-gobbler",
        },
        {
            complete = { questObjective = { count = 12, id = 279, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-279-claws-from-the-deep" },
            id = "alliance-leveling-era-alliance-wetlands-objective-279-reviewed-1",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Bluegill Murlocs", mapID = 1437, offMapText = "Travel to Bluegill Murlocs.", x = 0.17, y = 0.394 } },
            sourceStep = 19,
            text = "Kill 12 Bluegill Murlocs west of Menethil Harbor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "objective-279-reviewed-1",
        },
        {
            complete = { quest = { id = 305, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 21 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-305-in-search-of-the-excavation-team" },
            id = "alliance-leveling-era-alliance-wetlands-turnin-305-in-search-of-the-excavation-team",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Merrin Rockweaver",
                    mapID = 1437,
                    offMapText = "Travel to Merrin Rockweaver in Wetlands.",
                    x = 0.3891,
                    y = 0.5234,
                },
            },
            sourceStep = 21,
            text = "Turn in In Search of The Excavation Team to Merrin Rockweaver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "turnin-305-in-search-of-the-excavation-team",
        },
        {
            complete = { quest = { id = 306, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 21 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-accept-306-in-search-of-the-excavation-team",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 305 } } },
            route = {
                {
                    label = "Merrin Rockweaver",
                    mapID = 1437,
                    offMapText = "Travel to Merrin Rockweaver in Wetlands.",
                    x = 0.3891,
                    y = 0.5234,
                },
            },
            sourceStep = 21,
            text = "Accept In Search of The Excavation Team from Merrin Rockweaver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "accept-306-in-search-of-the-excavation-team",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 306, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 306, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 305, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 469, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-accept-469-daily-delivery",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Einar Stonegrip",
                    mapID = 1437,
                    offMapText = "Travel to Einar Stonegrip in Wetlands.",
                    x = 0.4991,
                    y = 0.3937,
                },
            },
            sourceStep = 26,
            text = "Accept Daily Delivery from Einar Stonegrip.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "accept-469-daily-delivery",
        },
        {
            complete = { quest = { id = 463, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-463-the-greenwarden" },
            id = "alliance-leveling-era-alliance-wetlands-turnin-463-the-greenwarden",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Rethiel the Greenwarden",
                    mapID = 1437,
                    offMapText = "Travel to Rethiel the Greenwarden in Wetlands.",
                    x = 0.5634,
                    y = 0.4043,
                },
            },
            sourceStep = 27,
            text = "Turn in The Greenwarden to Rethiel the Greenwarden.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "turnin-463-the-greenwarden",
        },
        {
            complete = { quest = { id = 276, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-accept-276-tramping-paws",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Rethiel the Greenwarden",
                    mapID = 1437,
                    offMapText = "Travel to Rethiel the Greenwarden in Wetlands.",
                    x = 0.5634,
                    y = 0.4043,
                },
            },
            sourceStep = 27,
            text = "Accept Tramping Paws from Rethiel the Greenwarden.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "accept-276-tramping-paws",
        },
        {
            complete = { questObjective = { count = 10, id = 276, index = 2, text = "Mosshide Mongrel" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-276-tramping-paws" },
            id = "alliance-leveling-era-alliance-wetlands-objective-276-2-mosshide-mongrel",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Mosshide Mongrel", mapID = 1437, offMapText = "Travel to Mosshide Mongrel.", x = 0.604, y = 0.582 },
            },
            sourceStep = 28,
            text = "Kill 10 Mosshide Mongrel.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "objective-276-2-mosshide-mongrel",
        },
        {
            complete = { questObjective = { count = 15, id = 276, index = 1, text = "Mosshide Gnoll" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-276-tramping-paws" },
            id = "alliance-leveling-era-alliance-wetlands-objective-276-1-mosshide-gnoll",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Mosshide Gnoll", mapID = 1437, offMapText = "Travel to Mosshide Gnoll.", x = 0.636, y = 0.622 } },
            sourceStep = 29,
            text = "Kill 15 Mosshide Gnoll.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "objective-276-1-mosshide-gnoll",
        },
        {
            complete = { questObjective = { count = 4, id = 484, index = 1, text = "Young Crocolisk Skin" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-484-young-crocolisk-skins" },
            id = "alliance-leveling-era-alliance-wetlands-objective-484-1-young-crocolisk-skin",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Young Crocolisk Skin", mapID = 1437, offMapText = "Travel to Young Crocolisk Skin.", x = 0.618, y = 0.564 },
            },
            sourceStep = 30,
            text = "Collect 4 Young Crocolisk Skin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "objective-484-1-young-crocolisk-skin",
        },
        {
            complete = { quest = { id = 276, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-accept-276-tramping-paws",
                "alliance-leveling-era-alliance-wetlands-objective-276-2-mosshide-mongrel",
                "alliance-leveling-era-alliance-wetlands-objective-276-1-mosshide-gnoll",
            },
            id = "alliance-leveling-era-alliance-wetlands-turnin-276-tramping-paws",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Rethiel the Greenwarden",
                    mapID = 1437,
                    offMapText = "Travel to Rethiel the Greenwarden in Wetlands.",
                    x = 0.5634,
                    y = 0.4043,
                },
            },
            sourceStep = 31,
            text = "Turn in Tramping Paws to Rethiel the Greenwarden.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "turnin-276-tramping-paws",
        },
        {
            complete = { quest = { id = 277, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-accept-277-fire-taboo",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 276 } } },
            route = {
                {
                    label = "Rethiel the Greenwarden",
                    mapID = 1437,
                    offMapText = "Travel to Rethiel the Greenwarden in Wetlands.",
                    x = 0.5634,
                    y = 0.4043,
                },
            },
            sourceStep = 31,
            text = "Accept Fire Taboo from Rethiel the Greenwarden.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "accept-277-fire-taboo",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 277, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 277, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 276, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 470, index = 1, text = "Black Ooze" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-470-digging-through-the-ooze" },
            id = "alliance-leveling-era-alliance-wetlands-objective-470-1-black-ooze",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Black Ooze", mapID = 1437, offMapText = "Travel to Black Ooze.", x = 0.48, y = 0.286 } },
            sourceStep = 32,
            text = "Collect 1 Sida's Bag.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "objective-470-1-black-ooze",
        },
        {
            complete = { quest = { id = 470, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-accept-470-digging-through-the-ooze",
                "alliance-leveling-era-alliance-wetlands-objective-470-1-black-ooze",
            },
            id = "alliance-leveling-era-alliance-wetlands-turnin-470-digging-through-the-ooze",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Sida", mapID = 1437, offMapText = "Travel to Sida in Wetlands.", x = 0.118, y = 0.5799 } },
            sourceStep = 34,
            text = "Turn in Digging Through the Ooze to Sida.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "turnin-470-digging-through-the-ooze",
        },
        {
            complete = { quest = { id = 306, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 21 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-306-in-search-of-the-excavation-team" },
            id = "alliance-leveling-era-alliance-wetlands-turnin-306-in-search-of-the-excavation-team",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 305 } } },
            route = {
                {
                    label = "Tarrel Rockweaver",
                    mapID = 1437,
                    offMapText = "Travel to Tarrel Rockweaver in Wetlands.",
                    x = 0.115,
                    y = 0.5214,
                },
            },
            sourceStep = 35,
            text = "Turn in In Search of The Excavation Team to Tarrel Rockweaver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "turnin-306-in-search-of-the-excavation-team",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 306, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 306, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 305, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 484, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-accept-484-young-crocolisk-skins",
                "alliance-leveling-era-alliance-wetlands-objective-484-1-young-crocolisk-skin",
            },
            id = "alliance-leveling-era-alliance-wetlands-turnin-484-young-crocolisk-skins",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "James Halloran", mapID = 1437, offMapText = "Travel to James Halloran in Wetlands.", x = 0.0851, y = 0.5571 },
            },
            sourceStep = 37,
            text = "Turn in Young Crocolisk Skins to James Halloran.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "turnin-484-young-crocolisk-skins",
        },
        {
            complete = { quest = { id = 469, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-469-daily-delivery" },
            id = "alliance-leveling-era-alliance-wetlands-turnin-469-daily-delivery",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "James Halloran", mapID = 1437, offMapText = "Travel to James Halloran in Wetlands.", x = 0.0851, y = 0.5571 },
            },
            sourceStep = 37,
            text = "Turn in Daily Delivery to James Halloran.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "turnin-469-daily-delivery",
        },
        {
            complete = { quest = { id = 279, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-accept-279-claws-from-the-deep",
                "alliance-leveling-era-alliance-wetlands-objective-279-2-gobbler",
                "alliance-leveling-era-alliance-wetlands-objective-279-reviewed-1",
            },
            id = "alliance-leveling-era-alliance-wetlands-turnin-279-claws-from-the-deep",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Karl Boran", mapID = 1437, offMapText = "Travel to Karl Boran in Wetlands.", x = 0.0831, y = 0.5853 },
            },
            sourceStep = 38,
            text = "Turn in Claws from the Deep to Karl Boran.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "turnin-279-claws-from-the-deep",
        },
        {
            checkpointQuest = 98197,
            complete = { level = { min = 18 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-wetlands-level-before-woven-accept-98197-spoils-of-war",
            kind = "note",
            requiredLevel = 18,
            requiredQuests = {},
            text = "Reach level 18 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "level-before-woven-accept-98197-spoils-of-war",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 98197, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-woven-accept-98197-spoils-of-war",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Valstag Ironjaw", mapID = 1437, offMapText = "Travel to Valstag Ironjaw.", x = 0.1, y = 0.568 } },
            text = "Accept Spoils of War from Valstag Ironjaw in Menethil Keep.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "woven-accept-98197-spoils-of-war",
        },
        {
            complete = { quest = { id = 98461, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-woven-turnin-98461-unrequited-love",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Tarrel Rockweaver", mapID = 1437, offMapText = "Travel to Tarrel Rockweaver.", x = 0.1147, y = 0.522 },
            },
            text = "Turn in Unrequited Love to Tarrel Rockweaver in Menethil Harbor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "woven-turnin-98461-unrequited-love",
        },
        {
            complete = { quest = { id = 98197, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-woven-accept-98197-spoils-of-war" },
            id = "alliance-leveling-era-alliance-wetlands-woven-objective-98197-spoils-of-war",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Menethil Harbor", mapID = 1437, offMapText = "Travel to Menethil Harbor.", x = 0.1, y = 0.568 } },
            text = "Recover 6 Khaz Modan Timber and 30 Khaz Modan Iron from the water in Menethil Harbor. No saved spot for this, so the guide follows the pin in your quest log.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "woven-objective-98197-spoils-of-war",
        },
        {
            complete = { quest = { id = 98197, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-woven-accept-98197-spoils-of-war",
                "alliance-leveling-era-alliance-wetlands-woven-objective-98197-spoils-of-war",
            },
            id = "alliance-leveling-era-alliance-wetlands-woven-turnin-98197-spoils-of-war",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Valstag Ironjaw", mapID = 1437, offMapText = "Travel to Valstag Ironjaw.", x = 0.1, y = 0.568 } },
            text = "Turn in Spoils of War to Valstag Ironjaw in Menethil Keep.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "woven-turnin-98197-spoils-of-war",
        },
        {
            checkpointQuest = 281,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-wetlands-part-2-level-before-accept-281-reclaiming-goods",
            kind = "note",
            requiredLevel = 20,
            requiredQuests = {},
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "level-before-accept-281-reclaiming-goods",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 281, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 281, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 281, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-281-reclaiming-goods",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 279 } } },
            route = {
                { label = "Karl Boran", mapID = 1437, offMapText = "Travel to Karl Boran in Wetlands.", x = 0.0831, y = 0.5853 },
            },
            sourceStep = 1,
            text = "Accept Reclaiming Goods from Karl Boran.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-281-reclaiming-goods",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 281, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 281, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 471, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-471-apprentice-s-duties",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 484 } } },
            route = {
                { label = "James Halloran", mapID = 1437, offMapText = "Travel to James Halloran in Wetlands.", x = 0.0851, y = 0.5571 },
            },
            sourceStep = 2,
            text = "Accept Apprentice's Duties from James Halloran.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-471-apprentice-s-duties",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 471, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 471, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 484, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 289,
            complete = { level = { min = 22 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-wetlands-part-2-level-before-accept-289-the-cursed-crew",
            kind = "note",
            requiredLevel = 22,
            requiredQuests = {},
            text = "Reach level 22 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "level-before-accept-289-the-cursed-crew",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 289, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 289, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 289, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-289-the-cursed-crew",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 288 } } },
            route = {
                {
                    label = "First Mate Fitzsimmons",
                    mapID = 1437,
                    offMapText = "Travel to First Mate Fitzsimmons in Wetlands.",
                    x = 0.1089,
                    y = 0.5967,
                },
            },
            sourceStep = 3,
            text = "Accept The Cursed Crew from First Mate Fitzsimmons.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-289-the-cursed-crew",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 289, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 289, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            alternativeQuests = { 455 },
            id = "alliance-extra-468-objective",
            kind = "objective",
            text = "Speak with Mountaineer Rockgar. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } } } },
            route = {},
            complete = { quest = { id = 468, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-468-accept" },
            useClientPin = true,
        },
        {
            alternativeQuests = { 455 },
            id = "alliance-extra-468-turnin",
            kind = "turnin",
            text = "Turn in Report to Mountaineer Rockgar to Mountaineer Rockgar.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } } } },
            route = {
                {
                    mapID = 1432,
                    x = 0.254,
                    y = 0.10400000000000001,
                    label = "Mountaineer Rockgar",
                    offMapText = "Travel to Mountaineer Rockgar in Loch Modan.",
                },
            },
            complete = { quest = { id = 468, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-468-objective" },
        },
        {
            id = "alliance-extra-455-level",
            kind = "note",
            checkpointQuest = 455,
            text = "Reach level 21 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 21 } },
            requiredLevel = 21,
        },
        {
            id = "alliance-extra-455-accept",
            kind = "accept",
            text = "Accept The Algaz Gauntlet from Mountaineer Rockgar.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } } } },
            route = {
                {
                    mapID = 1432,
                    x = 0.254,
                    y = 0.10400000000000001,
                    label = "Mountaineer Rockgar",
                    offMapText = "Travel to Mountaineer Rockgar in Loch Modan.",
                },
            },
            complete = { quest = { id = 455, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-455-level" },
        },
        {
            id = "alliance-extra-455-objective",
            kind = "objective",
            text = "Traverse Dun Algaz. Kill 8 Dragonmaw Scouts and 6 Dragonmaw Grunts.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } } } },
            route = {
                { mapID = 1437, x = 0.5, y = 0.698, label = "Dragonmaw Grunt", offMapText = "Travel to Dragonmaw Grunt in Wetlands." },
            },
            complete = { quest = { id = 455, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-455-accept" },
        },
        {
            id = "alliance-extra-455-turnin",
            kind = "turnin",
            text = "Turn in The Algaz Gauntlet to Valstag Ironjaw.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } } } },
            route = {
                { mapID = 1437, x = 0.1, y = 0.568, label = "Valstag Ironjaw", offMapText = "Travel to Valstag Ironjaw in Wetlands." },
            },
            complete = { quest = { id = 455, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-455-objective" },
        },
        {
            alternativeQuests = { 464 },
            id = "alliance-extra-473-level",
            kind = "note",
            checkpointQuest = 473,
            text = "Reach level 28 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 28 } },
            requiredLevel = 28,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 473, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 473, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 455, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            alternativeQuests = { 464 },
            complete = { quest = { id = 473, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } } } },
            dependsOn = { "alliance-extra-473-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 473, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 473, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { any = { { any = { { quest = { id = 455, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                { quest = { id = 473, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 473, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { any = { { any = { { quest = { id = 455, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-473-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 455 } } },
            route = {
                { label = "Valstag Ironjaw", mapID = 1437, offMapText = "Travel to Valstag Ironjaw in Wetlands.", x = 0.1, y = 0.568 },
            },
            text = "Accept Report to Captain Stoutfist from Valstag Ironjaw.",
            useClientText = false,
        },
        {
            alternativeQuests = { 464 },
            complete = { quest = { id = 473, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } } } },
            dependsOn = { "alliance-extra-473-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 473, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 473, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { any = { { any = { { quest = { id = 455, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                { quest = { id = 473, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 473, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { any = { { any = { { quest = { id = 455, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-473-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 455 } } },
            route = {},
            text = "Speak with Captain Stoutfist. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            alternativeQuests = { 464 },
            complete = { quest = { id = 473, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } } } },
            dependsOn = { "alliance-extra-473-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 473, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 473, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { any = { { any = { { quest = { id = 455, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                { quest = { id = 473, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 473, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { any = { { any = { { quest = { id = 455, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-473-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 455 } } },
            route = {
                {
                    label = "Captain Stoutfist",
                    mapID = 1437,
                    offMapText = "Travel to Captain Stoutfist in Wetlands.",
                    x = 0.098,
                    y = 0.574,
                },
            },
            text = "Turn in Report to Captain Stoutfist to Captain Stoutfist.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 464, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-464-war-banners",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Captain Stoutfist",
                    mapID = 1437,
                    offMapText = "Travel to Captain Stoutfist in Wetlands.",
                    x = 0.0986,
                    y = 0.5749,
                },
            },
            sourceStep = 7,
            text = "Accept War Banners from Captain Stoutfist.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-464-war-banners",
        },
        {
            complete = { quest = { id = 281, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-281-reclaiming-goods" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-281-reclaiming-goods",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 279 } } },
            route = {
                { label = "Reclaiming Goods", mapID = 1437, offMapText = "Travel to Reclaiming Goods.", x = 0.1351, y = 0.4138 },
            },
            sourceStep = 8,
            text = "Turn in Reclaiming Goods.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-281-reclaiming-goods",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 281, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 281, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 284, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-284-the-search-continues",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 281 } } },
            route = {
                { label = "The Search Continues", mapID = 1437, offMapText = "Travel to The Search Continues.", x = 0.1351, y = 0.4138 },
            },
            sourceStep = 8,
            text = "Accept The Search Continues.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-284-the-search-continues",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 284, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 284, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 281, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 284, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-284-the-search-continues" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-284-the-search-continues",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 281 } } },
            route = {
                { label = "The Search Continues", mapID = 1437, offMapText = "Travel to The Search Continues.", x = 0.1361, y = 0.3821 },
            },
            sourceStep = 9,
            text = "Turn in The Search Continues.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-284-the-search-continues",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 284, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 284, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 281, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 285, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-285-search-more-hovels",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 284 } } },
            route = {
                { label = "Search More Hovels", mapID = 1437, offMapText = "Travel to Search More Hovels.", x = 0.1361, y = 0.3821 },
            },
            sourceStep = 9,
            text = "Accept Search More Hovels.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-285-search-more-hovels",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 285, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 285, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 284, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 281, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 285, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-285-search-more-hovels" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-285-search-more-hovels",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 284 } } },
            route = {
                { label = "Search More Hovels", mapID = 1437, offMapText = "Travel to Search More Hovels.", x = 0.1395, y = 0.3481 },
            },
            sourceStep = 10,
            text = "Turn in Search More Hovels.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-285-search-more-hovels",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 285, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 285, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 284, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 281, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 286, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-286-return-the-statuette",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 285 } } },
            route = {
                { label = "Return the Statuette", mapID = 1437, offMapText = "Travel to Return the Statuette.", x = 0.1395, y = 0.3481 },
            },
            sourceStep = 10,
            text = "Accept Return the Statuette.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-286-return-the-statuette",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 286, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 286, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 285, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 284, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 281, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 289, index = 3, text = "First Mate Snellig" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-289-the-cursed-crew" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-289-3-first-mate-snellig",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 288 } } },
            route = {
                { label = "First Mate Snellig", mapID = 1437, offMapText = "Travel to First Mate Snellig.", x = 0.1408, y = 0.3001 },
            },
            sourceStep = 11,
            text = "Collect 1 Snellig's Snuffbox.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-289-3-first-mate-snellig",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 289, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 289, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 289, index = 2, text = "Cursed Marine" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-289-the-cursed-crew" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-289-2-cursed-marine",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 288 } } },
            route = { { label = "Cursed Marine", mapID = 1437, offMapText = "Travel to Cursed Marine.", x = 0.138, y = 0.296 } },
            sourceStep = 12,
            text = "Kill 5 Cursed Marine.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-289-2-cursed-marine",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 289, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 289, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 13, id = 289, index = 1, text = "Cursed Sailor" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-289-the-cursed-crew" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-289-1-cursed-sailor",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 288 } } },
            route = { { label = "Cursed Sailor", mapID = 1437, offMapText = "Travel to Cursed Sailor.", x = 0.138, y = 0.296 } },
            sourceStep = 12,
            text = "Kill 13 Cursed Sailor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-289-1-cursed-sailor",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 289, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 289, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 6, id = 471, index = 1, text = "Giant Wetlands Crocolisk" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-471-apprentice-s-duties" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-471-1-giant-wetlands-crocolisk",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 484 } } },
            route = {
                {
                    label = "Giant Wetlands Crocolisk",
                    mapID = 1437,
                    offMapText = "Travel to Giant Wetlands Crocolisk.",
                    x = 0.164,
                    y = 0.274,
                },
            },
            sourceStep = 13,
            text = "Collect 6 Giant Crocolisk Skin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-471-1-giant-wetlands-crocolisk",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 471, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 471, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 484, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 9, id = 277, index = 1, text = "Mosshide Brute" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-277-1-mosshide-brute",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 276 } } },
            route = { { label = "Mosshide Brute", mapID = 1437, offMapText = "Travel to Mosshide Brute.", x = 0.304, y = 0.284 } },
            sourceStep = 14,
            text = "Collect 9 Crude Flint.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-277-1-mosshide-brute",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 277, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 277, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 276, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 299, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-299-uncovering-the-past",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Prospector Whelgar",
                    mapID = 1437,
                    offMapText = "Travel to Prospector Whelgar in Wetlands.",
                    x = 0.3881,
                    y = 0.5239,
                },
            },
            sourceStep = 16,
            text = "Accept Uncovering the Past from Prospector Whelgar.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-299-uncovering-the-past",
        },
        {
            complete = { questObjective = { count = 1, id = 299, index = 4, text = "Neru Fragment" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-299-uncovering-the-past" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-299-4-neru-fragment",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Neru Fragment", mapID = 1437, offMapText = "Travel to Neru Fragment.", x = 0.3447, y = 0.4604 } },
            sourceStep = 20,
            text = "Collect 1 Neru Fragment.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-299-4-neru-fragment",
        },
        {
            complete = { questObjective = { count = 1, id = 299, index = 3, text = "Golm Fragment" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-299-uncovering-the-past" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-299-3-golm-fragment",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Golm Fragment", mapID = 1437, offMapText = "Travel to Golm Fragment.", x = 0.356, y = 0.479 } },
            sourceStep = 21,
            text = "Collect 1 Golm Fragment.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-299-3-golm-fragment",
        },
        {
            complete = { questObjective = { count = 1, id = 299, index = 2, text = "Modr Fragment" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-299-uncovering-the-past" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-299-2-modr-fragment",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Modr Fragment", mapID = 1437, offMapText = "Travel to Modr Fragment.", x = 0.356, y = 0.479 } },
            sourceStep = 22,
            text = "Collect 1 Modr Fragment.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-299-2-modr-fragment",
        },
        {
            complete = { questObjective = { count = 1, id = 299, index = 1, text = "Ados Fragment" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-299-uncovering-the-past" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-299-1-ados-fragment",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Ados Fragment", mapID = 1437, offMapText = "Travel to Ados Fragment.", x = 0.356, y = 0.479 } },
            sourceStep = 23,
            text = "Collect 1 Ados Fragment.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-299-1-ados-fragment",
        },
        {
            complete = { quest = { id = 299, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-part-2-accept-299-uncovering-the-past",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-299-4-neru-fragment",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-299-3-golm-fragment",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-299-2-modr-fragment",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-299-1-ados-fragment",
            },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-299-uncovering-the-past",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Prospector Whelgar",
                    mapID = 1437,
                    offMapText = "Travel to Prospector Whelgar in Wetlands.",
                    x = 0.3881,
                    y = 0.5239,
                },
            },
            sourceStep = 25,
            text = "Turn in Uncovering the Past to Prospector Whelgar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-299-uncovering-the-past",
        },
        {
            complete = { questObjective = { count = 8, id = 464, index = 1, text = "Dragonmaw Raider" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-464-war-banners" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-464-1-dragonmaw-raider",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Dragonmaw War Banner", mapID = 1437, offMapText = "Travel to Dragonmaw War Banner.", x = 0.41, y = 0.396 },
            },
            sourceStep = 26,
            text = "Collect 8 Dragonmaw War Banner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-464-1-dragonmaw-raider",
        },
        {
            complete = { quest = { id = 277, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-objective-277-1-mosshide-brute" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-277-fire-taboo",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 276 } } },
            route = {
                {
                    label = "Rethiel the Greenwarden",
                    mapID = 1437,
                    offMapText = "Travel to Rethiel the Greenwarden in Wetlands.",
                    x = 0.5637,
                    y = 0.404,
                },
            },
            sourceStep = 27,
            text = "Turn in Fire Taboo to Rethiel the Greenwarden.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-277-fire-taboo",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 277, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 277, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 276, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 275, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-275-blisters-on-the-land",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 277 } } },
            route = {
                {
                    label = "Rethiel the Greenwarden",
                    mapID = 1437,
                    offMapText = "Travel to Rethiel the Greenwarden in Wetlands.",
                    x = 0.5637,
                    y = 0.404,
                },
            },
            sourceStep = 27,
            text = "Accept Blisters on The Land from Rethiel the Greenwarden.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-275-blisters-on-the-land",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 275, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 275, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 277, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 276, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 289, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-part-2-accept-289-the-cursed-crew",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-289-3-first-mate-snellig",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-289-2-cursed-marine",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-289-1-cursed-sailor",
            },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-289-the-cursed-crew",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 288 } } },
            route = {
                {
                    label = "First Mate Fitzsimmons",
                    mapID = 1437,
                    offMapText = "Travel to First Mate Fitzsimmons in Wetlands.",
                    x = 0.1089,
                    y = 0.5967,
                },
            },
            sourceStep = 30,
            text = "Turn in The Cursed Crew to First Mate Fitzsimmons.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-289-the-cursed-crew",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 289, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 289, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 290, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-290-lifting-the-curse",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 289 } } },
            route = {
                {
                    label = "First Mate Fitzsimmons",
                    mapID = 1437,
                    offMapText = "Travel to First Mate Fitzsimmons in Wetlands.",
                    x = 0.1089,
                    y = 0.5967,
                },
            },
            sourceStep = 30,
            text = "Accept Lifting the Curse from First Mate Fitzsimmons.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-290-lifting-the-curse",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 290, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 290, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 289, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 286, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-286-return-the-statuette" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-286-return-the-statuette",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 285 } } },
            route = {
                { label = "Karl Boran", mapID = 1437, offMapText = "Travel to Karl Boran in Wetlands.", x = 0.0831, y = 0.5854 },
            },
            sourceStep = 39,
            text = "Turn in Return the Statuette to Karl Boran.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-286-return-the-statuette",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 286, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 286, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 285, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 284, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 281, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 471, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-part-2-accept-471-apprentice-s-duties",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-471-1-giant-wetlands-crocolisk",
            },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-471-apprentice-s-duties",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 484 } } },
            route = {
                { label = "James Halloran", mapID = 1437, offMapText = "Travel to James Halloran in Wetlands.", x = 0.0851, y = 0.5571 },
            },
            sourceStep = 40,
            text = "Turn in Apprentice's Duties to James Halloran.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-471-apprentice-s-duties",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 471, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 471, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 484, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 464, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-part-2-accept-464-war-banners",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-464-1-dragonmaw-raider",
            },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-464-war-banners",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Captain Stoutfist",
                    mapID = 1437,
                    offMapText = "Travel to Captain Stoutfist in Wetlands.",
                    x = 0.0986,
                    y = 0.5749,
                },
            },
            sourceStep = 41,
            text = "Turn in War Banners to Captain Stoutfist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-464-war-banners",
        },
        {
            complete = { quest = { id = 465, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-465-nek-rosh-s-gambit",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 464 } } },
            route = {
                {
                    label = "Captain Stoutfist",
                    mapID = 1437,
                    offMapText = "Travel to Captain Stoutfist in Wetlands.",
                    x = 0.0986,
                    y = 0.5749,
                },
            },
            sourceStep = 41,
            text = "Accept Nek'rosh's Gambit from Captain Stoutfist.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-465-nek-rosh-s-gambit",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 465, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 465, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 464, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 290, index = 1, text = "Captain Halyndor" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-290-lifting-the-curse" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-290-1-captain-halyndor",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 289 } } },
            route = {
                { label = "Captain Halyndor", mapID = 1437, offMapText = "Travel to Captain Halyndor.", x = 0.1545, y = 0.2361 },
            },
            sourceStep = 42,
            text = "Collect 1 Intrepid Strongbox Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-290-1-captain-halyndor",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 290, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 290, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 289, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 290, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-part-2-accept-290-lifting-the-curse",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-290-1-captain-halyndor",
            },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-290-lifting-the-curse",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 289 } } },
            route = {
                { label = "Lifting the Curse", mapID = 1437, offMapText = "Travel to Lifting the Curse.", x = 0.1437, y = 0.2402 },
            },
            sourceStep = 43,
            text = "Turn in Lifting the Curse.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-290-lifting-the-curse",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 290, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 290, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 289, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 292, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-292-the-eye-of-paleth",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 290 } } },
            route = {
                { label = "The Eye of Paleth", mapID = 1437, offMapText = "Travel to The Eye of Paleth.", x = 0.1437, y = 0.2402 },
            },
            sourceStep = 43,
            text = "Accept The Eye of Paleth.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-292-the-eye-of-paleth",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 292, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 292, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 290, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 289, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 12, id = 275, index = 1, text = "Fen Creeper" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-275-blisters-on-the-land" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-275-1-fen-creeper",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 277 } } },
            route = { { label = "Fen Creeper", mapID = 1437, offMapText = "Travel to Fen Creeper.", x = 0.474, y = 0.469 } },
            sourceStep = 44,
            text = "Kill 12 Fen Creeper.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-275-1-fen-creeper",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 275, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 275, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 277, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 276, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 465, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-465-nek-rosh-s-gambit" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-465-nek-rosh-s-gambit",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 464 } } },
            route = {
                { label = "Nek'rosh's Gambit", mapID = 1437, offMapText = "Travel to Nek'rosh's Gambit.", x = 0.474, y = 0.469 },
            },
            sourceStep = 45,
            text = "Turn in Nek'rosh's Gambit.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-465-nek-rosh-s-gambit",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 465, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 465, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 464, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 12, id = 275, index = 1, text = "Fen Creeper" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-275-blisters-on-the-land" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-275-1-fen-creeper-2",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 277 } } },
            route = { { label = "Fen Creeper", mapID = 1437, offMapText = "Travel to Fen Creeper.", x = 0.464, y = 0.352 } },
            sourceStep = 47,
            text = "Kill 12 Fen Creeper.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-275-1-fen-creeper-2",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 275, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 275, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 277, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 276, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 275, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-part-2-accept-275-blisters-on-the-land",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-275-1-fen-creeper",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-275-1-fen-creeper-2",
            },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-275-blisters-on-the-land",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 277 } } },
            route = {
                {
                    label = "Rethiel the Greenwarden",
                    mapID = 1437,
                    offMapText = "Travel to Rethiel the Greenwarden in Wetlands.",
                    x = 0.5637,
                    y = 0.404,
                },
            },
            sourceStep = 48,
            text = "Turn in Blisters on The Land to Rethiel the Greenwarden.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-275-blisters-on-the-land",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 275, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 275, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 277, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 276, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 631,
            complete = { level = { min = 28 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-wetlands-part-2-level-before-accept-631-the-thandol-span",
            kind = "note",
            requiredLevel = 28,
            requiredQuests = {},
            text = "Reach level 28 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "level-before-accept-631-the-thandol-span",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 631, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-631-the-thandol-span",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Rhag Garmason", mapID = 1437, offMapText = "Travel to Rhag Garmason in Wetlands.", x = 0.4992, y = 0.1821 },
            },
            sourceStep = 49,
            text = "Accept The Thandol Span from Rhag Garmason.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-631-the-thandol-span",
        },
        {
            complete = { quest = { id = 631, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-631-the-thandol-span" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-631-the-thandol-span",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "The Thandol Span", mapID = 1437, offMapText = "Travel to The Thandol Span.", x = 0.5136, y = 0.0811 },
            },
            sourceStep = 52,
            text = "Turn in The Thandol Span.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-631-the-thandol-span",
        },
        {
            complete = { quest = { id = 632, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-632-the-thandol-span",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 631 } } },
            route = {
                { label = "The Thandol Span", mapID = 1437, offMapText = "Travel to The Thandol Span.", x = 0.5136, y = 0.0811 },
            },
            sourceStep = 52,
            text = "Accept The Thandol Span.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-632-the-thandol-span",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 632, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 632, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 631, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 632, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-632-the-thandol-span" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-632-the-thandol-span",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 631 } } },
            route = {
                { label = "Rhag Garmason", mapID = 1437, offMapText = "Travel to Rhag Garmason in Wetlands.", x = 0.4992, y = 0.1822 },
            },
            sourceStep = 53,
            text = "Turn in The Thandol Span to Rhag Garmason.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-632-the-thandol-span",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 632, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 632, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 631, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 633, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-633-the-thandol-span",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 632 } } },
            route = {
                { label = "Rhag Garmason", mapID = 1437, offMapText = "Travel to Rhag Garmason in Wetlands.", x = 0.4992, y = 0.1822 },
            },
            sourceStep = 53,
            text = "Accept The Thandol Span from Rhag Garmason.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-633-the-thandol-span",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 633, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 633, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 632, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 631, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 633, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-633-the-thandol-span" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-objective-633-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 632 } } },
            sourceStep = 58,
            text = "For The Thandol Span: Destroy the cache of explosives.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "objective-633-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 633, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 633, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 632, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 631, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 633, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-part-2-accept-633-the-thandol-span",
                "alliance-leveling-era-alliance-wetlands-part-2-objective-633-quest-work",
            },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-633-the-thandol-span",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 632 } } },
            route = {
                { label = "Rhag Garmason", mapID = 1437, offMapText = "Travel to Rhag Garmason in Wetlands.", x = 0.4992, y = 0.1822 },
            },
            sourceStep = 58,
            text = "Turn in The Thandol Span to Rhag Garmason.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-633-the-thandol-span",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 633, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 633, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 632, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 631, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 634, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-634-plea-to-the-alliance",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 633 } } },
            route = {
                { label = "Rhag Garmason", mapID = 1437, offMapText = "Travel to Rhag Garmason in Wetlands.", x = 0.4992, y = 0.1822 },
            },
            sourceStep = 58,
            text = "Accept Plea To The Alliance from Rhag Garmason.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-634-plea-to-the-alliance",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 634, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 634, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 633, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 632, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 631, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 634, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-634-plea-to-the-alliance" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-634-plea-to-the-alliance",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 633 } } },
            route = {
                {
                    label = "Captain Nials",
                    mapID = 1417,
                    offMapText = "Travel to Captain Nials in Arathi Highlands.",
                    x = 0.4583,
                    y = 0.4755,
                },
            },
            sourceStep = 59,
            text = "Turn in Plea To The Alliance to Captain Nials.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-634-plea-to-the-alliance",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 634, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 634, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 633, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 632, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 631, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 292, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-292-the-eye-of-paleth" },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-292-the-eye-of-paleth",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 290 } } },
            route = {
                {
                    label = "Glorin Steelbrow",
                    mapID = 1437,
                    offMapText = "Travel to Glorin Steelbrow in Wetlands.",
                    x = 0.1058,
                    y = 0.6059,
                },
            },
            sourceStep = 64,
            text = "Turn in The Eye of Paleth to Glorin Steelbrow.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "turnin-292-the-eye-of-paleth",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 292, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 292, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 290, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 289, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 293, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-293-cleansing-the-eye",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 292 } } },
            route = {
                {
                    label = "Glorin Steelbrow",
                    mapID = 1437,
                    offMapText = "Travel to Glorin Steelbrow in Wetlands.",
                    x = 0.1058,
                    y = 0.6059,
                },
            },
            sourceStep = 64,
            text = "Accept Cleansing the Eye from Glorin Steelbrow.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-293-cleansing-the-eye",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 293, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 293, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 292, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 290, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 289, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 293,
            complete = { level = { min = 22 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-level-before-turnin-293-cleansing-the-eye",
            kind = "note",
            requiredLevel = 22,
            requiredQuests = {},
            text = "Reach level 22 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "level-before-turnin-293-cleansing-the-eye",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 293, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 293, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 292, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 290, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 289, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-303-level",
            kind = "note",
            checkpointQuest = 303,
            text = "Reach level 30 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 30 } },
            requiredLevel = 30,
        },
        {
            id = "alliance-extra-303-accept",
            kind = "accept",
            text = "Accept The Dark Iron War from Motley Garmason.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            route = {
                { mapID = 1437, x = 0.496, y = 0.182, label = "Motley Garmason", offMapText = "Travel to Motley Garmason in Wetlands." },
            },
            complete = { quest = { id = 303, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-303-level" },
        },
        {
            id = "alliance-extra-303-objective",
            kind = "objective",
            text = "Motley Garmason at Dun Modr wants you to kill 10 Dark Iron Dwarves, 5 Dark Iron Tunnelers, 5 Dark Iron Saboteurs and 5 Dark Iron Demolitionists. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            route = {
                { mapID = 1437, x = 0.48, y = 0.168, label = "Dark Iron Dwarf", offMapText = "Travel to Dark Iron Dwarf in Wetlands." },
            },
            complete = { quest = { id = 303, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-303-accept" },
        },
        {
            id = "alliance-extra-303-turnin",
            kind = "turnin",
            text = "Turn in The Dark Iron War to Motley Garmason.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } } } },
            route = {
                { mapID = 1437, x = 0.496, y = 0.182, label = "Motley Garmason", offMapText = "Travel to Motley Garmason in Wetlands." },
            },
            complete = { quest = { id = 303, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-303-objective" },
        },
        {
            id = "alliance-extra-474-level",
            kind = "note",
            checkpointQuest = 474,
            text = "Reach level 32 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 32 } },
            requiredLevel = 32,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 474, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 474, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 465, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 464, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 474, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } } } },
            dependsOn = { "alliance-extra-474-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 474, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 474, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 465, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { any = { { any = { { quest = { id = 464, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 474, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 474, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 465, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { any = { { any = { { quest = { id = 464, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-474-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 465 } } },
            route = {
                {
                    label = "Dragonmaw Catapult",
                    mapID = 1437,
                    offMapText = "Travel to Dragonmaw Catapult in Wetlands.",
                    x = 0.475,
                    y = 0.469,
                },
            },
            text = "Accept Defeat Nek'rosh from Dragonmaw Catapult.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 474, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } } } },
            dependsOn = { "alliance-extra-474-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 474, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 474, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 465, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { any = { { any = { { quest = { id = 464, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 474, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 474, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 465, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { any = { { any = { { quest = { id = 464, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-474-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 465 } } },
            route = {
                {
                    label = "Chieftain Nek'rosh",
                    mapID = 1437,
                    offMapText = "Travel to Chieftain Nek'rosh in Wetlands.",
                    x = 0.534,
                    y = 0.544,
                },
            },
            text = "Kill Chieftain Nek'rosh and loot his head. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 474, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } } } },
            dependsOn = { "alliance-extra-474-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 474, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 474, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 465, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { any = { { any = { { quest = { id = 464, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 474, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 474, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 465, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { any = { { any = { { quest = { id = 464, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-474-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 465 } } },
            route = {
                {
                    label = "Captain Stoutfist",
                    mapID = 1437,
                    offMapText = "Travel to Captain Stoutfist in Wetlands.",
                    x = 0.098,
                    y = 0.574,
                },
            },
            text = "Turn in Defeat Nek'rosh to Captain Stoutfist.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 293, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-293-cleansing-the-eye",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 292 } } },
            route = {
                {
                    label = "Archbishop Benedictus",
                    mapID = 1453,
                    offMapText = "Travel to Archbishop Benedictus in Stormwind City.",
                    x = 0.3959,
                    y = 0.2725,
                },
            },
            sourceStep = 1,
            text = "Turn in Cleansing the Eye to Archbishop Benedictus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-293-cleansing-the-eye",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 293, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 293, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 292, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 290, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 289, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 288, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 1274,
            complete = { level = { min = 28 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-level-before-accept-1274-the-missing-diplomat",
            kind = "note",
            requiredLevel = 28,
            requiredQuests = {},
            text = "Reach level 28 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "level-before-accept-1274-the-missing-diplomat",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1274, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1274-the-missing-diplomat",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Thomas", mapID = 1453, offMapText = "Travel to Thomas in Stormwind City.", x = 0.496, y = 0.445 } },
            sourceStep = 2,
            text = "Accept The Missing Diplomat from Thomas.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1274-the-missing-diplomat",
        },
        {
            complete = { quest = { id = 1274, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1274-the-missing-diplomat" },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1274-the-missing-diplomat",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bishop DeLavey",
                    mapID = 1453,
                    offMapText = "Travel to Bishop DeLavey in Stormwind City.",
                    x = 0.783,
                    y = 0.2544,
                },
            },
            sourceStep = 5,
            text = "Turn in The Missing Diplomat to Bishop DeLavey.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1274-the-missing-diplomat",
        },
        {
            complete = { quest = { id = 1241, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1241-the-missing-diplomat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1274 } } },
            route = {
                {
                    label = "Bishop DeLavey",
                    mapID = 1453,
                    offMapText = "Travel to Bishop DeLavey in Stormwind City.",
                    x = 0.803,
                    y = 0.441,
                },
            },
            sourceStep = 5,
            text = "Accept The Missing Diplomat from Bishop DeLavey.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1241-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1241, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1241, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1241, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1241-the-missing-diplomat" },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1241-the-missing-diplomat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1274 } } },
            route = {
                { label = "Jorgen", mapID = 1453, offMapText = "Travel to Jorgen in Stormwind City.", x = 0.7317, y = 0.7842 },
            },
            sourceStep = 7,
            text = "Turn in The Missing Diplomat to Jorgen.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1241-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1241, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1241, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1242, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1242-the-missing-diplomat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1241 } } },
            route = { { label = "Jorgen", mapID = 1453, offMapText = "Travel to Jorgen in Stormwind City.", x = 0.763, y = 0.851 } },
            sourceStep = 7,
            text = "Accept The Missing Diplomat from Jorgen.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1242-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1242, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1242, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1241, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1242, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1242-the-missing-diplomat" },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1242-the-missing-diplomat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1241 } } },
            route = {
                {
                    label = "Elling Trias",
                    mapID = 1453,
                    offMapText = "Travel to Elling Trias in Stormwind City.",
                    x = 0.5991,
                    y = 0.6417,
                },
            },
            sourceStep = 8,
            text = "Turn in The Missing Diplomat to Elling Trias.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1242-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1242, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1242, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1241, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1243, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1243-the-missing-diplomat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1242 } } },
            route = {
                { label = "Elling Trias", mapID = 1453, offMapText = "Travel to Elling Trias in Stormwind City.", x = 0.66, y = 0.741 },
            },
            sourceStep = 8,
            text = "Accept The Missing Diplomat from Elling Trias.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1243-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1243, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1243, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1242, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1241, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1243, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1243-the-missing-diplomat" },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1243-the-missing-diplomat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1242 } } },
            sourceStep = 15,
            text = "Turn in The Missing Diplomat to Watcher Backus.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1243-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1243, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1243, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1242, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1241, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1244, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1244-the-missing-diplomat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1243 } } },
            sourceStep = 15,
            text = "Accept The Missing Diplomat from Watcher Backus.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1244-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1244, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1244, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1243, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1242, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1241, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1244, index = 1, text = "Defias Docket" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1244-the-missing-diplomat" },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-objective-1244-1-defias-docket",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1243 } } },
            route = { { label = "Defias Docket", mapID = 1431, offMapText = "Travel to Defias Docket.", x = 0.2393, y = 0.7207 } },
            sourceStep = 28,
            text = "Collect 1 Defias Docket.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "objective-1244-1-defias-docket",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1244, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1244, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1243, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1242, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1241, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1244, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1244-the-missing-diplomat",
                "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-objective-1244-1-defias-docket",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1244-the-missing-diplomat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1243 } } },
            sourceStep = 47,
            text = "Turn in The Missing Diplomat to Watcher Backus.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1244-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1244, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1244, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1243, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1242, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1241, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1245, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1245-the-missing-diplomat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1244 } } },
            sourceStep = 47,
            text = "Accept The Missing Diplomat from Watcher Backus.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1245-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1245, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1245, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1244, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1243, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1242, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1241, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1301, state = "activeOrCompleted" } },
            conditions = {
                all = { { class = { 8 } }, { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } },
            },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1301-james-hyal",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Connor Rivers",
                    mapID = 1453,
                    offMapText = "Travel to Connor Rivers in Stormwind City.",
                    x = 0.4062,
                    y = 0.9183,
                },
            },
            sourceStep = 68,
            text = "Accept James Hyal from Connor Rivers.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1301-james-hyal",
        },
        {
            complete = { quest = { id = 1245, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1245-the-missing-diplomat" },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1245-the-missing-diplomat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1244 } } },
            route = {
                {
                    label = "Elling Trias",
                    mapID = 1453,
                    offMapText = "Travel to Elling Trias in Stormwind City.",
                    x = 0.5991,
                    y = 0.6417,
                },
            },
            sourceStep = 72,
            text = "Turn in The Missing Diplomat to Elling Trias.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1245-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1245, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1245, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1244, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1243, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1242, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1241, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1246, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1246-the-missing-diplomat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1245 } } },
            route = {
                { label = "Elling Trias", mapID = 1453, offMapText = "Travel to Elling Trias in Stormwind City.", x = 0.66, y = 0.741 },
            },
            sourceStep = 72,
            text = "Accept The Missing Diplomat from Elling Trias.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1246-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1246, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1246, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1245, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1244, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1243, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1242, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1241, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1301, state = "activeOrCompleted" } },
            conditions = {
                all = {
                    { class = { 1, 2, 3, 4, 5, 7, 9, 11 } },
                    { faction = "Alliance" },
                    { level = { min = 30 } },
                    { race = { 1, 3, 4, 7, 95 } },
                },
            },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1301-james-hyal-2",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Connor Rivers",
                    mapID = 1453,
                    offMapText = "Travel to Connor Rivers in Stormwind City.",
                    x = 0.4062,
                    y = 0.9183,
                },
            },
            sourceStep = 76,
            text = "Accept James Hyal from Connor Rivers.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1301-james-hyal-2",
        },
        {
            complete = { quest = { id = 1246, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1246-the-missing-diplomat" },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1246-the-missing-diplomat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1245 } } },
            route = {
                {
                    label = "Dashel Stonefist",
                    mapID = 1453,
                    offMapText = "Travel to Dashel Stonefist in Stormwind City.",
                    x = 0.7053,
                    y = 0.4488,
                },
            },
            sourceStep = 88,
            text = "Turn in The Missing Diplomat to Dashel Stonefist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1246-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1246, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1246, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1245, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1244, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1243, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1242, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1241, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1447, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1447-the-missing-diplomat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1246 } } },
            route = {
                {
                    label = "Dashel Stonefist",
                    mapID = 1453,
                    offMapText = "Travel to Dashel Stonefist in Stormwind City.",
                    x = 0.7053,
                    y = 0.4488,
                },
            },
            sourceStep = 88,
            text = "Accept The Missing Diplomat from Dashel Stonefist.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1447-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1447, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1447, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1246, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1245, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1244, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1243, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1242, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1241, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 1447, index = 1, text = "Dashel Stonefist" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1447-the-missing-diplomat" },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-objective-1447-1-dashel-stonefist",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1246 } } },
            route = {
                { label = "Dashel Stonefist", mapID = 1453, offMapText = "Travel to Dashel Stonefist.", x = 0.7053, y = 0.4488 },
            },
            text = "Kill Dashel Stonefist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "objective-1447-1-dashel-stonefist",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1447, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1447, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1246, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1245, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1244, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1243, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1242, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1241, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1447, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1447-the-missing-diplomat",
                "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-objective-1447-1-dashel-stonefist",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1447-the-missing-diplomat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1246 } } },
            route = {
                {
                    label = "Dashel Stonefist",
                    mapID = 1453,
                    offMapText = "Travel to Dashel Stonefist in Stormwind City.",
                    x = 0.7053,
                    y = 0.4488,
                },
            },
            sourceStep = 90,
            text = "Turn in The Missing Diplomat to Dashel Stonefist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1447-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1447, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1447, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1246, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1245, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1244, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1243, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1242, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1241, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1247, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1247-the-missing-diplomat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1447 } } },
            route = {
                {
                    label = "Dashel Stonefist",
                    mapID = 1453,
                    offMapText = "Travel to Dashel Stonefist in Stormwind City.",
                    x = 0.743,
                    y = 0.592,
                },
            },
            sourceStep = 90,
            text = "Accept The Missing Diplomat from Dashel Stonefist.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1247-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1247, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1247, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1447, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1246, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1245, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1244, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1243, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1242, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1241, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1247, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1247-the-missing-diplomat" },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1247-the-missing-diplomat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1447 } } },
            route = {
                {
                    label = "Elling Trias",
                    mapID = 1453,
                    offMapText = "Travel to Elling Trias in Stormwind City.",
                    x = 0.5991,
                    y = 0.6417,
                },
            },
            sourceStep = 91,
            text = "Turn in The Missing Diplomat to Elling Trias.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1247-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1247, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1247, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1447, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1246, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1245, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1244, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1243, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1242, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1241, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1248, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1248-the-missing-diplomat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1247 } } },
            route = {
                { label = "Elling Trias", mapID = 1453, offMapText = "Travel to Elling Trias in Stormwind City.", x = 0.66, y = 0.741 },
            },
            sourceStep = 91,
            text = "Accept The Missing Diplomat from Elling Trias.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1248-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1248, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1248, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1247, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1447, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1246, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1245, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1244, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1243, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1242, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1241, state = "completed" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1301, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1301-james-hyal-2",
                "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1301-james-hyal",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1301-james-hyal",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Vincent Hyal", mapID = 1437, offMapText = "Travel to Vincent Hyal in Wetlands.", x = 0.1083, y = 0.604 },
            },
            sourceStep = 94,
            text = "Turn in James Hyal to Vincent Hyal.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1301-james-hyal",
        },
        {
            complete = { quest = { id = 1302, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1302-james-hyal",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Vincent Hyal", mapID = 1437, offMapText = "Travel to Vincent Hyal in Wetlands.", x = 0.1083, y = 0.604 },
            },
            sourceStep = 94,
            text = "Accept James Hyal from Vincent Hyal.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1302-james-hyal",
        },
        {
            complete = { quest = { id = 1248, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1248-the-missing-diplomat" },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1248-the-missing-diplomat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1247 } } },
            route = { { label = "Mikhail", mapID = 1437, offMapText = "Travel to Mikhail in Wetlands.", x = 0.106, y = 0.6077 } },
            sourceStep = 96,
            text = "Turn in The Missing Diplomat to Mikhail.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1248-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1248, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1248, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1247, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1447, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1246, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1245, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1244, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1243, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1242, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1241, state = "completed" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1249, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1249-the-missing-diplomat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1248 } } },
            route = { { label = "Mikhail", mapID = 1437, offMapText = "Travel to Mikhail in Wetlands.", x = 0.106, y = 0.6077 } },
            sourceStep = 96,
            text = "Accept The Missing Diplomat from Mikhail.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1249-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1249, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1249, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1248, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1247, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1447, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1246, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1245, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1244, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1243, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1242, state = "completed" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                                                        { quest = { id = 1241, state = "completed" } },
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                    any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 1249, index = 1, text = "Tapoke \"Slim\" Jahn" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1249-the-missing-diplomat" },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-objective-1249-1-tapoke-slim-jahn",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1248 } } },
            route = {
                { label = "Tapoke \"Slim\" Jahn", mapID = 1437, offMapText = "Travel to Tapoke \"Slim\" Jahn.", x = 0.1079, y = 0.596 },
            },
            text = "Kill Tapoke \"Slim\" Jahn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "objective-1249-1-tapoke-slim-jahn",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1249, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1249, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1248, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1247, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1447, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1246, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1245, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1244, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1243, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1242, state = "completed" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                                                        { quest = { id = 1241, state = "completed" } },
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                    any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1249, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1249-the-missing-diplomat",
                "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-objective-1249-1-tapoke-slim-jahn",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1249-the-missing-diplomat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1248 } } },
            route = { { label = "Mikhail", mapID = 1437, offMapText = "Travel to Mikhail in Wetlands.", x = 0.106, y = 0.6077 } },
            sourceStep = 98,
            text = "Turn in The Missing Diplomat to Mikhail.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1249-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1249, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1249, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1248, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1247, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1447, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1246, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1245, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1244, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1243, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1242, state = "completed" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                                                        { quest = { id = 1241, state = "completed" } },
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                    any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1250, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1250-the-missing-diplomat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1249 } } },
            route = {
                {
                    label = "Tapoke \"Slim\" Jahn",
                    mapID = 1437,
                    offMapText = "Travel to Tapoke \"Slim\" Jahn in Wetlands.",
                    x = 0.1054,
                    y = 0.6026,
                },
            },
            sourceStep = 99,
            text = "Accept The Missing Diplomat from Tapoke \"Slim\" Jahn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-1250-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1250, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1250, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1249, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1248, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1247, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1447, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1246, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1245, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1244, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1243, state = "completed" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                                                        { quest = { id = 1242, state = "completed" } },
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                                                                { quest = { id = 1241, state = "completed" } },
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1250, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-1250-the-missing-diplomat" },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-1250-the-missing-diplomat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1249 } } },
            route = { { label = "Mikhail", mapID = 1437, offMapText = "Travel to Mikhail in Wetlands.", x = 0.106, y = 0.6077 } },
            sourceStep = 100,
            text = "Turn in The Missing Diplomat to Mikhail.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "turnin-1250-the-missing-diplomat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1250, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1250, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1249, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1248, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1247, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1447, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1246, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1245, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1244, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1243, state = "completed" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                                                        { quest = { id = 1242, state = "completed" } },
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                                                                { quest = { id = 1241, state = "completed" } },
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 1274, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1302, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-turnin-1302-james-hyal",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Clerk Lendry",
                    mapID = 1445,
                    offMapText = "Travel to Clerk Lendry in Dustwallow Marsh.",
                    x = 0.6788,
                    y = 0.4824,
                },
            },
            sourceStep = 6,
            text = "Turn in James Hyal to Clerk Lendry.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "turnin-1302-james-hyal",
        },
        {
            id = "alliance-extra-1132-level",
            kind = "note",
            checkpointQuest = 1132,
            text = "Reach level 20 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 20 } },
            requiredLevel = 20,
        },
        {
            id = "alliance-extra-1132-accept",
            kind = "accept",
            text = "Accept Fiora Longears from Red Jack Flint.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1437, x = 0.098, y = 0.578, label = "Red Jack Flint", offMapText = "Travel to Red Jack Flint in Wetlands." },
            },
            complete = { quest = { id = 1132, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-1132-level" },
        },
        {
            id = "alliance-extra-1132-objective",
            kind = "objective",
            text = "Speak with Fiora Longears on the docks at Theramore in Dustwallow Marsh. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {},
            complete = { quest = { id = 1132, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-1132-accept" },
            useClientPin = true,
        },
        {
            id = "alliance-extra-1132-turnin",
            kind = "turnin",
            text = "Turn in Fiora Longears to Fiora Longears.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1445,
                    x = 0.664,
                    y = 0.452,
                    label = "Fiora Longears",
                    offMapText = "Travel to Fiora Longears in Dustwallow Marsh.",
                },
            },
            complete = { quest = { id = 1132, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-1132-objective" },
        },
        {
            id = "alliance-extra-98072-level",
            kind = "note",
            checkpointQuest = 98072,
            text = "Reach level 27 before this visit.",
            conditions = { all = { { faction = "Alliance" }, { race = { 3, 4, 7, 95 } } } },
            complete = { level = { min = 27 } },
            requiredLevel = 27,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 98072, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 98072, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { race = { 3, 4, 7, 95 } },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 471, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 484, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 98072, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } }, { race = { 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-extra-98072-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 98072, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 98072, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 3, 4, 7, 95 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 471, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { any = { { any = { { quest = { id = 484, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 98072, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 98072, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 3, 4, 7, 95 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 471, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { any = { { any = { { quest = { id = 484, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-98072-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 471 } } },
            route = {
                { label = "James Halloran", mapID = 1437, offMapText = "Travel to James Halloran in Wetlands.", x = 0.086, y = 0.556 },
            },
            text = "Accept Crocs of the Sky from James Halloran.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 98072, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } }, { race = { 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-extra-98072-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 98072, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 98072, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 3, 4, 7, 95 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 471, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { any = { { any = { { quest = { id = 484, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 98072, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 98072, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 3, 4, 7, 95 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 471, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { any = { { any = { { quest = { id = 484, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-98072-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 471 } } },
            route = { { label = "Red Whelp", mapID = 1437, offMapText = "Travel to Red Whelp in Wetlands.", x = 0.615, y = 0.472 } },
            text = "Kill Red Whelps, Lost Whelps, Flamesnorting Whelps, or Crimson Whelps and loot 8 Pristine Crimson Scales.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 98072, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } }, { race = { 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-extra-98072-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 98072, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 98072, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 3, 4, 7, 95 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 471, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { any = { { any = { { quest = { id = 484, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 98072, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 98072, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 3, 4, 7, 95 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 471, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { any = { { any = { { quest = { id = 484, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-98072-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 471 } } },
            route = {
                { label = "James Halloran", mapID = 1437, offMapText = "Travel to James Halloran in Wetlands.", x = 0.086, y = 0.556 },
            },
            text = "Turn in Crocs of the Sky to James Halloran.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "alliance-extra-98221-level",
            kind = "note",
            checkpointQuest = 98221,
            text = "Reach level 28 before this visit.",
            conditions = { all = { { faction = "Alliance" }, { race = { 3, 4, 7, 95 } } } },
            complete = { level = { min = 28 } },
            requiredLevel = 28,
        },
        {
            id = "alliance-extra-98221-accept",
            kind = "accept",
            text = "Accept From the Ashes from Captain Stoutfist.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } }, { race = { 3, 4, 7, 95 } } } },
            route = {
                {
                    mapID = 1437,
                    x = 0.098,
                    y = 0.574,
                    label = "Captain Stoutfist",
                    offMapText = "Travel to Captain Stoutfist in Wetlands.",
                },
            },
            complete = { quest = { id = 98221, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-98221-level" },
        },
        {
            id = "alliance-extra-98221-objective",
            kind = "objective",
            text = "Captain Stoutfist in Menethil Keep wants you to destroy the 4 sets of Attack Plans in the Angerfang Encampment.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } }, { race = { 3, 4, 7, 95 } } } },
            route = {
                {
                    mapID = 1437,
                    x = 0.45399999999999996,
                    y = 0.42700000000000005,
                    label = "Attack Plan: Menethil Harbor",
                    offMapText = "Travel to Attack Plan: Menethil Harbor in Wetlands.",
                },
            },
            complete = { quest = { id = 98221, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-98221-accept" },
        },
        {
            id = "alliance-extra-98221-turnin",
            kind = "turnin",
            text = "Turn in From the Ashes to Captain Stoutfist.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } }, { race = { 3, 4, 7, 95 } } } },
            route = {
                {
                    mapID = 1437,
                    x = 0.098,
                    y = 0.574,
                    label = "Captain Stoutfist",
                    offMapText = "Travel to Captain Stoutfist in Wetlands.",
                },
            },
            complete = { quest = { id = 98221, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-98221-objective" },
        },
        {
            id = "alliance-extra-98282-level",
            kind = "note",
            checkpointQuest = 98282,
            text = "Reach level 22 before this visit.",
            conditions = { all = { { faction = "Alliance" }, { race = { 3, 4, 7, 95 } } } },
            complete = { level = { min = 22 } },
            requiredLevel = 22,
        },
        {
            id = "alliance-extra-98282-accept",
            kind = "accept",
            text = "Accept Alchemical Hazards from Caitlin Grassman.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 3, 4, 7, 95 } } } },
            route = {
                {
                    mapID = 1437,
                    x = 0.11800000000000001,
                    y = 0.586,
                    label = "Caitlin Grassman",
                    offMapText = "Travel to Caitlin Grassman in Wetlands.",
                },
            },
            complete = { quest = { id = 98282, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-98282-level" },
        },
        {
            id = "alliance-extra-98282-objective",
            kind = "objective",
            text = "Collect an Unruptured Stalker Gland from Thelgen Rock for Caitlin Grassman in Menethil Harbor.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 3, 4, 7, 95 } } } },
            route = {
                { mapID = 1437, x = 0.462, y = 0.622, label = "Leech Stalker", offMapText = "Travel to Leech Stalker in Wetlands." },
            },
            complete = { quest = { id = 98282, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-98282-accept" },
        },
        {
            id = "alliance-extra-98282-turnin",
            kind = "turnin",
            text = "Turn in Alchemical Hazards to Caitlin Grassman.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 3, 4, 7, 95 } } } },
            route = {
                {
                    mapID = 1437,
                    x = 0.11800000000000001,
                    y = 0.586,
                    label = "Caitlin Grassman",
                    offMapText = "Travel to Caitlin Grassman in Wetlands.",
                },
            },
            complete = { quest = { id = 98282, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-98282-objective" },
        },
        {
            id = "alliance-extra-98291-level",
            kind = "note",
            checkpointQuest = 98291,
            text = "Reach level 30 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 30 } },
            requiredLevel = 30,
        },
        {
            id = "alliance-extra-98291-accept",
            kind = "accept",
            text = "Accept Death to the Dragonmaw from Howin Kindfeather.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } } } },
            route = {
                {
                    mapID = 1437,
                    x = 0.494,
                    y = 0.42,
                    label = "Howin Kindfeather",
                    offMapText = "Travel to Howin Kindfeather in Wetlands.",
                },
            },
            complete = { quest = { id = 98291, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-98291-level" },
        },
        {
            id = "alliance-extra-98291-objective",
            kind = "objective",
            text = "Kill 8 Dragonmaw Reclaimers, 5 Dragonmaw Soulbinders, and 3 Dragonmaw Infiltrators in Dragonmaw Retreat for Howin Kindfeather. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } } } },
            route = {
                {
                    mapID = 1437,
                    x = 0.674,
                    y = 0.46299999999999997,
                    label = "Dragonmaw Infiltrator",
                    offMapText = "Travel to Dragonmaw Infiltrator in Wetlands.",
                },
            },
            complete = { quest = { id = 98291, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-98291-accept" },
        },
        {
            id = "alliance-extra-98291-turnin",
            kind = "turnin",
            text = "Turn in Death to the Dragonmaw to Howin Kindfeather.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 22 } } } },
            route = {
                {
                    mapID = 1437,
                    x = 0.494,
                    y = 0.42,
                    label = "Howin Kindfeather",
                    offMapText = "Travel to Howin Kindfeather in Wetlands.",
                },
            },
            complete = { quest = { id = 98291, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-98291-objective" },
        },
        {
            id = "alliance-extra-98297-level",
            kind = "note",
            checkpointQuest = 98297,
            text = "Reach level 34 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 34 } },
            requiredLevel = 34,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 98297, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 98297, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 98291, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 98297, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 24 } } } },
            dependsOn = { "alliance-extra-98297-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 98297, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 98297, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = { { any = { { quest = { id = 98291, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
                                { quest = { id = 98297, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 98297, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = { { any = { { quest = { id = 98291, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-98297-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 98291 } } },
            route = {
                {
                    label = "Howin Kindfeather",
                    mapID = 1437,
                    offMapText = "Travel to Howin Kindfeather in Wetlands.",
                    x = 0.494,
                    y = 0.42,
                },
            },
            text = "Accept Stopping the Cycle from Howin Kindfeather.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 98297, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 24 } } } },
            dependsOn = { "alliance-extra-98297-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 98297, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 98297, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = { { any = { { quest = { id = 98291, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
                                { quest = { id = 98297, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 98297, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = { { any = { { quest = { id = 98291, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-98297-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 98291 } } },
            route = {
                {
                    label = "Subdued Dragonspawn",
                    mapID = 1437,
                    offMapText = "Travel to Subdued Dragonspawn in Wetlands.",
                    x = 0.772,
                    y = 0.466,
                },
            },
            text = "Kill the Subdued Dragonspawn at the Dragonmaw Gates for Howin Kindfeather. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 98297, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 24 } } } },
            dependsOn = { "alliance-extra-98297-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 98297, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 98297, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = { { any = { { quest = { id = 98291, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
                                { quest = { id = 98297, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 98297, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = { { any = { { quest = { id = 98291, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-98297-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 98291 } } },
            route = {
                {
                    label = "Howin Kindfeather",
                    mapID = 1437,
                    offMapText = "Travel to Howin Kindfeather in Wetlands.",
                    x = 0.494,
                    y = 0.42,
                },
            },
            text = "Turn in Stopping the Cycle to Howin Kindfeather.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
    },
})
