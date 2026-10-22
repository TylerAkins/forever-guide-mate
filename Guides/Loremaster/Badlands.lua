local _, ns = ...

-- Source decisions: docs/loremaster/badlands.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-badlands",
    title = "Badlands",
    category = "Loremaster Guides",
    revision = 2,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
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
            complete = { quest = { id = 738, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-738-find-agmond",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Prospector Ironband",
                    mapID = 1432,
                    offMapText = "Travel to Prospector Ironband in Loch Modan.",
                    x = 0.6593,
                    y = 0.6562,
                },
            },
            sourceStep = 11,
            text = "Accept Find Agmond from Prospector Ironband.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-738-find-agmond",
        },
        {
            complete = { quest = { id = 719, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-719-a-dwarf-and-his-tools",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Prospector Ryedol",
                    mapID = 1418,
                    offMapText = "Travel to Prospector Ryedol in Badlands.",
                    x = 0.5342,
                    y = 0.434,
                },
            },
            sourceStep = 12,
            text = "Accept A Dwarf and His Tools from Prospector Ryedol.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-719-a-dwarf-and-his-tools",
        },
        {
            complete = { quest = { id = 718, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-718-mirages",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Sigrun Ironhew", mapID = 1418, offMapText = "Travel to Sigrun Ironhew in Badlands.", x = 0.538, y = 0.4331 },
            },
            sourceStep = 13,
            text = "Accept Mirages from Sigrun Ironhew.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-718-mirages",
        },
        {
            complete = { quest = { id = 720, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-720-a-sign-of-hope",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "A Sign of Hope", mapID = 1418, offMapText = "Travel to A Sign of Hope.", x = 0.5303, y = 0.3393 } },
            sourceStep = 14,
            text = "Accept A Sign of Hope.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-720-a-sign-of-hope",
        },
        {
            complete = { questObjective = { count = 1, id = 719, index = 1, text = "Ryedol's Lucky Pick" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-719-a-dwarf-and-his-tools" },
            id = "alliance-leveling-era-alliance-badlands-objective-719-1-ryedol-s-lucky-pick",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Ryedol's Lucky Pick", mapID = 1418, offMapText = "Travel to Ryedol's Lucky Pick.", x = 0.514, y = 0.326 },
            },
            sourceStep = 15,
            text = "Collect 1 Ryedol's Lucky Pick.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-719-1-ryedol-s-lucky-pick",
        },
        {
            complete = { questObjective = { count = 1, id = 718, index = 1, text = "Supply Crate" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-718-mirages" },
            id = "alliance-leveling-era-alliance-badlands-objective-718-1-supply-crate",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Supply Crate", mapID = 1418, offMapText = "Travel to Supply Crate.", x = 0.6661, y = 0.2202 } },
            sourceStep = 16,
            text = "Collect 1 Supply Crate.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-718-1-supply-crate",
        },
        {
            complete = { quest = { id = 719, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-719-a-dwarf-and-his-tools",
                "alliance-leveling-era-alliance-badlands-objective-719-1-ryedol-s-lucky-pick",
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-719-a-dwarf-and-his-tools",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Prospector Ryedol",
                    mapID = 1418,
                    offMapText = "Travel to Prospector Ryedol in Badlands.",
                    x = 0.5342,
                    y = 0.434,
                },
            },
            sourceActionID = "turnin-719-a-dwarf-and-his-tools",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 17,
            text = "Turn in A Dwarf and His Tools to Prospector Ryedol.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 720, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-720-a-sign-of-hope" },
            id = "alliance-leveling-era-alliance-badlands-turnin-720-a-sign-of-hope",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Prospector Ryedol",
                    mapID = 1418,
                    offMapText = "Travel to Prospector Ryedol in Badlands.",
                    x = 0.5342,
                    y = 0.434,
                },
            },
            sourceActionID = "turnin-720-a-sign-of-hope",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 17,
            text = "Turn in A Sign of Hope to Prospector Ryedol.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 718, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-718-mirages",
                "alliance-leveling-era-alliance-badlands-objective-718-1-supply-crate",
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-718-mirages",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Sigrun Ironhew", mapID = 1418, offMapText = "Travel to Sigrun Ironhew in Badlands.", x = 0.538, y = 0.4331 },
            },
            sourceActionID = "turnin-718-mirages",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 18,
            text = "Turn in Mirages to Sigrun Ironhew.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 733, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-733-scrounging",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 718 } } },
            route = {
                { label = "Sigrun Ironhew", mapID = 1418, offMapText = "Travel to Sigrun Ironhew in Badlands.", x = 0.538, y = 0.4331 },
            },
            sourceStep = 18,
            text = "Accept Scrounging from Sigrun Ironhew.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-733-scrounging",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 733, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 733, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 718, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 703,
            complete = { level = { min = 33 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-badlands-level-before-accept-703-barbecued-buzzard-wings",
            kind = "note",
            requiredLevel = 33,
            requiredQuests = {},
            text = "Reach level 33 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "level-before-accept-703-barbecued-buzzard-wings",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 703, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 33 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-703-barbecued-buzzard-wings",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Rigglefuzz", mapID = 1418, offMapText = "Travel to Rigglefuzz in Badlands.", x = 0.4239, y = 0.5293 },
            },
            sourceStep = 19,
            text = "Accept Barbecued Buzzard Wings from Rigglefuzz.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-703-barbecued-buzzard-wings",
        },
        {
            complete = { quest = { id = 738, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-738-find-agmond" },
            id = "alliance-leveling-era-alliance-badlands-turnin-738-find-agmond",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Find Agmond", mapID = 1418, offMapText = "Travel to Find Agmond.", x = 0.5089, y = 0.6241 } },
            sourceActionID = "turnin-738-find-agmond",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 22,
            text = "Turn in Find Agmond.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 739, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-739-murdaloc",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 738 } } },
            route = { { label = "Murdaloc", mapID = 1418, offMapText = "Travel to Murdaloc.", x = 0.5089, y = 0.6241 } },
            sourceStep = 22,
            text = "Accept Murdaloc.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-739-murdaloc",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 739, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 739, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 738, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 739, index = 1, text = "Murdaloc" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-739-murdaloc" },
            id = "alliance-leveling-era-alliance-badlands-objective-739-1-murdaloc",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 738 } } },
            route = { { label = "Murdaloc", mapID = 1418, offMapText = "Travel to Murdaloc.", x = 0.4963, y = 0.663 } },
            sourceStep = 23,
            text = "Kill Murdaloc.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-739-1-murdaloc",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 739, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 739, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 738, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 12, id = 739, index = 2, text = "Stonevault Bonesnapper" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-739-murdaloc" },
            id = "alliance-leveling-era-alliance-badlands-objective-739-2-stonevault-bonesnapper",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 738 } } },
            route = {
                {
                    label = "Stonevault Bonesnapper",
                    mapID = 1418,
                    offMapText = "Travel to Stonevault Bonesnapper.",
                    x = 0.504,
                    y = 0.686,
                },
            },
            sourceStep = 25,
            text = "Kill 12 Stonevault Bonesnapper.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-739-2-stonevault-bonesnapper",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 739, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 739, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 738, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 703, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 33 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-703-barbecued-buzzard-wings" },
            id = "alliance-leveling-era-alliance-badlands-objective-703-quest-work",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Buzzard Wing", mapID = 1418, offMapText = "Travel to Buzzard Wing.", x = 0.172, y = 0.61 } },
            sourceStep = 26,
            text = "For Barbecued Buzzard Wings: Bring 4 Buzzard Wings to Rigglefuzz.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-703-quest-work",
        },
        {
            complete = { quest = { id = 703, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 33 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-703-barbecued-buzzard-wings",
                "alliance-leveling-era-alliance-badlands-objective-703-quest-work",
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-703-barbecued-buzzard-wings",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Rigglefuzz", mapID = 1418, offMapText = "Travel to Rigglefuzz in Badlands.", x = 0.4239, y = 0.5293 },
            },
            sourceActionID = "turnin-703-barbecued-buzzard-wings",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 26,
            text = "Turn in Barbecued Buzzard Wings to Rigglefuzz.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 710,
            complete = { level = { min = 35 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-badlands-level-before-accept-710-study-of-the-elements-rock",
            kind = "note",
            requiredLevel = 35,
            requiredQuests = {},
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "level-before-accept-710-study-of-the-elements-rock",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 710, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-710-study-of-the-elements-rock",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceStep = 29,
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-710-study-of-the-elements-rock",
        },
        {
            complete = { quest = { id = 713, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-713-coolant-heads-prevail",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceStep = 29,
            text = "Accept Coolant Heads Prevail from Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-713-coolant-heads-prevail",
        },
        {
            complete = { quest = { id = 713, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-713-coolant-heads-prevail" },
            id = "alliance-leveling-era-alliance-badlands-objective-713-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 30,
            text = "For Coolant Heads Prevail: Find Frost Oil and bring it to Lotwil Veriatus in Badlands.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-713-quest-work",
        },
        {
            complete = { quest = { id = 713, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-713-coolant-heads-prevail",
                "alliance-leveling-era-alliance-badlands-objective-713-quest-work",
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-713-coolant-heads-prevail",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceActionID = "turnin-713-coolant-heads-prevail",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 30,
            text = "Turn in Coolant Heads Prevail to Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 714, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-714-gyro-what",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 713 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceStep = 30,
            text = "Accept Gyro... What? from Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-714-gyro-what",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 714, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 714, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 714, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-714-gyro-what" },
            id = "alliance-leveling-era-alliance-badlands-objective-714-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 713 } } },
            sourceStep = 31,
            text = "For Gyro... What?: Bring a Gyrochronatom to Lotwil Veriatus in the Badlands.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-714-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 714, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 714, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 714, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-714-gyro-what",
                "alliance-leveling-era-alliance-badlands-objective-714-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 714, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 714, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-714-gyro-what",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 713 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceActionID = "turnin-714-gyro-what",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 31,
            text = "Turn in Gyro... What? to Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 715, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-715-liquid-stone",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 714 } } },
            route = {
                {
                    label = "Lucien Tosselwrench",
                    mapID = 1418,
                    offMapText = "Travel to Lucien Tosselwrench in Badlands.",
                    x = 0.2582,
                    y = 0.4423,
                },
            },
            sourceStep = 32,
            text = "Accept Liquid Stone from Lucien Tosselwrench.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-715-liquid-stone",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 715, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 715, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 714, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 715, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-715-liquid-stone" },
            id = "alliance-leveling-era-alliance-badlands-objective-715-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 714 } } },
            sourceStep = 33,
            text = "For Liquid Stone: Bring a Healing Potion and a Lesser Invisibility Potion to Lucien Tosselwrench in the Badlands.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-715-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 715, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 715, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 714, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 715, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-715-liquid-stone",
                "alliance-leveling-era-alliance-badlands-objective-715-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 715, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 715, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 714, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-715-liquid-stone",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 714 } } },
            route = {
                {
                    label = "Lucien Tosselwrench",
                    mapID = 1418,
                    offMapText = "Travel to Lucien Tosselwrench in Badlands.",
                    x = 0.2582,
                    y = 0.4423,
                },
            },
            sourceActionID = "turnin-715-liquid-stone",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 33,
            text = "Turn in Liquid Stone to Lucien Tosselwrench.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 10, id = 710, index = 1, text = "Lesser Rock Elemental" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-710-study-of-the-elements-rock" },
            id = "alliance-leveling-era-alliance-badlands-objective-710-1-lesser-rock-elemental",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Lesser Rock Elemental", mapID = 1418, offMapText = "Travel to Lesser Rock Elemental.", x = 0.214, y = 0.434 },
            },
            sourceStep = 34,
            text = "Collect 10 Small Stone Shard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-710-1-lesser-rock-elemental",
        },
        {
            complete = { quest = { id = 710, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-710-study-of-the-elements-rock",
                "alliance-leveling-era-alliance-badlands-objective-710-1-lesser-rock-elemental",
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-710-study-of-the-elements-rock",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceActionID = "turnin-710-study-of-the-elements-rock",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 35,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 711, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-711-study-of-the-elements-rock",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 710 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceStep = 35,
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-711-study-of-the-elements-rock",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 711, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 711, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 711, index = 1, text = "Rock Elemental" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-711-study-of-the-elements-rock" },
            id = "alliance-leveling-era-alliance-badlands-objective-711-1-rock-elemental",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 710 } } },
            route = { { label = "Rock Elemental", mapID = 1418, offMapText = "Travel to Rock Elemental.", x = 0.134, y = 0.378 } },
            sourceStep = 36,
            text = "Collect 3 Large Stone Slab.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-711-1-rock-elemental",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 711, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 711, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 711, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-711-study-of-the-elements-rock",
                "alliance-leveling-era-alliance-badlands-objective-711-1-rock-elemental",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 711, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 711, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-711-study-of-the-elements-rock",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 710 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceActionID = "turnin-711-study-of-the-elements-rock",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 37,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 712, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-712-study-of-the-elements-rock",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 711 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceStep = 37,
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-712-study-of-the-elements-rock",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 712, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 712, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 711, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 712, index = 1, text = "Greater Rock Elemental" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-712-study-of-the-elements-rock" },
            id = "alliance-leveling-era-alliance-badlands-objective-712-1-greater-rock-elemental",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 711 } } },
            route = {
                {
                    label = "Greater Rock Elemental",
                    mapID = 1418,
                    offMapText = "Travel to Greater Rock Elemental.",
                    x = 0.044,
                    y = 0.774,
                },
            },
            sourceStep = 38,
            text = "Collect 5 Bracers of Rock Binding.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-712-1-greater-rock-elemental",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 712, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 712, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 711, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 7, id = 733, index = 1, text = "Scrap Metal" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-733-scrounging" },
            id = "alliance-leveling-era-alliance-badlands-objective-733-1-scrap-metal",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 718 } } },
            route = { { label = "Scrap Metal", mapID = 1418, offMapText = "Travel to Scrap Metal.", x = 0.124, y = 0.744 } },
            sourceStep = 40,
            text = "Collect 7 Scrap Metal.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-733-1-scrap-metal",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 733, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 733, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 718, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 733, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-733-scrounging",
                "alliance-leveling-era-alliance-badlands-objective-733-1-scrap-metal",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 733, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 733, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 718, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-733-scrounging",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 718 } } },
            route = {
                { label = "Sigrun Ironhew", mapID = 1418, offMapText = "Travel to Sigrun Ironhew in Badlands.", x = 0.538, y = 0.4331 },
            },
            sourceActionID = "turnin-733-scrounging",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 45,
            text = "Turn in Scrounging to Sigrun Ironhew.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 712, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-712-study-of-the-elements-rock",
                "alliance-leveling-era-alliance-badlands-objective-712-1-greater-rock-elemental",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 712, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 712, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 711, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-712-study-of-the-elements-rock",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 711 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceActionID = "turnin-712-study-of-the-elements-rock",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 46,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 734, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-734-this-is-going-to-be-hard",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 712, 714 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceStep = 46,
            text = "Accept This Is Going to Be Hard from Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-734-this-is-going-to-be-hard",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 734, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 734, state = "completed" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 712, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 711, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                {
                                                    any = {
                                                        { quest = { id = 714, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 734, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-734-this-is-going-to-be-hard" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 734, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 734, state = "completed" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 712, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 711, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                {
                                                    any = {
                                                        { quest = { id = 714, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-734-this-is-going-to-be-hard",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 712, 714 } } },
            route = {
                {
                    label = "Lucien Tosselwrench",
                    mapID = 1418,
                    offMapText = "Travel to Lucien Tosselwrench in Badlands.",
                    x = 0.2582,
                    y = 0.4424,
                },
            },
            sourceActionID = "turnin-734-this-is-going-to-be-hard",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 47,
            text = "Turn in This Is Going to Be Hard to Lucien Tosselwrench.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 777, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-777-this-is-going-to-be-hard",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 734 } } },
            route = {
                {
                    label = "Lucien Tosselwrench",
                    mapID = 1418,
                    offMapText = "Travel to Lucien Tosselwrench in Badlands.",
                    x = 0.2582,
                    y = 0.4424,
                },
            },
            sourceStep = 47,
            text = "Accept This Is Going to Be Hard from Lucien Tosselwrench.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-777-this-is-going-to-be-hard",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 777, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 777, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 734, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 712, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 711, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 714, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 716, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-716-stone-is-better-than-cloth",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 712 } } },
            route = {
                {
                    label = "Lucien Tosselwrench",
                    mapID = 1418,
                    offMapText = "Travel to Lucien Tosselwrench in Badlands.",
                    x = 0.2582,
                    y = 0.4424,
                },
            },
            sourceStep = 47,
            text = "Accept Stone Is Better than Cloth from Lucien Tosselwrench.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-716-stone-is-better-than-cloth",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 716, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 716, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 712, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 711, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 716, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-716-stone-is-better-than-cloth" },
            id = "alliance-leveling-era-alliance-badlands-objective-716-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 712 } } },
            sourceStep = 48,
            text = "For Stone Is Better than Cloth: Bring some Patterned Bronze Bracers to Lucien Tosselwrench in the Badlands.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-716-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 716, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 716, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 712, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 711, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 716, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-716-stone-is-better-than-cloth",
                "alliance-leveling-era-alliance-badlands-objective-716-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 716, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 716, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 712, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 711, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-716-stone-is-better-than-cloth",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 712 } } },
            route = {
                {
                    label = "Lucien Tosselwrench",
                    mapID = 1418,
                    offMapText = "Travel to Lucien Tosselwrench in Badlands.",
                    x = 0.2582,
                    y = 0.4424,
                },
            },
            sourceActionID = "turnin-716-stone-is-better-than-cloth",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 48,
            text = "Turn in Stone Is Better than Cloth to Lucien Tosselwrench.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 777, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-777-this-is-going-to-be-hard" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 777, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 777, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 734, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 712, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 711, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 714, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-777-this-is-going-to-be-hard",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 734 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4486,
                },
            },
            sourceActionID = "turnin-777-this-is-going-to-be-hard",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 49,
            text = "Turn in This Is Going to Be Hard to Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 778, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-778-this-is-going-to-be-hard",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 777 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4486,
                },
            },
            sourceStep = 49,
            text = "Accept This Is Going to Be Hard from Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-778-this-is-going-to-be-hard",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 778, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 778, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 777, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 734, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            all = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 712, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 711, state = "completed" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 714, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 778, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-778-this-is-going-to-be-hard" },
            id = "alliance-leveling-era-alliance-badlands-objective-778-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 777 } } },
            sourceStep = 51,
            text = "For This Is Going to Be Hard: Defeat the Fam'retor Guardian and bring Lotwil's Shackles of Elemental Binding back to Lotwil Veriatus.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-778-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 778, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 778, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 777, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 734, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            all = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 712, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 711, state = "completed" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 714, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 778, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-778-this-is-going-to-be-hard",
                "alliance-leveling-era-alliance-badlands-objective-778-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 778, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 778, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 777, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 734, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            all = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 712, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 711, state = "completed" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 714, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-778-this-is-going-to-be-hard",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 777 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceActionID = "turnin-778-this-is-going-to-be-hard",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 51,
            text = "Turn in This Is Going to Be Hard to Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 739, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-739-murdaloc",
                "alliance-leveling-era-alliance-badlands-objective-739-1-murdaloc",
                "alliance-leveling-era-alliance-badlands-objective-739-2-stonevault-bonesnapper",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 739, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 739, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 738, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-739-murdaloc",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 738 } } },
            route = {
                {
                    label = "Prospector Ironband",
                    mapID = 1432,
                    offMapText = "Travel to Prospector Ironband in Loch Modan.",
                    x = 0.6593,
                    y = 0.6562,
                },
            },
            sourceActionID = "turnin-739-murdaloc",
            sourceGuide = "leveling-era-alliance-badlands",
            sourceStep = 60,
            text = "Turn in Murdaloc to Prospector Ironband.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 706,
            complete = { level = { min = 40 } },
            conditions = { all = { { faction = "Alliance" } } },
            id = "alliance-extra-706-level",
            kind = "note",
            requiredLevel = 40,
            text = "Reach level 40 before this visit.",
        },
        {
            id = "alliance-extra-706-accept",
            kind = "accept",
            text = "Accept Fiery Blaze Enchantments from Sigrun Ironhew.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            route = {
                {
                    mapID = 1418,
                    x = 0.5379999999999999,
                    y = 0.434,
                    label = "Sigrun Ironhew",
                    offMapText = "Travel to Sigrun Ironhew in Badlands.",
                },
            },
            complete = { quest = { id = 706, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-706-level" },
        },
        {
            id = "alliance-extra-706-objective",
            kind = "objective",
            text = "Defeat Scalding Whelps and loot a Black Drake's Heart. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            route = {
                {
                    mapID = 1418,
                    x = 0.8140000000000001,
                    y = 0.302,
                    label = "Scalding Whelp",
                    offMapText = "Travel to Scalding Whelp in Badlands.",
                },
            },
            complete = { quest = { id = 706, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-706-accept" },
        },
        {
            complete = { quest = { id = 706, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-extra-706-objective" },
            id = "alliance-extra-706-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Sigrun Ironhew", mapID = 1418, offMapText = "Travel to Sigrun Ironhew in Badlands.", x = 0.538, y = 0.434 },
            },
            text = "Turn in Fiery Blaze Enchantments to Sigrun Ironhew.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 732,
            complete = { level = { min = 40 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 732, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 732, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 718, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-732-level",
            kind = "note",
            requiredLevel = 40,
            text = "Reach level 40 before this visit.",
        },
        {
            complete = { quest = { id = 732, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-extra-732-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 732, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 732, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { any = { { any = { { quest = { id = 718, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                { quest = { id = 732, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 732, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 718, state = "activeOrCompleted" } },
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
            id = "alliance-extra-732-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 718 } } },
            route = { { label = "Garek", mapID = 1418, offMapText = "Travel to Garek in Badlands.", x = 0.618, y = 0.542 } },
            text = "Accept Tremors of the Earth from Garek.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 732, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-extra-732-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 732, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 732, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { any = { { any = { { quest = { id = 718, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                { quest = { id = 732, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 732, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 718, state = "activeOrCompleted" } },
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
            id = "alliance-extra-732-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 718 } } },
            route = {
                { label = "Boss Tho'grun", mapID = 1418, offMapText = "Travel to Boss Tho'grun in Badlands.", x = 0.616, y = 0.678 },
            },
            text = "Defeat Boss Tho'grun and loot the Sign of the Earth.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 732, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-extra-732-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 732, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 732, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { any = { { any = { { quest = { id = 718, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                { quest = { id = 732, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 732, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 718, state = "activeOrCompleted" } },
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
            id = "alliance-extra-732-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 718 } } },
            route = { { label = "Garek", mapID = 1418, offMapText = "Travel to Garek in Badlands.", x = 0.618, y = 0.542 } },
            text = "Turn in Tremors of the Earth to Garek.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
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
            checkpointQuest = 703,
            complete = { level = { min = 33 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-badlands-level-before-accept-703-barbecued-buzzard-wings",
            kind = "note",
            requiredLevel = 33,
            requiredQuests = {},
            text = "Reach level 33 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "level-before-accept-703-barbecued-buzzard-wings",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 703, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 33 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-badlands-accept-703-barbecued-buzzard-wings",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Rigglefuzz", mapID = 1418, offMapText = "Travel to Rigglefuzz in Badlands.", x = 0.4239, y = 0.5293 },
            },
            sourceStep = 1,
            text = "Accept Barbecued Buzzard Wings from Rigglefuzz.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "accept-703-barbecued-buzzard-wings",
        },
        {
            checkpointQuest = 710,
            complete = { level = { min = 35 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-badlands-level-before-accept-710-study-of-the-elements-rock",
            kind = "note",
            requiredLevel = 35,
            requiredQuests = {},
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "level-before-accept-710-study-of-the-elements-rock",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 710, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-badlands-accept-710-study-of-the-elements-rock",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceStep = 4,
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "accept-710-study-of-the-elements-rock",
        },
        {
            complete = { quest = { id = 713, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-badlands-accept-713-coolant-heads-prevail",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceStep = 4,
            text = "Accept Coolant Heads Prevail from Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "accept-713-coolant-heads-prevail",
        },
        {
            complete = { quest = { id = 713, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-badlands-accept-713-coolant-heads-prevail" },
            id = "horde-leveling-era-horde-badlands-objective-713-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 5,
            text = "For Coolant Heads Prevail: Find Frost Oil and bring it to Lotwil Veriatus in Badlands.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "objective-713-quest-work",
        },
        {
            complete = { quest = { id = 713, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {
                "horde-leveling-era-horde-badlands-accept-713-coolant-heads-prevail",
                "horde-leveling-era-horde-badlands-objective-713-quest-work",
            },
            id = "horde-leveling-era-horde-badlands-turnin-713-coolant-heads-prevail",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceActionID = "turnin-713-coolant-heads-prevail",
            sourceGuide = "leveling-era-horde-badlands",
            sourceStep = 5,
            text = "Turn in Coolant Heads Prevail to Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 714, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-badlands-accept-714-gyro-what",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 713 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceStep = 5,
            text = "Accept Gyro... What? from Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "accept-714-gyro-what",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 714, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 714, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 714, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-badlands-accept-714-gyro-what" },
            id = "horde-leveling-era-horde-badlands-objective-714-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 713 } } },
            sourceStep = 6,
            text = "For Gyro... What?: Bring a Gyrochronatom to Lotwil Veriatus in the Badlands.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "objective-714-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 714, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 714, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 714, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {
                "horde-leveling-era-horde-badlands-accept-714-gyro-what",
                "horde-leveling-era-horde-badlands-objective-714-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 714, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 714, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-badlands-turnin-714-gyro-what",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 713 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceActionID = "turnin-714-gyro-what",
            sourceGuide = "leveling-era-horde-badlands",
            sourceStep = 6,
            text = "Turn in Gyro... What? to Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 715, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-badlands-accept-715-liquid-stone",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 714 } } },
            route = {
                {
                    label = "Lucien Tosselwrench",
                    mapID = 1418,
                    offMapText = "Travel to Lucien Tosselwrench in Badlands.",
                    x = 0.2582,
                    y = 0.4423,
                },
            },
            sourceStep = 7,
            text = "Accept Liquid Stone from Lucien Tosselwrench.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "accept-715-liquid-stone",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 715, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 715, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 714, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 715, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-badlands-accept-715-liquid-stone" },
            id = "horde-leveling-era-horde-badlands-objective-715-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 714 } } },
            sourceStep = 8,
            text = "For Liquid Stone: Bring a Healing Potion and a Lesser Invisibility Potion to Lucien Tosselwrench in the Badlands.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "objective-715-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 715, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 715, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 714, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 715, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {
                "horde-leveling-era-horde-badlands-accept-715-liquid-stone",
                "horde-leveling-era-horde-badlands-objective-715-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 715, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 715, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 714, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-badlands-turnin-715-liquid-stone",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 714 } } },
            route = {
                {
                    label = "Lucien Tosselwrench",
                    mapID = 1418,
                    offMapText = "Travel to Lucien Tosselwrench in Badlands.",
                    x = 0.2582,
                    y = 0.4423,
                },
            },
            sourceActionID = "turnin-715-liquid-stone",
            sourceGuide = "leveling-era-horde-badlands",
            sourceStep = 8,
            text = "Turn in Liquid Stone to Lucien Tosselwrench.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 1419,
            complete = { level = { min = 30 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-badlands-level-before-accept-1419-coyote-thieves",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "level-before-accept-1419-coyote-thieves",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1419, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-badlands-accept-1419-coyote-thieves",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Neeka Bloodscar",
                    mapID = 1418,
                    offMapText = "Travel to Neeka Bloodscar in Badlands.",
                    x = 0.0648,
                    y = 0.4718,
                },
            },
            sourceStep = 9,
            text = "Accept Coyote Thieves from Neeka Bloodscar.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "accept-1419-coyote-thieves",
        },
        {
            checkpointQuest = 2258,
            complete = { level = { min = 36 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-badlands-level-before-accept-2258-badlands-reagent-run",
            kind = "note",
            requiredLevel = 36,
            requiredQuests = {},
            text = "Reach level 36 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "level-before-accept-2258-badlands-reagent-run",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2258, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 36 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-badlands-accept-2258-badlands-reagent-run",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Jarkal Mossmeld",
                    mapID = 1418,
                    offMapText = "Travel to Jarkal Mossmeld in Badlands.",
                    x = 0.0242,
                    y = 0.4606,
                },
            },
            sourceStep = 11,
            text = "Accept Badlands Reagent Run from Jarkal Mossmeld.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "accept-2258-badlands-reagent-run",
        },
        {
            complete = { questObjective = { count = 4, id = 703, index = 1, text = "Buzzard Wing" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 33 } } } },
            dependsOn = { "horde-leveling-era-horde-badlands-accept-703-barbecued-buzzard-wings" },
            id = "horde-leveling-era-horde-badlands-objective-703-1-buzzard-wing",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Buzzard Wing", mapID = 1418, offMapText = "Travel to Buzzard Wing.", x = 0.172, y = 0.61 } },
            sourceStep = 12,
            text = "Collect 4 Buzzard Wing.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "objective-703-1-buzzard-wing",
        },
        {
            complete = { questObjective = { count = 10, id = 710, index = 1, text = "Small Stone Shard" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-badlands-accept-710-study-of-the-elements-rock" },
            id = "horde-leveling-era-horde-badlands-objective-710-1-small-stone-shard",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Small Stone Shard", mapID = 1418, offMapText = "Travel to Small Stone Shard.", x = 0.214, y = 0.434 },
            },
            sourceStep = 13,
            text = "Collect 10 Small Stone Shard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "objective-710-1-small-stone-shard",
        },
        {
            complete = { quest = { id = 710, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {
                "horde-leveling-era-horde-badlands-accept-710-study-of-the-elements-rock",
                "horde-leveling-era-horde-badlands-objective-710-1-small-stone-shard",
            },
            id = "horde-leveling-era-horde-badlands-turnin-710-study-of-the-elements-rock",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceActionID = "turnin-710-study-of-the-elements-rock",
            sourceGuide = "leveling-era-horde-badlands",
            sourceStep = 14,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 711, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-badlands-accept-711-study-of-the-elements-rock",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 710 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceStep = 14,
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "accept-711-study-of-the-elements-rock",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 711, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 711, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 711, index = 1, text = "Rock Elemental" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-badlands-accept-711-study-of-the-elements-rock" },
            id = "horde-leveling-era-horde-badlands-objective-711-1-rock-elemental",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 710 } } },
            route = { { label = "Rock Elemental", mapID = 1418, offMapText = "Travel to Rock Elemental.", x = 0.134, y = 0.378 } },
            sourceStep = 15,
            text = "Collect 3 Large Stone Slab.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "objective-711-1-rock-elemental",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 711, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 711, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 2258, index = 3, text = "Rock Elemental Shard" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 36 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-badlands-accept-2258-badlands-reagent-run" },
            id = "horde-leveling-era-horde-badlands-objective-2258-3-rock-elemental-shard",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Rock Elemental Shard", mapID = 1418, offMapText = "Travel to Rock Elemental Shard.", x = 0.214, y = 0.434 },
            },
            sourceStep = 16,
            text = "Collect 5 Rock Elemental Shard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "objective-2258-3-rock-elemental-shard",
        },
        {
            complete = { quest = { id = 711, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {
                "horde-leveling-era-horde-badlands-accept-711-study-of-the-elements-rock",
                "horde-leveling-era-horde-badlands-objective-711-1-rock-elemental",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 711, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 711, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-badlands-turnin-711-study-of-the-elements-rock",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 710 } } },
            route = {
                {
                    label = "Lotwil Veriatus",
                    mapID = 1418,
                    offMapText = "Travel to Lotwil Veriatus in Badlands.",
                    x = 0.2595,
                    y = 0.4487,
                },
            },
            sourceActionID = "turnin-711-study-of-the-elements-rock",
            sourceGuide = "leveling-era-horde-badlands",
            sourceStep = 17,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 5, id = 2258, index = 1, text = "Buzzard Gizzard" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 36 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-badlands-accept-2258-badlands-reagent-run" },
            id = "horde-leveling-era-horde-badlands-objective-2258-1-buzzard-gizzard",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Buzzard Gizzard", mapID = 1418, offMapText = "Travel to Buzzard Gizzard.", x = 0.172, y = 0.61 } },
            sourceStep = 18,
            text = "Collect 5 Buzzard Gizzard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "objective-2258-1-buzzard-gizzard",
        },
        {
            complete = { questObjective = { count = 10, id = 2258, index = 2, text = "Crag Coyote Fang" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 36 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-badlands-accept-2258-badlands-reagent-run" },
            id = "horde-leveling-era-horde-badlands-objective-2258-2-crag-coyote-fang",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Crag Coyote Fang", mapID = 1418, offMapText = "Travel to Crag Coyote Fang.", x = 0.208, y = 0.568 },
            },
            sourceStep = 19,
            text = "Collect 10 Crag Coyote Fang.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "objective-2258-2-crag-coyote-fang",
        },
        {
            complete = { questObjective = { count = 30, id = 1419, index = 1, text = "Coyote Jawbone" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-badlands-accept-1419-coyote-thieves" },
            id = "horde-leveling-era-horde-badlands-objective-1419-1-coyote-jawbone",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Coyote Jawbone", mapID = 1418, offMapText = "Travel to Coyote Jawbone.", x = 0.208, y = 0.568 } },
            sourceStep = 19,
            text = "Collect 30 Coyote Jawbone.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "objective-1419-1-coyote-jawbone",
        },
        {
            complete = { quest = { id = 703, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 33 } } } },
            dependsOn = {
                "horde-leveling-era-horde-badlands-accept-703-barbecued-buzzard-wings",
                "horde-leveling-era-horde-badlands-objective-703-1-buzzard-wing",
            },
            id = "horde-leveling-era-horde-badlands-turnin-703-barbecued-buzzard-wings",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Rigglefuzz", mapID = 1418, offMapText = "Travel to Rigglefuzz in Badlands.", x = 0.4239, y = 0.5293 },
            },
            sourceActionID = "turnin-703-barbecued-buzzard-wings",
            sourceGuide = "leveling-era-horde-badlands",
            sourceStep = 22,
            text = "Turn in Barbecued Buzzard Wings to Rigglefuzz.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1419, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-badlands-accept-1419-coyote-thieves",
                "horde-leveling-era-horde-badlands-objective-1419-1-coyote-jawbone",
            },
            id = "horde-leveling-era-horde-badlands-turnin-1419-coyote-thieves",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Neeka Bloodscar",
                    mapID = 1418,
                    offMapText = "Travel to Neeka Bloodscar in Badlands.",
                    x = 0.0648,
                    y = 0.4718,
                },
            },
            sourceActionID = "turnin-1419-coyote-thieves",
            sourceGuide = "leveling-era-horde-badlands",
            sourceStep = 27,
            text = "Turn in Coyote Thieves to Neeka Bloodscar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1420, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-badlands-accept-1420-report-to-helgrum",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Neeka Bloodscar",
                    mapID = 1418,
                    offMapText = "Travel to Neeka Bloodscar in Badlands.",
                    x = 0.0648,
                    y = 0.4718,
                },
            },
            sourceStep = 27,
            text = "Accept Report to Helgrum from Neeka Bloodscar.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "accept-1420-report-to-helgrum",
        },
        {
            complete = { quest = { id = 2258, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 36 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-badlands-accept-2258-badlands-reagent-run",
                "horde-leveling-era-horde-badlands-objective-2258-3-rock-elemental-shard",
                "horde-leveling-era-horde-badlands-objective-2258-1-buzzard-gizzard",
                "horde-leveling-era-horde-badlands-objective-2258-2-crag-coyote-fang",
            },
            id = "horde-leveling-era-horde-badlands-turnin-2258-badlands-reagent-run",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Jarkal Mossmeld",
                    mapID = 1418,
                    offMapText = "Travel to Jarkal Mossmeld in Badlands.",
                    x = 0.0242,
                    y = 0.4606,
                },
            },
            sourceActionID = "turnin-2258-badlands-reagent-run",
            sourceGuide = "leveling-era-horde-badlands",
            sourceStep = 28,
            text = "Turn in Badlands Reagent Run to Jarkal Mossmeld.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            complete = { quest = { id = 1420, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-turnin-1420-report-to-helgrum",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Helgrum the Swift",
                    mapID = 1435,
                    offMapText = "Travel to Helgrum the Swift in Swamp of Sorrows.",
                    x = 0.4774,
                    y = 0.552,
                },
            },
            sourceActionID = "turnin-1420-report-to-helgrum",
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceStep = 36,
            text = "Turn in Report to Helgrum to Helgrum the Swift.",
            useClientPin = false,
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
            checkpointQuest = 3821,
            complete = { level = { min = 48 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-searing-gorge-level-before-accept-3821-dreadmaul-rock",
            kind = "note",
            requiredLevel = 48,
            requiredQuests = {},
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "level-before-accept-3821-dreadmaul-rock",
            dependsOn = {},
        },
        {
            checkpointQuest = 712,
            complete = { level = { min = 35 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 712, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 712, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 711, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-712-level",
            kind = "note",
            requiredLevel = 35,
            text = "Reach level 35 before this visit.",
        },
        {
            complete = { quest = { id = 712, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-extra-712-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 712, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 712, state = "completed" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 711, state = "completed" } },
                                                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 712, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 712, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 711, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 710, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-712-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 711 } } },
            route = {
                { label = "Lotwil Veriatus", mapID = 1418, offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.258, y = 0.45 },
            },
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 712, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-extra-712-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 712, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 712, state = "completed" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 711, state = "completed" } },
                                                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 712, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 712, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 711, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 710, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-712-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 711 } } },
            route = {
                {
                    label = "Greater Rock Elemental",
                    mapID = 1418,
                    offMapText = "Travel to Greater Rock Elemental in Badlands.",
                    x = 0.132,
                    y = 0.838,
                },
            },
            text = "Defeat Greater Rock Elementals and loot 5 Bracers of Rock Binding.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 712, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-extra-712-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 712, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 712, state = "completed" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 711, state = "completed" } },
                                                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 712, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 712, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 711, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 710, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-712-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 711 } } },
            route = {
                { label = "Lotwil Veriatus", mapID = 1418, offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.258, y = 0.45 },
            },
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 734,
            complete = { level = { min = 35 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 734, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 734, state = "completed" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 712, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 711, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                {
                                                    any = {
                                                        { quest = { id = 714, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-734-level",
            kind = "note",
            requiredLevel = 35,
            text = "Reach level 35 before this visit.",
        },
        {
            complete = { quest = { id = 734, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-extra-734-level", "horde-extra-712-turnin", "horde-leveling-era-horde-badlands-turnin-714-gyro-what" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 734, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 734, state = "completed" } },
                                        {
                                            all = {
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                { quest = { id = 712, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 711, state = "completed" } },
                                                                                        { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                        {
                                                            any = {
                                                                { quest = { id = 714, state = "completed" } },
                                                                { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 734, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 734, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                { quest = { id = 712, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 711, state = "activeOrCompleted" } },
                                                                                        { all = { { any = { { any = { { quest = { id = 710, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                        {
                                                            any = {
                                                                { quest = { id = 714, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 713, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-734-accept",
            kind = "accept",
            requiredQuests = { { mode = "all", quests = { 712, 714 } } },
            route = {
                { label = "Lotwil Veriatus", mapID = 1418, offMapText = "Travel to Lotwil Veriatus in Badlands.", x = 0.258, y = 0.45 },
            },
            text = "Accept This Is Going to Be Hard from Lotwil Veriatus.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 3821, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3821-dreadmaul-rock",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Thal'trak Proudtusk",
                    mapID = 1418,
                    offMapText = "Travel to Thal'trak Proudtusk in Badlands.",
                    x = 0.0336,
                    y = 0.4807,
                },
            },
            sourceStep = 1,
            text = "Accept Dreadmaul Rock from Thal'trak Proudtusk.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3821-dreadmaul-rock",
        },
        {
            id = "visit-entry-leveling-era-horde-burning-steppes-and-azshara",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            text = "Reach level 51 before the Burning Steppes & Azshara visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 51 } },
            requiredLevel = 51,
        },
        {
            checkpointQuest = 3821,
            complete = { level = { min = 48 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-level-before-turnin-3821-dreadmaul-rock",
            kind = "note",
            requiredLevel = 48,
            requiredQuests = {},
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "level-before-turnin-3821-dreadmaul-rock",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3821, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-turnin-3821-dreadmaul-rock",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Sha'ni Proudtusk",
                    mapID = 1428,
                    offMapText = "Travel to Sha'ni Proudtusk in Burning Steppes.",
                    x = 0.7979,
                    y = 0.4552,
                },
            },
            sourceActionID = "turnin-3821-dreadmaul-rock",
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceStep = 8,
            text = "Turn in Dreadmaul Rock to Sha'ni Proudtusk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 734, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-extra-734-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 734, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 734, state = "completed" } },
                                        {
                                            all = {
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                { quest = { id = 712, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 711, state = "completed" } },
                                                                                        { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                        {
                                                            any = {
                                                                { quest = { id = 714, state = "completed" } },
                                                                { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 734, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 734, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                { quest = { id = 712, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 711, state = "activeOrCompleted" } },
                                                                                        { all = { { any = { { any = { { quest = { id = 710, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                        {
                                                            any = {
                                                                { quest = { id = 714, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 713, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-734-objective",
            kind = "objective",
            requiredQuests = { { mode = "all", quests = { 712, 714 } } },
            route = {},
            text = "Speak to Lucien Tosselwrench in the Badlands. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 734, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-extra-734-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 734, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 734, state = "completed" } },
                                        {
                                            all = {
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                { quest = { id = 712, state = "completed" } },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 711, state = "completed" } },
                                                                                        { all = { { any = { { any = { { quest = { id = 710, state = "completed" } }, { all = {} } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                        {
                                                            any = {
                                                                { quest = { id = 714, state = "completed" } },
                                                                { all = { { any = { { any = { { quest = { id = 713, state = "completed" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 734, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 734, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                { quest = { id = 712, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 711, state = "activeOrCompleted" } },
                                                                                        { all = { { any = { { any = { { quest = { id = 710, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                        {
                                                            any = {
                                                                { quest = { id = 714, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 713, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-734-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "all", quests = { 712, 714 } } },
            route = {
                {
                    label = "Lucien Tosselwrench",
                    mapID = 1418,
                    offMapText = "Travel to Lucien Tosselwrench in Badlands.",
                    x = 0.258,
                    y = 0.444,
                },
            },
            text = "Turn in This Is Going to Be Hard to Lucien Tosselwrench.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 782,
            complete = { level = { min = 40 } },
            conditions = { all = { { faction = "Horde" } } },
            id = "horde-extra-782-level",
            kind = "note",
            requiredLevel = 40,
            text = "Reach level 40 before this visit.",
        },
        {
            id = "horde-extra-782-accept",
            kind = "accept",
            text = "Accept Broken Alliances from Gorn.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            route = {
                {
                    mapID = 1418,
                    x = 0.027999999999999997,
                    y = 0.45799999999999996,
                    label = "Gorn",
                    offMapText = "Travel to Gorn in Badlands.",
                },
            },
            complete = { quest = { id = 782, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-782-level" },
        },
        {
            id = "horde-extra-782-objective",
            kind = "objective",
            text = "Kill Boss Tho'grun and loot the Sign of the Earth.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            route = {
                {
                    mapID = 1418,
                    x = 0.616,
                    y = 0.6779999999999999,
                    label = "Boss Tho'grun",
                    offMapText = "Travel to Boss Tho'grun in Badlands.",
                },
            },
            complete = { quest = { id = 782, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-782-accept" },
        },
        {
            complete = { quest = { id = 782, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-extra-782-objective" },
            id = "horde-extra-782-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Gorn", mapID = 1418, offMapText = "Travel to Gorn in Badlands.", x = 0.028, y = 0.458 } },
            text = "Turn in Broken Alliances to Gorn.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
    },
})
