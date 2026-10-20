local _, ns = ...

-- Source decisions: docs/loremaster/alterac-mountains.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-alterac-mountains",
    title = "Alterac Mountains",
    category = "Loremaster Guides",
    revision = 1,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
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
            complete = { quest = { id = 505, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-505-syndicate-assassins",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Magistrate Henry Maleb",
                    mapID = 1424,
                    offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.",
                    x = 0.4814,
                    y = 0.5911,
                },
            },
            sourceStep = 18,
            text = "Accept Syndicate Assassins from Magistrate Henry Maleb.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-505-syndicate-assassins",
        },
        {
            complete = { quest = { id = 510, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-510-foreboding-plans",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Foreboding Plans", mapID = 1416, offMapText = "Travel to Foreboding Plans.", x = 0.583, y = 0.68 } },
            sourceStep = 22,
            text = "Accept Foreboding Plans.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-510-foreboding-plans",
        },
        {
            complete = { quest = { id = 511, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-511-encrypted-letter",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Encrypted Letter", mapID = 1416, offMapText = "Travel to Encrypted Letter.", x = 0.583, y = 0.68 } },
            sourceStep = 22,
            text = "Accept Encrypted Letter.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-511-encrypted-letter",
        },
        {
            complete = { questObjective = { count = 8, id = 505, index = 2, text = "Syndicate Thief" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-505-syndicate-assassins" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-505-2-syndicate-thief",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Syndicate Thief", mapID = 1416, offMapText = "Travel to Syndicate Thief.", x = 0.578, y = 0.664 } },
            sourceStep = 23,
            text = "Kill 8 Syndicate Thief.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-505-2-syndicate-thief",
        },
        {
            complete = { questObjective = { count = 12, id = 505, index = 1, text = "Syndicate Footpad" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-505-syndicate-assassins" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-505-1-syndicate-footpad",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Syndicate Footpad", mapID = 1416, offMapText = "Travel to Syndicate Footpad.", x = 0.578, y = 0.664 },
            },
            sourceStep = 23,
            text = "Kill 12 Syndicate Footpad.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-505-1-syndicate-footpad",
        },
        {
            complete = { quest = { id = 510, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-510-foreboding-plans" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-510-foreboding-plans",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Magistrate Henry Maleb",
                    mapID = 1424,
                    offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.",
                    x = 0.4814,
                    y = 0.5911,
                },
            },
            sourceStep = 26,
            text = "Turn in Foreboding Plans to Magistrate Henry Maleb.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "turnin-510-foreboding-plans",
        },
        {
            complete = { quest = { id = 505, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-505-syndicate-assassins",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-505-2-syndicate-thief",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-505-1-syndicate-footpad",
            },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-505-syndicate-assassins",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Magistrate Henry Maleb",
                    mapID = 1424,
                    offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.",
                    x = 0.4814,
                    y = 0.5911,
                },
            },
            sourceStep = 26,
            text = "Turn in Syndicate Assassins to Magistrate Henry Maleb.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "turnin-505-syndicate-assassins",
        },
        {
            complete = { quest = { id = 511, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-511-encrypted-letter" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-511-encrypted-letter",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Loremaster Dibbs",
                    mapID = 1424,
                    offMapText = "Travel to Loremaster Dibbs in Hillsbrad Foothills.",
                    x = 0.5057,
                    y = 0.5709,
                },
            },
            sourceStep = 27,
            text = "Turn in Encrypted Letter to Loremaster Dibbs.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "turnin-511-encrypted-letter",
        },
        {
            complete = { quest = { id = 514, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-514-letter-to-stormpike",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 511 } } },
            route = {
                {
                    label = "Loremaster Dibbs",
                    mapID = 1424,
                    offMapText = "Travel to Loremaster Dibbs in Hillsbrad Foothills.",
                    x = 0.5057,
                    y = 0.5709,
                },
            },
            sourceStep = 27,
            text = "Accept Letter to Stormpike from Loremaster Dibbs.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-514-letter-to-stormpike",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 514, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 514, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 511, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 514, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-514-letter-to-stormpike" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-514-letter-to-stormpike",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 511 } } },
            route = {
                {
                    label = "Prospector Stormpike",
                    mapID = 1455,
                    offMapText = "Travel to Prospector Stormpike in Ironforge.",
                    x = 0.7464,
                    y = 0.1173,
                },
            },
            sourceStep = 37,
            text = "Turn in Letter to Stormpike to Prospector Stormpike.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "turnin-514-letter-to-stormpike",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 514, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 514, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 511, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
            complete = { quest = { id = 525, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-accept-525-further-mysteries",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 514 } } },
            route = {
                {
                    label = "Prospector Stormpike",
                    mapID = 1455,
                    offMapText = "Travel to Prospector Stormpike in Ironforge.",
                    x = 0.7464,
                    y = 0.1174,
                },
            },
            sourceStep = 47,
            text = "Accept Further Mysteries from Prospector Stormpike.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "accept-525-further-mysteries",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 525, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 525, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 514, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 511, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            complete = { quest = { id = 500, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-500-crushridge-bounty",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Marshal Redpath",
                    mapID = 1424,
                    offMapText = "Travel to Marshal Redpath in Hillsbrad Foothills.",
                    x = 0.4948,
                    y = 0.5873,
                },
            },
            sourceStep = 20,
            text = "Accept Crushridge Bounty from Marshal Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-500-crushridge-bounty",
        },
        {
            complete = { quest = { id = 525, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-525-further-mysteries",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 514 } } },
            route = {
                {
                    label = "Magistrate Henry Maleb",
                    mapID = 1424,
                    offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.",
                    x = 0.4814,
                    y = 0.5911,
                },
            },
            sourceStep = 21,
            text = "Turn in Further Mysteries to Magistrate Henry Maleb.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-525-further-mysteries",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 525, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 525, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 514, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 511, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 537, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-537-dark-council",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 525 } } },
            route = {
                {
                    label = "Magistrate Henry Maleb",
                    mapID = 1424,
                    offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.",
                    x = 0.4814,
                    y = 0.5911,
                },
            },
            sourceStep = 21,
            text = "Accept Dark Council from Magistrate Henry Maleb.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-537-dark-council",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 537, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 537, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 525, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 514, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 511, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 512, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-512-noble-deaths",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 510 } } },
            route = {
                {
                    label = "Magistrate Henry Maleb",
                    mapID = 1424,
                    offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.",
                    x = 0.4814,
                    y = 0.5911,
                },
            },
            sourceStep = 21,
            text = "Accept Noble Deaths from Magistrate Henry Maleb.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-512-noble-deaths",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 512, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 512, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 510, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 537, index = 2, text = "Nagaz" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-537-dark-council" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-537-2-nagaz",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 525 } } },
            route = { { label = "Nagaz", mapID = 1416, offMapText = "Travel to Nagaz.", x = 0.3922, y = 0.1431 } },
            sourceStep = 24,
            text = "Collect 1 Head of Nagaz.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-537-2-nagaz",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 537, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 537, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 525, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 514, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 511, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 551, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-551-the-ensorcelled-parchment",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 25,
            text = "Use the Ensorcelled Parchment to accept The Ensorcelled Parchment.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-551-the-ensorcelled-parchment",
        },
        {
            complete = { questObjective = { count = 4, id = 537, index = 1, text = "Argus Shadow Mage" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-537-dark-council" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-537-1-argus-shadow-mage",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 525 } } },
            route = {
                { label = "Argus Shadow Mage", mapID = 1416, offMapText = "Travel to Argus Shadow Mage.", x = 0.634, y = 0.438 },
            },
            sourceStep = 26,
            text = "Kill 4 Argus Shadow Mage.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-537-1-argus-shadow-mage",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 537, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 537, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 525, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 514, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 511, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 7, id = 512, index = 1, text = "Alterac Signet Ring" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-512-noble-deaths" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-512-1-alterac-signet-ring",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 510 } } },
            route = {
                { label = "Alterac Signet Ring", mapID = 1416, offMapText = "Travel to Alterac Signet Ring.", x = 0.622, y = 0.456 },
            },
            sourceStep = 27,
            text = "Collect 7 Alterac Signet Ring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-512-1-alterac-signet-ring",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 512, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 512, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 510, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 9, id = 500, index = 1, text = "Crushridge Ogre" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-500-crushridge-bounty" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-500-1-crushridge-ogre",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Crushridge Ogre", mapID = 1416, offMapText = "Travel to Crushridge Ogre.", x = 0.544, y = 0.524 } },
            sourceStep = 28,
            text = "Collect 9 Dirty Knucklebones.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-500-1-crushridge-ogre",
        },
        {
            complete = { quest = { id = 500, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-500-crushridge-bounty",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-500-1-crushridge-ogre",
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-500-crushridge-bounty",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Marshal Redpath",
                    mapID = 1424,
                    offMapText = "Travel to Marshal Redpath in Hillsbrad Foothills.",
                    x = 0.4948,
                    y = 0.5873,
                },
            },
            sourceStep = 29,
            text = "Turn in Crushridge Bounty to Marshal Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-500-crushridge-bounty",
        },
        {
            complete = { quest = { id = 537, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-537-dark-council",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-537-2-nagaz",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-537-1-argus-shadow-mage",
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-537-dark-council",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 525 } } },
            route = {
                {
                    label = "Magistrate Henry Maleb",
                    mapID = 1424,
                    offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.",
                    x = 0.4814,
                    y = 0.5911,
                },
            },
            sourceStep = 30,
            text = "Turn in Dark Council to Magistrate Henry Maleb.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-537-dark-council",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 537, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 537, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 525, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 514, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 511, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 512, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-512-noble-deaths",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-512-1-alterac-signet-ring",
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-512-noble-deaths",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 510 } } },
            route = {
                {
                    label = "Magistrate Henry Maleb",
                    mapID = 1424,
                    offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.",
                    x = 0.4814,
                    y = 0.5911,
                },
            },
            sourceStep = 30,
            text = "Turn in Noble Deaths to Magistrate Henry Maleb.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-512-noble-deaths",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 512, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 512, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 510, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 551, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-551-the-ensorcelled-parchment" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-551-the-ensorcelled-parchment",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Loremaster Dibbs",
                    mapID = 1424,
                    offMapText = "Travel to Loremaster Dibbs in Hillsbrad Foothills.",
                    x = 0.5057,
                    y = 0.5709,
                },
            },
            sourceStep = 31,
            text = "Turn in The Ensorcelled Parchment to Loremaster Dibbs.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-551-the-ensorcelled-parchment",
        },
        {
            complete = { quest = { id = 554, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-554-stormpike-s-deciphering",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 551 } } },
            route = {
                {
                    label = "Loremaster Dibbs",
                    mapID = 1424,
                    offMapText = "Travel to Loremaster Dibbs in Hillsbrad Foothills.",
                    x = 0.5057,
                    y = 0.5709,
                },
            },
            sourceStep = 68,
            text = "Accept Stormpike's Deciphering from Loremaster Dibbs.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-554-stormpike-s-deciphering",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 554, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 554, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 551, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 554, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-554-stormpike-s-deciphering" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-554-stormpike-s-deciphering",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 551 } } },
            route = {
                {
                    label = "Prospector Stormpike",
                    mapID = 1455,
                    offMapText = "Travel to Prospector Stormpike in Ironforge.",
                    x = 0.7464,
                    y = 0.1174,
                },
            },
            sourceStep = 69,
            text = "Turn in Stormpike's Deciphering to Prospector Stormpike.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-554-stormpike-s-deciphering",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 554, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 554, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 551, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-504-level",
            kind = "note",
            checkpointQuest = 504,
            text = "Reach level 40 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 504, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 504, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 500, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-504-accept",
            kind = "accept",
            text = "Accept Crushridge Warmongers from Marshal Redpath.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1424,
                    x = 0.494,
                    y = 0.586,
                    label = "Marshal Redpath",
                    offMapText = "Travel to Marshal Redpath in Hillsbrad Foothills.",
                },
            },
            complete = { quest = { id = 504, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 500 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-504-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 504, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 504, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 500, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-504-objective",
            kind = "objective",
            text = "Slay 15 Crushridge Warmongers. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1416,
                    x = 0.364,
                    y = 0.536,
                    label = "Crushridge Warmonger",
                    offMapText = "Travel to Crushridge Warmonger in Alterac Mountains.",
                },
            },
            complete = { quest = { id = 504, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 500 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-504-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 504, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 504, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 500, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-504-turnin",
            kind = "turnin",
            text = "Turn in Crushridge Warmongers to Marshal Redpath.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1424,
                    x = 0.494,
                    y = 0.586,
                    label = "Marshal Redpath",
                    offMapText = "Travel to Marshal Redpath in Hillsbrad Foothills.",
                },
            },
            complete = { quest = { id = 504, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 500 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-504-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 504, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 504, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 500, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-92432-level",
            kind = "note",
            checkpointQuest = 92432,
            text = "Reach level 33 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 33 } },
            requiredLevel = 33,
        },
        {
            id = "alliance-extra-92432-accept",
            kind = "accept",
            text = "Accept An Alarming Request from Emissary Jacques.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1424,
                    x = 0.483,
                    y = 0.601,
                    label = "Emissary Jacques",
                    offMapText = "Travel to Emissary Jacques in Hillsbrad Foothills.",
                },
            },
            complete = { quest = { id = 92432, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-92432-level" },
        },
        {
            id = "alliance-extra-92432-objective",
            kind = "objective",
            text = "Report to the Image of Archmage Modera near the City of Dalaran. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {},
            complete = { quest = { id = 92432, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-92432-accept" },
            useClientPin = true,
        },
        {
            id = "alliance-extra-92432-turnin",
            kind = "turnin",
            text = "Turn in An Alarming Request to Image of Archmage Modera.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1421,
                    x = 0.6859999999999999,
                    y = 0.452,
                    label = "Image of Archmage Modera",
                    offMapText = "Travel to Image of Archmage Modera in Silverpine Forest.",
                },
            },
            complete = { quest = { id = 92432, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-92432-objective" },
        },
        {
            id = "visit-entry-leveling-era-horde-hillsbrad-foothills-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            text = "Reach level 30 before the Hillsbrad Foothills visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 30 } },
            requiredLevel = 30,
        },
        {
            checkpointQuest = 544,
            complete = { level = { min = 30 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-level-before-accept-544-prison-break-in",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "level-before-accept-544-prison-break-in",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 544, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-544-prison-break-in",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Magus Wordeen Voidglare",
                    mapID = 1424,
                    offMapText = "Travel to Magus Wordeen Voidglare in Hillsbrad Foothills.",
                    x = 0.616,
                    y = 0.2084,
                },
            },
            sourceStep = 18,
            text = "Accept Prison Break In from Magus Wordeen Voidglare.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "accept-544-prison-break-in",
        },
        {
            complete = { questObjective = { count = 1, id = 544, index = 2, text = "Ricter" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-544-prison-break-in" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-2-ricter",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Ricter", mapID = 1416, offMapText = "Travel to Ricter.", x = 0.202, y = 0.8408 } },
            sourceStep = 36,
            text = "Collect 1 Bloodstone Marble.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-544-2-ricter",
        },
        {
            complete = { questObjective = { count = 1, id = 544, index = 3, text = "Alina" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-544-prison-break-in" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-3-alina",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Alina", mapID = 1416, offMapText = "Travel to Alina.", x = 0.2035, y = 0.8635 } },
            sourceStep = 37,
            text = "Collect 1 Bloodstone Shard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-544-3-alina",
        },
        {
            complete = { questObjective = { count = 1, id = 544, index = 1, text = "Dermot" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-544-prison-break-in" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-1-dermot",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Dermot", mapID = 1416, offMapText = "Travel to Dermot.", x = 0.2001, y = 0.8613 } },
            sourceStep = 38,
            text = "Collect 1 Bloodstone Wedge.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-544-1-dermot",
        },
        {
            complete = { questObjective = { count = 1, id = 544, index = 4, text = "Kegan Darkmar" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-544-prison-break-in" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-4-kegan-darkmar",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Kegan Darkmar", mapID = 1416, offMapText = "Travel to Kegan Darkmar.", x = 0.1778, y = 0.832 } },
            sourceStep = 39,
            text = "Collect 1 Bloodstone Oval.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-544-4-kegan-darkmar",
        },
        {
            complete = { quest = { id = 544, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-544-prison-break-in",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-2-ricter",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-3-alina",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-1-dermot",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-4-kegan-darkmar",
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-turnin-544-prison-break-in",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Magus Wordeen Voidglare",
                    mapID = 1424,
                    offMapText = "Travel to Magus Wordeen Voidglare in Hillsbrad Foothills.",
                    x = 0.616,
                    y = 0.2084,
                },
            },
            sourceStep = 45,
            text = "Turn in Prison Break In to Magus Wordeen Voidglare.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "turnin-544-prison-break-in",
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
            checkpointQuest = 545,
            complete = { level = { min = 30 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-level-before-accept-545-dalaran-patrols",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "level-before-accept-545-dalaran-patrols",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 545, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 545, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 544, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 545, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-545-dalaran-patrols",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 544 } } },
            route = {
                {
                    label = "Magus Wordeen Voidglare",
                    mapID = 1424,
                    offMapText = "Travel to Magus Wordeen Voidglare in Hillsbrad Foothills.",
                    x = 0.616,
                    y = 0.2084,
                },
            },
            sourceStep = 1,
            text = "Accept Dalaran Patrols from Magus Wordeen Voidglare.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-545-dalaran-patrols",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 545, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 545, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 544, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 6, id = 545, index = 1, text = "Dalaran Summoner" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-545-dalaran-patrols" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-545-1-dalaran-summoner",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 544 } } },
            route = {
                { label = "Dalaran Summoner", mapID = 1416, offMapText = "Travel to Dalaran Summoner.", x = 0.206, y = 0.764 },
            },
            sourceStep = 20,
            text = "Kill 6 Dalaran Summoner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-545-1-dalaran-summoner",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 545, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 545, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 544, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 12, id = 545, index = 2, text = "Elemental Slave" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-545-dalaran-patrols" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-545-2-elemental-slave",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 544 } } },
            route = { { label = "Elemental Slave", mapID = 1416, offMapText = "Travel to Elemental Slave.", x = 0.206, y = 0.764 } },
            sourceStep = 20,
            text = "Kill 12 Elemental Slave.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-545-2-elemental-slave",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 545, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 545, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 544, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 545, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-545-dalaran-patrols",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-545-1-dalaran-summoner",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-545-2-elemental-slave",
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-545-dalaran-patrols",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 544 } } },
            route = {
                {
                    label = "Magus Wordeen Voidglare",
                    mapID = 1424,
                    offMapText = "Travel to Magus Wordeen Voidglare in Hillsbrad Foothills.",
                    x = 0.616,
                    y = 0.2084,
                },
            },
            sourceStep = 24,
            text = "Turn in Dalaran Patrols to Magus Wordeen Voidglare.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-545-dalaran-patrols",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 545, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 545, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 544, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-535-level",
            kind = "note",
            checkpointQuest = 535,
            text = "Reach level 34 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 34 } },
            requiredLevel = 34,
        },
        {
            id = "horde-extra-535-accept",
            kind = "accept",
            text = "Accept Valik from Henchman Valik.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            route = {
                {
                    mapID = 1416,
                    x = 0.57,
                    y = 0.6940000000000001,
                    label = "Henchman Valik",
                    offMapText = "Travel to Henchman Valik in Alterac Mountains.",
                },
            },
            complete = { quest = { id = 535, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-535-level" },
        },
        {
            id = "horde-extra-535-objective",
            kind = "objective",
            text = "Defeat Drunken Footpads and loot a mug of Southshore Stout.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            route = {
                {
                    mapID = 1416,
                    x = 0.588,
                    y = 0.696,
                    label = "Drunken Footpad",
                    offMapText = "Travel to Drunken Footpad in Alterac Mountains.",
                },
            },
            complete = { quest = { id = 535, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-535-accept" },
        },
        {
            id = "horde-extra-535-turnin",
            kind = "turnin",
            text = "Turn in Valik to Henchman Valik.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            route = {
                {
                    mapID = 1416,
                    x = 0.57,
                    y = 0.6940000000000001,
                    label = "Henchman Valik",
                    offMapText = "Travel to Henchman Valik in Alterac Mountains.",
                },
            },
            complete = { quest = { id = 535, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-535-objective" },
        },
    },
})
