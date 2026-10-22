local _, ns = ...

-- Source decisions: docs/loremaster/tanaris.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-tanaris",
    title = "Tanaris",
    category = "Loremaster Guides",
    revision = 2,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
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
            complete = { quest = { id = 2872, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-accept-2872-stoley-s-debt",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "\"Sea Wolf\" MacKinley",
                    mapID = 1434,
                    offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.",
                    x = 0.2778,
                    y = 0.7707,
                },
            },
            sourceStep = 18,
            text = "Accept Stoley's Debt from \"Sea Wolf\" MacKinley.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows-part-2",
            sourceActionID = "accept-2872-stoley-s-debt",
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
            checkpointQuest = 1707,
            complete = { level = { min = 40 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-tanaris-level-before-accept-1707-water-pouch-bounty",
            kind = "note",
            requiredLevel = 40,
            requiredQuests = {},
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "level-before-accept-1707-water-pouch-bounty",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1707, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-accept-1707-water-pouch-bounty",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Spigot Operator Luglunket",
                    mapID = 1446,
                    offMapText = "Travel to Spigot Operator Luglunket in Tanaris.",
                    x = 0.5248,
                    y = 0.2844,
                },
            },
            sourceStep = 15,
            text = "Accept Water Pouch Bounty from Spigot Operator Luglunket.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "accept-1707-water-pouch-bounty",
        },
        {
            complete = { quest = { id = 1690, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-accept-1690-wastewander-justice",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceStep = 16,
            text = "Accept Wastewander Justice from Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "accept-1690-wastewander-justice",
        },
        {
            complete = { quest = { id = 8365, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-accept-8365-pirate-hats-ahoy",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Haughty Modiste", mapID = 1446, offMapText = "Travel to Haughty Modiste in Tanaris.", x = 0.6656, y = 0.2227 },
            },
            sourceStep = 17,
            text = "Accept Pirate Hats Ahoy! from Haughty Modiste.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "accept-8365-pirate-hats-ahoy",
        },
        {
            complete = { quest = { id = 8366, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-accept-8366-southsea-shakedown",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Security Chief Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris.",
                    x = 0.6706,
                    y = 0.2389,
                },
            },
            sourceStep = 19,
            text = "Accept Southsea Shakedown from Security Chief Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "accept-8366-southsea-shakedown",
        },
        {
            complete = { quest = { id = 2872, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-turnin-2872-stoley-s-debt",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Stoley", mapID = 1446, offMapText = "Travel to Stoley in Tanaris.", x = 0.6711, y = 0.2398 } },
            sourceActionID = "turnin-2872-stoley-s-debt",
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceStep = 20,
            text = "Turn in Stoley's Debt to Stoley.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2873, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-accept-2873-stoley-s-shipment",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Stoley", mapID = 1446, offMapText = "Travel to Stoley in Tanaris.", x = 0.6711, y = 0.2398 } },
            sourceStep = 20,
            text = "Accept Stoley's Shipment from Stoley.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "accept-2873-stoley-s-shipment",
        },
        {
            complete = { questObjective = { count = 5, id = 1707, index = 1, text = "Wastewander Water Pouch" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-accept-1707-water-pouch-bounty" },
            id = "alliance-leveling-era-alliance-tanaris-objective-1707-1-wastewander-water-pouch",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Wastewander Water Pouch",
                    mapID = 1446,
                    offMapText = "Travel to Wastewander Water Pouch.",
                    x = 0.628,
                    y = 0.304,
                },
            },
            sourceStep = 21,
            text = "Collect 5 Wastewander Water Pouch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "objective-1707-1-wastewander-water-pouch",
        },
        {
            complete = { questObjective = { count = 10, id = 1690, index = 1, text = "Wastewander Bandit" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-accept-1690-wastewander-justice" },
            id = "alliance-leveling-era-alliance-tanaris-objective-1690-1-wastewander-bandit",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Wastewander Bandit", mapID = 1446, offMapText = "Travel to Wastewander Bandit.", x = 0.628, y = 0.304 },
            },
            sourceStep = 22,
            text = "Kill 10 Wastewander Bandit.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "objective-1690-1-wastewander-bandit",
        },
        {
            complete = { questObjective = { count = 10, id = 1690, index = 2, text = "Wastewander Thief" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-accept-1690-wastewander-justice" },
            id = "alliance-leveling-era-alliance-tanaris-objective-1690-2-wastewander-thief",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Wastewander Thief", mapID = 1446, offMapText = "Travel to Wastewander Thief.", x = 0.628, y = 0.304 },
            },
            sourceStep = 22,
            text = "Kill 10 Wastewander Thief.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "objective-1690-2-wastewander-thief",
        },
        {
            complete = { quest = { id = 1690, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-tanaris-accept-1690-wastewander-justice",
                "alliance-leveling-era-alliance-tanaris-objective-1690-1-wastewander-bandit",
                "alliance-leveling-era-alliance-tanaris-objective-1690-2-wastewander-thief",
            },
            id = "alliance-leveling-era-alliance-tanaris-turnin-1690-wastewander-justice",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceActionID = "turnin-1690-wastewander-justice",
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceStep = 23,
            text = "Turn in Wastewander Justice to Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1707, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-tanaris-accept-1707-water-pouch-bounty",
                "alliance-leveling-era-alliance-tanaris-objective-1707-1-wastewander-water-pouch",
            },
            id = "alliance-leveling-era-alliance-tanaris-turnin-1707-water-pouch-bounty",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Spigot Operator Luglunket",
                    mapID = 1446,
                    offMapText = "Travel to Spigot Operator Luglunket in Tanaris.",
                    x = 0.5248,
                    y = 0.2844,
                },
            },
            sourceActionID = "turnin-1707-water-pouch-bounty",
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceStep = 24,
            text = "Turn in Water Pouch Bounty to Spigot Operator Luglunket.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-alliance-feralas-and-tanaris",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            text = "Reach level 44 before the Feralas & Tanaris visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 44 } },
            requiredLevel = 44,
        },
        {
            checkpointQuest = 3022,
            complete = { level = { min = 42 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-level-before-accept-3022-handle-with-care",
            kind = "note",
            requiredLevel = 42,
            requiredQuests = {},
            text = "Reach level 42 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "level-before-accept-3022-handle-with-care",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3022, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-3022-handle-with-care",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Curgle Cranklehop",
                    mapID = 1446,
                    offMapText = "Travel to Curgle Cranklehop in Tanaris.",
                    x = 0.5235,
                    y = 0.2691,
                },
            },
            sourceStep = 3,
            text = "Accept Handle With Care from Curgle Cranklehop.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-3022-handle-with-care",
        },
        {
            checkpointQuest = 3445,
            complete = { level = { min = 46 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-level-before-accept-3445-the-sunken-temple",
            kind = "note",
            requiredLevel = 46,
            requiredQuests = {},
            text = "Reach level 46 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "level-before-accept-3445-the-sunken-temple",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3445, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 46 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-3445-the-sunken-temple",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Angelas Moonbreeze",
                    mapID = 1444,
                    offMapText = "Travel to Angelas Moonbreeze in Feralas.",
                    x = 0.3183,
                    y = 0.4561,
                },
            },
            sourceStep = 70,
            text = "Accept The Sunken Temple from Angelas Moonbreeze.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-3445-the-sunken-temple",
        },
        {
            complete = { quest = { id = 3022, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-3022-handle-with-care" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-3022-handle-with-care",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Erelas Ambersky",
                    mapID = 1438,
                    offMapText = "Travel to Erelas Ambersky in Teldrassil.",
                    x = 0.555,
                    y = 0.9205,
                },
            },
            sourceActionID = "turnin-3022-handle-with-care",
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceStep = 73,
            text = "Turn in Handle With Care to Erelas Ambersky.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 992, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-992-gadgetzan-water-survey",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceStep = 103,
            text = "Accept Gadgetzan Water Survey from Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-992-gadgetzan-water-survey",
        },
        {
            complete = { questObjective = { count = 1, id = 992, index = 1, text = "Untapped Dowsing Widget" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-992-gadgetzan-water-survey" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-992-1-untapped-dowsing-widget",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Untapped Dowsing Widget",
                    mapID = 1446,
                    offMapText = "Travel to Untapped Dowsing Widget.",
                    x = 0.3909,
                    y = 0.2917,
                },
            },
            sourceStep = 104,
            text = "Use the Untapped Dowsing Widget at the Tanaris insect mound to obtain the Tapped Dowsing Widget. Expect an attack and avoid nearby elite insects.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-992-1-untapped-dowsing-widget",
        },
        {
            complete = { quest = { id = 992, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-tanaris-accept-992-gadgetzan-water-survey",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-992-1-untapped-dowsing-widget",
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-992-gadgetzan-water-survey",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceActionID = "turnin-992-gadgetzan-water-survey",
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceStep = 105,
            text = "Turn in Gadgetzan Water Survey to Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 82, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-82-noxious-lair-investigation",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 992 } } },
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceStep = 105,
            text = "Accept Noxious Lair Investigation from Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-82-noxious-lair-investigation",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 82, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 82, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 82, index = 1, text = "Centipaar Wasp" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-82-noxious-lair-investigation" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-82-1-centipaar-wasp",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 992 } } },
            route = { { label = "Centipaar Wasp", mapID = 1446, offMapText = "Travel to Centipaar Wasp.", x = 0.36, y = 0.4 } },
            sourceStep = 106,
            text = "Collect 5 Centipaar Insect Parts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-82-1-centipaar-wasp",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 82, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 82, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 82, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-tanaris-accept-82-noxious-lair-investigation",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-82-1-centipaar-wasp",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 82, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 82, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-82-noxious-lair-investigation",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 992 } } },
            route = {
                {
                    label = "Alchemist Pestlezugg",
                    mapID = 1446,
                    offMapText = "Travel to Alchemist Pestlezugg in Tanaris.",
                    x = 0.5089,
                    y = 0.2696,
                },
            },
            sourceActionID = "turnin-82-noxious-lair-investigation",
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceStep = 107,
            text = "Turn in Noxious Lair Investigation to Alchemist Pestlezugg.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-alliance-tanaris-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-tanaris-part-2",
            text = "Reach level 49 before the Tanaris visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 49 } },
            requiredLevel = 49,
        },
        {
            checkpointQuest = 1691,
            complete = { level = { min = 40 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-level-before-accept-1691-more-wastewander-justice",
            kind = "note",
            requiredLevel = 40,
            requiredQuests = {},
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "level-before-accept-1691-more-wastewander-justice",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1691, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1691, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1690, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1691, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-1691-more-wastewander-justice",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1690 } } },
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceStep = 2,
            text = "Accept More Wastewander Justice from Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-1691-more-wastewander-justice",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1691, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1691, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1690, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2781, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-2781-wanted-caliph-scorpidsting",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "WANTED: Caliph Scorpidsting",
                    mapID = 1446,
                    offMapText = "Travel to WANTED: Caliph Scorpidsting.",
                    x = 0.5184,
                    y = 0.2702,
                },
            },
            sourceStep = 3,
            text = "Accept WANTED: Caliph Scorpidsting.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-2781-wanted-caliph-scorpidsting",
        },
        {
            complete = { quest = { id = 2875, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-2875-wanted-andre-firebeard",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "WANTED: Andre Firebeard",
                    mapID = 1446,
                    offMapText = "Travel to WANTED: Andre Firebeard.",
                    x = 0.5184,
                    y = 0.2702,
                },
            },
            sourceStep = 3,
            text = "Accept WANTED: Andre Firebeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-2875-wanted-andre-firebeard",
        },
        {
            complete = { quest = { id = 10, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-10-the-scrimshank-redemption",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 82 } } },
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceStep = 4,
            text = "Accept The Scrimshank Redemption from Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-10-the-scrimshank-redemption",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 10, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 10, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 3445,
            complete = { level = { min = 46 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-tanaris-part-2-level-before-turnin-3445-the-sunken-temple",
            kind = "note",
            requiredLevel = 46,
            requiredQuests = {},
            text = "Reach level 46 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "level-before-turnin-3445-the-sunken-temple",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3445, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 46 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-3445-the-sunken-temple",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Marvon Rivetseeker",
                    mapID = 1446,
                    offMapText = "Travel to Marvon Rivetseeker in Tanaris.",
                    x = 0.5271,
                    y = 0.4593,
                },
            },
            sourceActionID = "turnin-3445-the-sunken-temple",
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceStep = 5,
            text = "Turn in The Sunken Temple to Marvon Rivetseeker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 3161,
            complete = { level = { min = 43 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-level-before-accept-3161-gahz-ridian",
            kind = "note",
            requiredLevel = 43,
            requiredQuests = {},
            text = "Reach level 43 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "level-before-accept-3161-gahz-ridian",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3161, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-3161-gahz-ridian",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Marvon Rivetseeker",
                    mapID = 1446,
                    offMapText = "Travel to Marvon Rivetseeker in Tanaris.",
                    x = 0.5271,
                    y = 0.4593,
                },
            },
            sourceStep = 5,
            text = "Accept Gahz'ridian from Marvon Rivetseeker.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-3161-gahz-ridian",
        },
        {
            complete = { questObjective = { count = 1, id = 2781, index = 1, text = "Caliph Scorpidsting" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-2781-wanted-caliph-scorpidsting" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-2781-1-caliph-scorpidsting",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 6,
            text = "Collect 1 Caliph Scorpidsting's Head.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-2781-1-caliph-scorpidsting",
        },
        {
            complete = { questObjective = { count = 6, id = 1691, index = 2, text = "Wastewander Assassin" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-1691-more-wastewander-justice" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-1691-2-wastewander-assassin",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1690 } } },
            route = {
                { label = "Wastewander Assassin", mapID = 1446, offMapText = "Travel to Wastewander Assassin.", x = 0.608, y = 0.366 },
            },
            sourceStep = 7,
            text = "Kill 6 Wastewander Assassin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-1691-2-wastewander-assassin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1691, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1691, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1690, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 8, id = 1691, index = 1, text = "Wastewander Rogue" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-1691-more-wastewander-justice" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-1691-1-wastewander-rogue",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1690 } } },
            route = {
                { label = "Wastewander Rogue", mapID = 1446, offMapText = "Travel to Wastewander Rogue.", x = 0.608, y = 0.366 },
            },
            sourceStep = 7,
            text = "Kill 8 Wastewander Rogue.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-1691-1-wastewander-rogue",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1691, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1691, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1690, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1691, index = 3, text = "Wastewander Shadow Mage" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-1691-more-wastewander-justice" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-1691-3-wastewander-shadow-mage",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1690 } } },
            route = {
                {
                    label = "Wastewander Shadow Mage",
                    mapID = 1446,
                    offMapText = "Travel to Wastewander Shadow Mage.",
                    x = 0.608,
                    y = 0.366,
                },
            },
            sourceStep = 7,
            text = "Kill 10 Wastewander Shadow Mage.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-1691-3-wastewander-shadow-mage",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1691, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1691, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1690, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 2873, index = 1, text = "Stoley's Shipment" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-2873-1-stoley-s-shipment",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Stoley's Shipment", mapID = 1446, offMapText = "Travel to Stoley's Shipment.", x = 0.7219, y = 0.4677 },
            },
            sourceStep = 9,
            text = "Collect 1 Stoley's Shipment.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-2873-1-stoley-s-shipment",
        },
        {
            complete = { questObjective = { count = 1, id = 2875, index = 1, text = "Andre Firebeard" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-2875-wanted-andre-firebeard" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-2875-1-andre-firebeard",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Andre Firebeard", mapID = 1446, offMapText = "Travel to Andre Firebeard.", x = 0.7337, y = 0.4714 },
            },
            sourceStep = 10,
            text = "Collect 1 Firebeard's Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-2875-1-andre-firebeard",
        },
        {
            complete = { quest = { id = 2876, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2876, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Ship Schedule" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-2876-1-southsea-pirate",
            kind = "note",
            requiredQuests = {},
            route = { { label = "Southsea Pirate", mapID = 1446, offMapText = "Travel to Southsea Pirate.", x = 0.738, y = 0.466 } },
            text = "Kill Southsea Pirate. Loot the starter item here, then use it to accept the quest.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-2876-1-southsea-pirate",
        },
        {
            complete = {
                any = { { item = { minCount = 1, name = "Ship Schedule" } }, { quest = { id = 2876, state = "activeOrCompleted" } } },
            },
            conditions = { faction = "Alliance" },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2876, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Ship Schedule" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-loot-starter-before-accept-2876-ship-schedules",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 2876,
            requiredQuests = {},
            text = "Loot Ship Schedule from Ship Schedule. Keep it for the next pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "loot-starter-before-accept-2876-ship-schedules",
        },
        {
            complete = { quest = { id = 2876, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2876, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Ship Schedule" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-2876-ship-schedules",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 11,
            text = "Use the Ship Schedule to accept Ship Schedules.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-2876-ship-schedules",
        },
        {
            complete = {
                any = {
                    { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } },
                    { quest = { id = 351, state = "activeOrCompleted" } },
                },
            },
            conditions = { faction = "Alliance" },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 351, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-loot-starter-before-accept-351-find-oox-17-tn",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 351,
            requiredQuests = {},
            text = "Loot OOX-17/TN Distress Beacon from Glasshide Basilisk, Scorpid Hunter, Starving Blisterpaw, Fire Roc, Divined Scroll, Dunemaul Enforcer, Dunemaul Brute, Thistleshrub Dew Collector, Thistleshrub Rootshaper, Gnarled Thistleshrub, Wastewander Rogue, Wastewander Thief, Wastewander Shadow Mage, Wastewander Bandit, Wastewander Assassin, Sandfury Shadowhunter, Scarab, Theka the Martyr, Zul'Farrak Zombie, Sergeant Bly, Hydromancer Velratha, Caliph Scorpidsting, Southsea Pirate, Southsea Freebooter, Southsea Dock Worker, Southsea Swashbuckler, Andre Firebeard, Big Voodoo Robe, Tough Scorpid Breastplate, Gor'marok the Ravager. Keep it for the next pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "loot-starter-before-accept-351-find-oox-17-tn",
        },
        {
            complete = { quest = { id = 351, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 351, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-351-find-oox-17-tn",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 12,
            text = "Use the OOX-17/TN Distress Beacon to accept Find OOX-17/TN!.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-351-find-oox-17-tn",
        },
        {
            complete = { questObjective = { count = 20, id = 8365, index = 1, text = "Southsea Pirate Hat" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-8365-1-southsea-pirate-hat",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Southsea Pirate Hat", mapID = 1446, offMapText = "Travel to Southsea Pirate Hat.", x = 0.738, y = 0.466 },
            },
            sourceStep = 13,
            text = "Collect 20 Southsea Pirate Hat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-8365-1-southsea-pirate-hat",
        },
        {
            complete = { questObjective = { count = 10, id = 8366, index = 1, text = "Southsea Pirate" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-8366-1-southsea-pirate",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Southsea Pirate", mapID = 1446, offMapText = "Travel to Southsea Pirate.", x = 0.738, y = 0.466 } },
            sourceStep = 14,
            text = "Kill 10 Southsea Pirate.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-8366-1-southsea-pirate",
        },
        {
            complete = { questObjective = { count = 10, id = 8366, index = 2, text = "Southsea Freebooter" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-8366-2-southsea-freebooter",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Southsea Freebooter", mapID = 1446, offMapText = "Travel to Southsea Freebooter.", x = 0.738, y = 0.466 },
            },
            sourceStep = 14,
            text = "Kill 10 Southsea Freebooter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-8366-2-southsea-freebooter",
        },
        {
            complete = { questObjective = { count = 10, id = 8366, index = 3, text = "Southsea Dock Worker" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-8366-3-southsea-dock-worker",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Southsea Dock Worker", mapID = 1446, offMapText = "Travel to Southsea Dock Worker.", x = 0.73, y = 0.478 },
            },
            sourceStep = 15,
            text = "Kill 10 Southsea Dock Worker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-8366-3-southsea-dock-worker",
        },
        {
            complete = { questObjective = { count = 10, id = 8366, index = 4, text = "Southsea Swashbuckler" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-8366-4-southsea-swashbuckler",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Southsea Swashbuckler", mapID = 1446, offMapText = "Travel to Southsea Swashbuckler.", x = 0.744, y = 0.452 },
            },
            sourceStep = 16,
            text = "Kill 10 Southsea Swashbuckler.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-8366-4-southsea-swashbuckler",
        },
        {
            complete = { quest = { id = 2875, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-tanaris-part-2-accept-2875-wanted-andre-firebeard",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-2875-1-andre-firebeard",
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-2875-wanted-andre-firebeard",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Security Chief Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris.",
                    x = 0.6706,
                    y = 0.2389,
                },
            },
            sourceActionID = "turnin-2875-wanted-andre-firebeard",
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceStep = 17,
            text = "Turn in WANTED: Andre Firebeard to Security Chief Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8366, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-tanaris-part-2-objective-8366-1-southsea-pirate",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-8366-2-southsea-freebooter",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-8366-3-southsea-dock-worker",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-8366-4-southsea-swashbuckler",
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-8366-southsea-shakedown",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Security Chief Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris.",
                    x = 0.6706,
                    y = 0.2389,
                },
            },
            sourceActionID = "turnin-8366-southsea-shakedown",
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceStep = 17,
            text = "Turn in Southsea Shakedown to Security Chief Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2876, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-2876-ship-schedules" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2876, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Ship Schedule" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-2876-ship-schedules",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Security Chief Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris.",
                    x = 0.6706,
                    y = 0.2389,
                },
            },
            sourceActionID = "turnin-2876-ship-schedules",
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceStep = 17,
            text = "Turn in Ship Schedules to Security Chief Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2873, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-objective-2873-1-stoley-s-shipment" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-2873-stoley-s-shipment",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Stoley", mapID = 1446, offMapText = "Travel to Stoley in Tanaris.", x = 0.6711, y = 0.2397 } },
            sourceActionID = "turnin-2873-stoley-s-shipment",
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceStep = 18,
            text = "Turn in Stoley's Shipment to Stoley.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2874, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-2874-deliver-to-mackinley",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2873 } } },
            route = { { label = "Stoley", mapID = 1446, offMapText = "Travel to Stoley in Tanaris.", x = 0.6711, y = 0.2397 } },
            sourceStep = 18,
            text = "Accept Deliver to MacKinley from Stoley.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-2874-deliver-to-mackinley",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2874, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2874, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 2873, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8365, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-objective-8365-1-southsea-pirate-hat" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-8365-pirate-hats-ahoy",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Haughty Modiste", mapID = 1446, offMapText = "Travel to Haughty Modiste in Tanaris.", x = 0.6656, y = 0.2227 },
            },
            sourceActionID = "turnin-8365-pirate-hats-ahoy",
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceStep = 19,
            text = "Turn in Pirate Hats Ahoy! to Haughty Modiste.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 351, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-351-find-oox-17-tn" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 351, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-351-find-oox-17-tn",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Homing Robot OOX-17/TN",
                    mapID = 1446,
                    offMapText = "Travel to Homing Robot OOX-17/TN in Tanaris.",
                    x = 0.6023,
                    y = 0.6472,
                },
            },
            sourceActionID = "turnin-351-find-oox-17-tn",
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceStep = 21,
            text = "Turn in Find OOX-17/TN! to Homing Robot OOX-17/TN.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 10, index = 1, text = "Scrimshank's Surveying Gear" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-10-the-scrimshank-redemption" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-10-1-scrimshank-s-surveying-gear",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 82 } } },
            route = {
                {
                    label = "Scrimshank's Surveying Gear",
                    mapID = 1446,
                    offMapText = "Travel to Scrimshank's Surveying Gear.",
                    x = 0.5597,
                    y = 0.7118,
                },
            },
            sourceStep = 22,
            text = "Collect 1 Scrimshank's Surveying Gear.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-10-1-scrimshank-s-surveying-gear",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 10, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 10, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2781, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-tanaris-part-2-accept-2781-wanted-caliph-scorpidsting",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-2781-1-caliph-scorpidsting",
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-2781-wanted-caliph-scorpidsting",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceActionID = "turnin-2781-wanted-caliph-scorpidsting",
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceStep = 23,
            text = "Turn in WANTED: Caliph Scorpidsting to Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1691, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-tanaris-part-2-accept-1691-more-wastewander-justice",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-1691-2-wastewander-assassin",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-1691-1-wastewander-rogue",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-1691-3-wastewander-shadow-mage",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1691, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1691, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1690, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-1691-more-wastewander-justice",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1690 } } },
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceActionID = "turnin-1691-more-wastewander-justice",
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceStep = 23,
            text = "Turn in More Wastewander Justice to Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 2605,
            complete = { level = { min = 44 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-level-before-accept-2605-the-thirsty-goblin",
            kind = "note",
            requiredLevel = 44,
            requiredQuests = {},
            text = "Reach level 44 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "level-before-accept-2605-the-thirsty-goblin",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2605, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-2605-the-thirsty-goblin",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Marin Noggenfogger",
                    mapID = 1446,
                    offMapText = "Travel to Marin Noggenfogger in Tanaris.",
                    x = 0.5181,
                    y = 0.2866,
                },
            },
            sourceStep = 26,
            text = "Accept The Thirsty Goblin from Marin Noggenfogger.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-2605-the-thirsty-goblin",
        },
        {
            checkpointQuest = 648,
            complete = { level = { min = 43 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 648, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 351, state = "activeOrCompleted" } },
                                                        { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-648-level",
            kind = "note",
            requiredLevel = 43,
            text = "Reach level 43 before this visit.",
        },
        {
            complete = { quest = { id = 648, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = { "alliance-extra-648-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 648, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 351, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 648, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 351, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-648-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 351 } } },
            route = {
                {
                    label = "Homing Robot OOX-17/TN",
                    mapID = 1446,
                    offMapText = "Travel to Homing Robot OOX-17/TN in Tanaris.",
                    x = 0.602,
                    y = 0.646,
                },
            },
            text = "Accept Rescue OOX-17/TN! from Homing Robot OOX-17/TN.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 648, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = { "alliance-extra-648-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 648, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 351, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 648, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 351, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-648-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 351 } } },
            route = {},
            text = "Escort OOX-17/TN to Steamwheedle Port. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 10, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-tanaris-part-2-accept-10-the-scrimshank-redemption",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-10-1-scrimshank-s-surveying-gear",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 10, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 10, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-10-the-scrimshank-redemption",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 82 } } },
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceActionID = "turnin-10-the-scrimshank-redemption",
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceStep = 27,
            text = "Turn in The Scrimshank Redemption to Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 110, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-110-insect-part-analysis",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 10 } } },
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceStep = 27,
            text = "Accept Insect Part Analysis from Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-110-insect-part-analysis",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 110, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 110, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 110, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-110-insect-part-analysis" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 110, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 110, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-110-insect-part-analysis",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 10 } } },
            route = {
                {
                    label = "Alchemist Pestlezugg",
                    mapID = 1446,
                    offMapText = "Travel to Alchemist Pestlezugg in Tanaris.",
                    x = 0.5089,
                    y = 0.2696,
                },
            },
            sourceActionID = "turnin-110-insect-part-analysis",
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceStep = 28,
            text = "Turn in Insect Part Analysis to Alchemist Pestlezugg.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 113, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-113-insect-part-analysis",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 110 } } },
            route = {
                {
                    label = "Alchemist Pestlezugg",
                    mapID = 1446,
                    offMapText = "Travel to Alchemist Pestlezugg in Tanaris.",
                    x = 0.5089,
                    y = 0.2696,
                },
            },
            sourceStep = 28,
            text = "Accept Insect Part Analysis from Alchemist Pestlezugg.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-113-insect-part-analysis",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 113, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 113, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 110, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 3362,
            complete = { level = { min = 45 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-level-before-accept-3362-thistleshrub-valley",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "level-before-accept-3362-thistleshrub-valley",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3362, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-3362-thistleshrub-valley",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Tran'rek", mapID = 1446, offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157, y = 0.2676 } },
            sourceStep = 29,
            text = "Accept Thistleshrub Valley from Tran'rek.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-3362-thistleshrub-valley",
        },
        {
            complete = { quest = { id = 5863, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-accept-5863-the-dunemaul-compound",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Andi Lynn", mapID = 1446, offMapText = "Travel to Andi Lynn in Tanaris.", x = 0.5282, y = 0.274 } },
            sourceStep = 30,
            text = "Accept The Dunemaul Compound from Andi Lynn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "accept-5863-the-dunemaul-compound",
        },
        {
            complete = { quest = { id = 113, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-113-insect-part-analysis" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 113, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 113, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 110, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-113-insect-part-analysis",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 110 } } },
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceActionID = "turnin-113-insect-part-analysis",
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceStep = 31,
            text = "Turn in Insect Part Analysis to Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { id = 5863, index = 3, text = "Gor'marok the Ravager" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-5863-the-dunemaul-compound" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-5863-3-gor-marok-the-ravager",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Gor'marok the Ravager", mapID = 1446, offMapText = "Travel to Gor'marok the Ravager.", x = 0.415, y = 0.5781 },
            },
            sourceStep = 32,
            text = "Kill Gor'marok the Ravager.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-5863-3-gor-marok-the-ravager",
        },
        {
            complete = { questObjective = { count = 10, id = 5863, index = 1, text = "Dunemaul Brute" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-5863-the-dunemaul-compound" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-5863-1-dunemaul-brute",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Dunemaul Brute", mapID = 1446, offMapText = "Travel to Dunemaul Brute.", x = 0.404, y = 0.56 } },
            sourceStep = 33,
            text = "Kill 10 Dunemaul Brute.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-5863-1-dunemaul-brute",
        },
        {
            complete = { questObjective = { count = 10, id = 5863, index = 2, text = "Dunemaul Enforcer" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-5863-the-dunemaul-compound" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-5863-2-dunemaul-enforcer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Dunemaul Enforcer", mapID = 1446, offMapText = "Travel to Dunemaul Enforcer.", x = 0.404, y = 0.56 },
            },
            sourceStep = 33,
            text = "Kill 10 Dunemaul Enforcer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-5863-2-dunemaul-enforcer",
        },
        {
            complete = { questObjective = { count = 30, id = 3161, index = 1, text = "Gahz'ridian Ornament" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-3161-gahz-ridian" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-3161-1-gahz-ridian-ornament",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Gahz'ridian Ornament", mapID = 1446, offMapText = "Travel to Gahz'ridian Ornament.", x = 0.403, y = 0.689 },
            },
            sourceStep = 34,
            text = "Collect 30 Gahz'ridian Ornament.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-3161-1-gahz-ridian-ornament",
        },
        {
            complete = { questObjective = { count = 1, id = 2605, index = 1, text = "Thistleshrub Dew Collector" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-2605-the-thirsty-goblin" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-2605-1-thistleshrub-dew-collector",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Thistleshrub Dew Collector",
                    mapID = 1446,
                    offMapText = "Travel to Thistleshrub Dew Collector.",
                    x = 0.298,
                    y = 0.668,
                },
            },
            sourceStep = 35,
            text = "Collect 1 Laden Dew Gland.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-2605-1-thistleshrub-dew-collector",
        },
        {
            complete = { questObjective = { count = 8, id = 3362, index = 1, text = "Gnarled Thistleshrub" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-3362-thistleshrub-valley" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-3362-1-gnarled-thistleshrub",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Gnarled Thistleshrub", mapID = 1446, offMapText = "Travel to Gnarled Thistleshrub.", x = 0.298, y = 0.668 },
            },
            sourceStep = 36,
            text = "Kill 8 Gnarled Thistleshrub.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-3362-1-gnarled-thistleshrub",
        },
        {
            complete = { questObjective = { count = 8, id = 3362, index = 2, text = "Thistleshrub Rootshaper" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-part-2-accept-3362-thistleshrub-valley" },
            id = "alliance-leveling-era-alliance-tanaris-part-2-objective-3362-2-thistleshrub-rootshaper",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Thistleshrub Rootshaper",
                    mapID = 1446,
                    offMapText = "Travel to Thistleshrub Rootshaper.",
                    x = 0.298,
                    y = 0.668,
                },
            },
            sourceStep = 36,
            text = "Kill 8 Thistleshrub Rootshaper.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "objective-3362-2-thistleshrub-rootshaper",
        },
        {
            complete = { quest = { id = 648, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = { "alliance-extra-648-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 648, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 351, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 648, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 351, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-648-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 351 } } },
            route = {
                {
                    label = "Oglethorpe Obnoticus",
                    mapID = 1434,
                    offMapText = "Travel to Oglethorpe Obnoticus in Stranglethorn Vale.",
                    x = 0.282,
                    y = 0.762,
                },
            },
            text = "Turn in Rescue OOX-17/TN! to Oglethorpe Obnoticus.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-alliance-ungoro-crater",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-ungoro-crater",
            text = "Reach level 49 before the Un'Goro Crater visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 49 } },
            requiredLevel = 49,
        },
        {
            complete = { quest = { id = 2605, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-objective-2605-quest-work",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Laden Dew Gland", mapID = 1446, offMapText = "Travel to Laden Dew Gland.", x = 0.298, y = 0.668 } },
            sourceStep = 25,
            text = "For The Thirsty Goblin: Collect a Laden Dew Gland and bring it to Marin Noggenfogger in Gadgetzan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceActionID = "objective-2605-quest-work",
        },
        {
            complete = { quest = { id = 2605, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ungoro-crater-objective-2605-quest-work",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-2605-1-thistleshrub-dew-collector",
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-turnin-2605-the-thirsty-goblin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Marin Noggenfogger",
                    mapID = 1446,
                    offMapText = "Travel to Marin Noggenfogger in Tanaris.",
                    x = 0.5181,
                    y = 0.2866,
                },
            },
            sourceActionID = "turnin-2605-the-thirsty-goblin",
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceStep = 25,
            text = "Turn in The Thirsty Goblin to Marin Noggenfogger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2606, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-accept-2606-in-good-taste",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2605 } } },
            route = {
                {
                    label = "Marin Noggenfogger",
                    mapID = 1446,
                    offMapText = "Travel to Marin Noggenfogger in Tanaris.",
                    x = 0.5181,
                    y = 0.2866,
                },
            },
            sourceStep = 25,
            text = "Accept In Good Taste from Marin Noggenfogger.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceActionID = "accept-2606-in-good-taste",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2606, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2606, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5863, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-objective-5863-quest-work",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Gor'marok the Ravager", mapID = 1446, offMapText = "Travel to Gor'marok the Ravager.", x = 0.415, y = 0.5781 },
            },
            sourceStep = 28,
            text = "For The Dunemaul Compound: Andi Lynn in Gadgetzan wants you to destroy the Dunemaul Compound by killing 10 Dunemaul Brutes, 10 Dunemaul Enforcers, and Gor'marok the Ravager.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceActionID = "objective-5863-quest-work",
        },
        {
            complete = { quest = { id = 5863, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ungoro-crater-objective-5863-quest-work",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-5863-3-gor-marok-the-ravager",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-5863-1-dunemaul-brute",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-5863-2-dunemaul-enforcer",
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-turnin-5863-the-dunemaul-compound",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Andi Lynn", mapID = 1446, offMapText = "Travel to Andi Lynn in Tanaris.", x = 0.5282, y = 0.274 } },
            sourceActionID = "turnin-5863-the-dunemaul-compound",
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceStep = 28,
            text = "Turn in The Dunemaul Compound to Andi Lynn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3362, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-objective-3362-quest-work",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Gnarled Thistleshrub", mapID = 1446, offMapText = "Travel to Gnarled Thistleshrub.", x = 0.298, y = 0.668 },
            },
            sourceStep = 29,
            text = "For Thistleshrub Valley: Tran'rek in Gadgetzan wants you to kill 8 Gnarled Thistleshrubs and 8 Thistleshrub Rootshapers.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceActionID = "objective-3362-quest-work",
        },
        {
            complete = { quest = { id = 3362, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ungoro-crater-objective-3362-quest-work",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-3362-1-gnarled-thistleshrub",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-3362-2-thistleshrub-rootshaper",
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-turnin-3362-thistleshrub-valley",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Tran'rek", mapID = 1446, offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157, y = 0.2676 } },
            sourceActionID = "turnin-3362-thistleshrub-valley",
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceStep = 29,
            text = "Turn in Thistleshrub Valley to Tran'rek.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2606, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ungoro-crater-accept-2606-in-good-taste" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2606, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2606, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-turnin-2606-in-good-taste",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2605 } } },
            route = { { label = "Sprinkle", mapID = 1446, offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106, y = 0.2687 } },
            sourceActionID = "turnin-2606-in-good-taste",
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceStep = 30,
            text = "Turn in In Good Taste to Sprinkle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2641, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-accept-2641-sprinkle-s-secret-ingredient",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2606 } } },
            route = { { label = "Sprinkle", mapID = 1446, offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106, y = 0.2687 } },
            sourceStep = 30,
            text = "Accept Sprinkle's Secret Ingredient from Sprinkle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceActionID = "accept-2641-sprinkle-s-secret-ingredient",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2641, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2641, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2606, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 162, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-accept-162-rise-of-the-silithid",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 113 } } },
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceStep = 31,
            text = "Accept Rise of the Silithid from Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceActionID = "accept-162-rise-of-the-silithid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 162, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 162, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3161, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-objective-3161-quest-work",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Gahz'ridian Ornament", mapID = 1446, offMapText = "Travel to Gahz'ridian Ornament.", x = 0.403, y = 0.689 },
            },
            sourceStep = 32,
            text = "For Gahz'ridian: Marvon Rivetseeker in Tanaris wants you to collect 30 Gahz'ridian Ornaments.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceActionID = "objective-3161-quest-work",
        },
        {
            complete = { quest = { id = 3161, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ungoro-crater-objective-3161-quest-work",
                "alliance-leveling-era-alliance-tanaris-part-2-objective-3161-1-gahz-ridian-ornament",
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-turnin-3161-gahz-ridian",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Marvon Rivetseeker",
                    mapID = 1446,
                    offMapText = "Travel to Marvon Rivetseeker in Tanaris.",
                    x = 0.5271,
                    y = 0.4593,
                },
            },
            sourceActionID = "turnin-3161-gahz-ridian",
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceStep = 32,
            text = "Turn in Gahz'ridian to Marvon Rivetseeker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3444, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 46 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-accept-3444-the-stone-circle",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3380, 3445 } } },
            route = {
                {
                    label = "Marvon Rivetseeker",
                    mapID = 1446,
                    offMapText = "Travel to Marvon Rivetseeker in Tanaris.",
                    x = 0.5271,
                    y = 0.4593,
                },
            },
            sourceStep = 32,
            text = "Accept The Stone Circle from Marvon Rivetseeker.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater",
            sourceActionID = "accept-3444-the-stone-circle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3444, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3444, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 3380, state = "completed" } },
                                                { any = { { quest = { id = 3445, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 3380 },
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
            checkpointQuest = 2874,
            complete = { level = { min = 40 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-4-level-before-turnin-2874-deliver-to-mackinley",
            kind = "note",
            requiredLevel = 40,
            requiredQuests = {},
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-4",
            sourceActionID = "level-before-turnin-2874-deliver-to-mackinley",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2874, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2874, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 2873, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2874, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2874, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2874, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 2873, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-4-turnin-2874-deliver-to-mackinley",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2873 } } },
            route = {
                {
                    label = "\"Sea Wolf\" MacKinley",
                    mapID = 1434,
                    offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.",
                    x = 0.2778,
                    y = 0.7707,
                },
            },
            sourceActionID = "turnin-2874-deliver-to-mackinley",
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-4",
            sourceStep = 2,
            text = "Turn in Deliver to MacKinley to \"Sea Wolf\" MacKinley.",
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
            complete = { questObjective = { count = 1, id = 2641, index = 1, text = "Violet Tragan" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2641-1-violet-tragan",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2606 } } },
            route = { { label = "Violet Tragan", mapID = 1425, offMapText = "Travel to Violet Tragan.", x = 0.4101, y = 0.5977 } },
            sourceStep = 49,
            text = "Collect 1 Violet Tragan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-2641-1-violet-tragan",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2641, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2641, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2606, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-azshara-and-felwood",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-azshara-and-felwood",
            text = "Reach level 52 before the Azshara & Felwood visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 52 } },
            requiredLevel = 52,
        },
        {
            complete = { quest = { id = 162, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 162, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 162, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-162-rise-of-the-silithid",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 113 } } },
            route = {
                {
                    label = "Gracina Spiritmight",
                    mapID = 1457,
                    offMapText = "Travel to Gracina Spiritmight in Darnassus.",
                    x = 0.4184,
                    y = 0.8562,
                },
            },
            sourceActionID = "turnin-162-rise-of-the-silithid",
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceStep = 8,
            text = "Turn in Rise of the Silithid to Gracina Spiritmight.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 4493, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-4493-march-of-the-silithid",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 162 } } },
            route = {
                {
                    label = "Gracina Spiritmight",
                    mapID = 1457,
                    offMapText = "Travel to Gracina Spiritmight in Darnassus.",
                    x = 0.4184,
                    y = 0.8562,
                },
            },
            sourceStep = 8,
            text = "Accept March of the Silithid from Gracina Spiritmight.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-4493-march-of-the-silithid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4493, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4493, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 162, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-feralas-and-azshara",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-feralas-and-azshara",
            text = "Reach level 52 before the Feralas & Azshara visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 52 } },
            requiredLevel = 52,
        },
        {
            complete = { questObjective = { count = 1, id = 3444, index = 1, text = "Marvon's Chest" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 46 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-3444-1-marvon-s-chest",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3380, 3445 } } },
            route = { { label = "Marvon's Chest", mapID = 1413, offMapText = "Travel to Marvon's Chest.", x = 0.625, y = 0.3854 } },
            sourceStep = 30,
            text = "Collect 1 Stone Circle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-3444-1-marvon-s-chest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3444, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3444, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 3380, state = "completed" } },
                                                { any = { { quest = { id = 3445, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 3380 },
        },
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
            checkpointQuest = 4504,
            complete = { level = { min = 48 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-level-before-accept-4504-super-sticky",
            kind = "note",
            requiredLevel = 48,
            requiredQuests = {},
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "level-before-accept-4504-super-sticky",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 4504, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-4504-super-sticky",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Tran'rek", mapID = 1446, offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157, y = 0.2676 } },
            sourceStep = 3,
            text = "Accept Super Sticky from Tran'rek.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "accept-4504-super-sticky",
        },
        {
            complete = { quest = { id = 2641, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-objective-2641-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2606 } } },
            route = { { label = "Violet Tragan", mapID = 1425, offMapText = "Travel to Violet Tragan.", x = 0.4101, y = 0.5977 } },
            sourceStep = 4,
            text = "For Sprinkle's Secret Ingredient: Sprinkle in Gadgetzan wants you to collect a Violet Tragan and return it to her.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "objective-2641-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2641, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2641, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2606, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2641, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ungoro-crater-part-2-objective-2641-quest-work",
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2641-1-violet-tragan",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2641, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2641, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2606, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-turnin-2641-sprinkle-s-secret-ingredient",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2606 } } },
            route = { { label = "Sprinkle", mapID = 1446, offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106, y = 0.2687 } },
            sourceActionID = "turnin-2641-sprinkle-s-secret-ingredient",
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceStep = 4,
            text = "Turn in Sprinkle's Secret Ingredient to Sprinkle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2661, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-2661-delivery-for-marin",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2641 } } },
            route = { { label = "Sprinkle", mapID = 1446, offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106, y = 0.2687 } },
            sourceStep = 5,
            text = "Accept Delivery for Marin from Sprinkle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "accept-2661-delivery-for-marin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2661, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2661, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2641, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2606, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 4493,
            complete = { level = { min = 50 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-level-before-turnin-4493-march-of-the-silithid",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "level-before-turnin-4493-march-of-the-silithid",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4493, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4493, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 162, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4493, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4493, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4493, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 162, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-turnin-4493-march-of-the-silithid",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 162 } } },
            route = {
                {
                    label = "Alchemist Pestlezugg",
                    mapID = 1446,
                    offMapText = "Travel to Alchemist Pestlezugg in Tanaris.",
                    x = 0.5089,
                    y = 0.2696,
                },
            },
            sourceActionID = "turnin-4493-march-of-the-silithid",
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceStep = 6,
            text = "Turn in March of the Silithid to Alchemist Pestlezugg.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 4496,
            complete = { level = { min = 50 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-level-before-accept-4496-bungle-in-the-jungle",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "level-before-accept-4496-bungle-in-the-jungle",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4496, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4496, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4493, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 162, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 4494, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 4494 },
        },
        {
            complete = { quest = { id = 4496, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-4496-bungle-in-the-jungle",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4493, 4494 } } },
            route = {
                {
                    label = "Alchemist Pestlezugg",
                    mapID = 1446,
                    offMapText = "Travel to Alchemist Pestlezugg in Tanaris.",
                    x = 0.5089,
                    y = 0.2696,
                },
            },
            sourceStep = 6,
            text = "Accept Bungle in the Jungle from Alchemist Pestlezugg.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "accept-4496-bungle-in-the-jungle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4496, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4496, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4493, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 162, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 4494, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 4494 },
        },
        {
            complete = { quest = { id = 2661, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-2661-delivery-for-marin" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2661, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2661, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2641, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2606, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-turnin-2661-delivery-for-marin",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2641 } } },
            route = {
                {
                    label = "Marin Noggenfogger",
                    mapID = 1446,
                    offMapText = "Travel to Marin Noggenfogger in Tanaris.",
                    x = 0.5181,
                    y = 0.2866,
                },
            },
            sourceActionID = "turnin-2661-delivery-for-marin",
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceStep = 7,
            text = "Turn in Delivery for Marin to Marin Noggenfogger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2662, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-2662-noggenfogger-elixir",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2661 } } },
            route = {
                {
                    label = "Marin Noggenfogger",
                    mapID = 1446,
                    offMapText = "Travel to Marin Noggenfogger in Tanaris.",
                    x = 0.5181,
                    y = 0.2866,
                },
            },
            sourceStep = 7,
            text = "Accept Noggenfogger Elixir from Marin Noggenfogger.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "accept-2662-noggenfogger-elixir",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2662, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2661, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2641, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2606, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2662, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-2662-noggenfogger-elixir" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2662, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2661, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2641, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2606, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-turnin-2662-noggenfogger-elixir",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2661 } } },
            route = {
                {
                    label = "Marin Noggenfogger",
                    mapID = 1446,
                    offMapText = "Travel to Marin Noggenfogger in Tanaris.",
                    x = 0.5181,
                    y = 0.2866,
                },
            },
            sourceActionID = "turnin-2662-noggenfogger-elixir",
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceStep = 8,
            text = "Turn in Noggenfogger Elixir to Marin Noggenfogger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3444, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 46 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-objective-3444-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3380, 3445 } } },
            route = { { label = "Stone Circle", mapID = 1413, offMapText = "Travel to Stone Circle.", x = 0.625, y = 0.3854 } },
            sourceStep = 9,
            text = "For The Stone Circle: Retrieve the Stone Circle from Marvon Rivetseeker's workshop in Ratchet.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "objective-3444-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3444, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3444, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 3380, state = "completed" } },
                                                { any = { { quest = { id = 3445, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 3380 },
        },
        {
            complete = { quest = { id = 3444, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 46 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ungoro-crater-part-2-objective-3444-quest-work",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-3444-1-marvon-s-chest",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3444, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3444, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 3380, state = "completed" } },
                                                { any = { { quest = { id = 3445, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-turnin-3444-the-stone-circle",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3380, 3445 } } },
            route = {
                {
                    label = "Marvon Rivetseeker",
                    mapID = 1446,
                    offMapText = "Travel to Marvon Rivetseeker in Tanaris.",
                    x = 0.5271,
                    y = 0.4592,
                },
            },
            sourceActionID = "turnin-3444-the-stone-circle",
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceStep = 9,
            text = "Turn in The Stone Circle to Marvon Rivetseeker.",
            unresolvedPrerequisites = { 3380 },
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 4496, index = 1, text = "Gorishi Scent Gland" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-4496-bungle-in-the-jungle" },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-objective-4496-1-gorishi-scent-gland",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4493, 4494 } } },
            route = {
                { label = "Gorishi Scent Gland", mapID = 1449, offMapText = "Travel to Gorishi Scent Gland.", x = 0.4995, y = 0.817 },
            },
            sourceStep = 29,
            text = "Collect 1 Gorishi Scent Gland.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "objective-4496-1-gorishi-scent-gland",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4496, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4496, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4493, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 162, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 4494, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 4494 },
        },
        {
            complete = { questObjective = { count = 5, id = 4496, index = 2, text = "Un'Goro Soil" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-4496-bungle-in-the-jungle" },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-objective-4496-2-un-goro-soil",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4493, 4494 } } },
            route = { { label = "Un'Goro Soil", mapID = 1449, offMapText = "Travel to Un'Goro Soil.", x = 0.348, y = 0.4 } },
            sourceStep = 38,
            text = "Collect 5 Un'Goro Soil.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "objective-4496-2-un-goro-soil",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4496, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4496, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4493, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 162, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 4494, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 4494 },
        },
        {
            complete = { questObjective = { count = 12, id = 4504, index = 1, text = "Super Sticky Tar" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-4504-super-sticky" },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-objective-4504-1-super-sticky-tar",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Super Sticky Tar", mapID = 1449, offMapText = "Travel to Super Sticky Tar.", x = 0.6, y = 0.332 } },
            sourceStep = 58,
            text = "Collect 12 Super Sticky Tar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "objective-4504-1-super-sticky-tar",
        },
        {
            complete = { quest = { id = 4496, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-4496-bungle-in-the-jungle",
                "alliance-leveling-era-alliance-ungoro-crater-part-2-objective-4496-1-gorishi-scent-gland",
                "alliance-leveling-era-alliance-ungoro-crater-part-2-objective-4496-2-un-goro-soil",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4496, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4496, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4493, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 162, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 4494, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-turnin-4496-bungle-in-the-jungle",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4493, 4494 } } },
            route = {
                {
                    label = "Alchemist Pestlezugg",
                    mapID = 1446,
                    offMapText = "Travel to Alchemist Pestlezugg in Tanaris.",
                    x = 0.5089,
                    y = 0.2696,
                },
            },
            sourceActionID = "turnin-4496-bungle-in-the-jungle",
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceStep = 60,
            text = "Turn in Bungle in the Jungle to Alchemist Pestlezugg.",
            unresolvedPrerequisites = { 4494 },
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 4504, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-4504-super-sticky",
                "alliance-leveling-era-alliance-ungoro-crater-part-2-objective-4504-1-super-sticky-tar",
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-turnin-4504-super-sticky",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Tran'rek", mapID = 1446, offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157, y = 0.2676 } },
            sourceActionID = "turnin-4504-super-sticky",
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceStep = 61,
            text = "Turn in Super Sticky to Tran'rek.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-horde-dustwallow-marsh",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-dustwallow-marsh",
            text = "Reach level 37 before the Dustwallow Marsh visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 37 } },
            requiredLevel = 37,
        },
        {
            checkpointQuest = 232,
            complete = { level = { min = 38 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-dustwallow-marsh-level-before-accept-232-errand-for-apothecary-zinge",
            kind = "note",
            requiredLevel = 38,
            requiredQuests = {},
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-dustwallow-marsh",
            sourceActionID = "level-before-accept-232-errand-for-apothecary-zinge",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 232, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-dustwallow-marsh-accept-232-errand-for-apothecary-zinge",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Apothecary Zinge",
                    mapID = 1458,
                    offMapText = "Travel to Apothecary Zinge in Undercity.",
                    x = 0.5013,
                    y = 0.6799,
                },
            },
            sourceStep = 62,
            text = "Accept Errand for Apothecary Zinge from Apothecary Zinge.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-dustwallow-marsh",
            sourceActionID = "accept-232-errand-for-apothecary-zinge",
        },
        {
            complete = { quest = { id = 232, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-dustwallow-marsh-accept-232-errand-for-apothecary-zinge" },
            id = "horde-leveling-era-horde-dustwallow-marsh-turnin-232-errand-for-apothecary-zinge",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Alessandro Luca",
                    mapID = 1458,
                    offMapText = "Travel to Alessandro Luca in Undercity.",
                    x = 0.5862,
                    y = 0.5467,
                },
            },
            sourceActionID = "turnin-232-errand-for-apothecary-zinge",
            sourceGuide = "leveling-era-horde-dustwallow-marsh",
            sourceStep = 63,
            text = "Turn in Errand for Apothecary Zinge to Alessandro Luca.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 238, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-dustwallow-marsh-accept-238-errand-for-apothecary-zinge",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 232 } } },
            route = {
                {
                    label = "Alessandro Luca",
                    mapID = 1458,
                    offMapText = "Travel to Alessandro Luca in Undercity.",
                    x = 0.5862,
                    y = 0.5467,
                },
            },
            sourceStep = 63,
            text = "Accept Errand for Apothecary Zinge from Alessandro Luca.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-dustwallow-marsh",
            sourceActionID = "accept-238-errand-for-apothecary-zinge",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 238, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 238, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 238, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-dustwallow-marsh-accept-238-errand-for-apothecary-zinge" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 238, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 238, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-dustwallow-marsh-turnin-238-errand-for-apothecary-zinge",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 232 } } },
            route = {
                {
                    label = "Apothecary Zinge",
                    mapID = 1458,
                    offMapText = "Travel to Apothecary Zinge in Undercity.",
                    x = 0.5013,
                    y = 0.6799,
                },
            },
            sourceActionID = "turnin-238-errand-for-apothecary-zinge",
            sourceGuide = "leveling-era-horde-dustwallow-marsh",
            sourceStep = 64,
            text = "Turn in Errand for Apothecary Zinge to Apothecary Zinge.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 243, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-dustwallow-marsh-accept-243-into-the-field",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 238 } } },
            route = {
                {
                    label = "Apothecary Zinge",
                    mapID = 1458,
                    offMapText = "Travel to Apothecary Zinge in Undercity.",
                    x = 0.5013,
                    y = 0.6799,
                },
            },
            sourceStep = 64,
            text = "Accept Into the Field from Apothecary Zinge.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-dustwallow-marsh",
            sourceActionID = "accept-243-into-the-field",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 243, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 243, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 238, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            checkpointQuest = 2872,
            complete = { level = { min = 40 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-level-before-accept-2872-stoley-s-debt",
            kind = "note",
            requiredLevel = 40,
            requiredQuests = {},
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "level-before-accept-2872-stoley-s-debt",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2872, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-2872-stoley-s-debt",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "\"Sea Wolf\" MacKinley",
                    mapID = 1434,
                    offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.",
                    x = 0.2778,
                    y = 0.7707,
                },
            },
            sourceStep = 54,
            text = "Accept Stoley's Debt from \"Sea Wolf\" MacKinley.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "accept-2872-stoley-s-debt",
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
            checkpointQuest = 1707,
            complete = { level = { min = 40 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-tanaris-level-before-accept-1707-water-pouch-bounty",
            kind = "note",
            requiredLevel = 40,
            requiredQuests = {},
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "level-before-accept-1707-water-pouch-bounty",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1707, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-accept-1707-water-pouch-bounty",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Spigot Operator Luglunket",
                    mapID = 1446,
                    offMapText = "Travel to Spigot Operator Luglunket in Tanaris.",
                    x = 0.5248,
                    y = 0.2844,
                },
            },
            sourceStep = 6,
            text = "Accept Water Pouch Bounty from Spigot Operator Luglunket.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "accept-1707-water-pouch-bounty",
        },
        {
            checkpointQuest = 243,
            complete = { level = { min = 38 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-tanaris-level-before-turnin-243-into-the-field",
            kind = "note",
            requiredLevel = 38,
            requiredQuests = {},
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "level-before-turnin-243-into-the-field",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 243, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 243, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 238, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 243, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 243, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 243, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 238, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-turnin-243-into-the-field",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 238 } } },
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceActionID = "turnin-243-into-the-field",
            sourceGuide = "leveling-era-horde-tanaris",
            sourceStep = 7,
            text = "Turn in Into the Field to Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 379, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-accept-379-slake-that-thirst",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 243 } } },
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceStep = 7,
            text = "Accept Slake That Thirst from Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "accept-379-slake-that-thirst",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 379, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 379, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 243, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1690, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-accept-1690-wastewander-justice",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceStep = 7,
            text = "Accept Wastewander Justice from Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "accept-1690-wastewander-justice",
        },
        {
            complete = { quest = { id = 2872, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-turnin-2872-stoley-s-debt",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Stoley", mapID = 1446, offMapText = "Travel to Stoley in Tanaris.", x = 0.6711, y = 0.2398 } },
            sourceActionID = "turnin-2872-stoley-s-debt",
            sourceGuide = "leveling-era-horde-tanaris",
            sourceStep = 13,
            text = "Turn in Stoley's Debt to Stoley.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 10, id = 1690, index = 1, text = "Wastewander Bandit" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-accept-1690-wastewander-justice" },
            id = "horde-leveling-era-horde-tanaris-objective-1690-1-wastewander-bandit",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Wastewander Bandit", mapID = 1446, offMapText = "Travel to Wastewander Bandit.", x = 0.628, y = 0.304 },
            },
            sourceStep = 15,
            text = "Kill 10 Wastewander Bandit.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "objective-1690-1-wastewander-bandit",
        },
        {
            complete = { questObjective = { count = 10, id = 1690, index = 2, text = "Wastewander Thief" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-accept-1690-wastewander-justice" },
            id = "horde-leveling-era-horde-tanaris-objective-1690-2-wastewander-thief",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Wastewander Thief", mapID = 1446, offMapText = "Travel to Wastewander Thief.", x = 0.628, y = 0.304 },
            },
            sourceStep = 15,
            text = "Kill 10 Wastewander Thief.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "objective-1690-2-wastewander-thief",
        },
        {
            complete = { quest = { id = 379, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-accept-379-slake-that-thirst" },
            id = "horde-leveling-era-horde-tanaris-objective-379-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 243 } } },
            sourceStep = 17,
            text = "For Slake That Thirst: Bring 5 Wastewander Water Pouches to Chief Engineer Bilgewhizzle in Gadgetzan.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "objective-379-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 379, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 379, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 243, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 379, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-accept-379-slake-that-thirst",
                "horde-leveling-era-horde-tanaris-objective-379-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 379, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 379, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 243, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-turnin-379-slake-that-thirst",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 243 } } },
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceActionID = "turnin-379-slake-that-thirst",
            sourceGuide = "leveling-era-horde-tanaris",
            sourceStep = 17,
            text = "Turn in Slake That Thirst to Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1690, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-accept-1690-wastewander-justice",
                "horde-leveling-era-horde-tanaris-objective-1690-1-wastewander-bandit",
                "horde-leveling-era-horde-tanaris-objective-1690-2-wastewander-thief",
            },
            id = "horde-leveling-era-horde-tanaris-turnin-1690-wastewander-justice",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceActionID = "turnin-1690-wastewander-justice",
            sourceGuide = "leveling-era-horde-tanaris",
            sourceStep = 17,
            text = "Turn in Wastewander Justice to Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1707, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-accept-1707-water-pouch-bounty" },
            id = "horde-leveling-era-horde-tanaris-objective-1707-quest-work",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Wastewander Water Pouch",
                    mapID = 1446,
                    offMapText = "Travel to Wastewander Water Pouch.",
                    x = 0.628,
                    y = 0.304,
                },
            },
            sourceStep = 18,
            text = "For Water Pouch Bounty: Bring 5 Wastewander Water Pouches to Spigot Operator Luglunket in Gadgetzan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "objective-1707-quest-work",
        },
        {
            complete = { quest = { id = 1707, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-accept-1707-water-pouch-bounty",
                "horde-leveling-era-horde-tanaris-objective-1707-quest-work",
            },
            id = "horde-leveling-era-horde-tanaris-turnin-1707-water-pouch-bounty",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Spigot Operator Luglunket",
                    mapID = 1446,
                    offMapText = "Travel to Spigot Operator Luglunket in Tanaris.",
                    x = 0.5248,
                    y = 0.2844,
                },
            },
            sourceActionID = "turnin-1707-water-pouch-bounty",
            sourceGuide = "leveling-era-horde-tanaris",
            sourceStep = 18,
            text = "Turn in Water Pouch Bounty to Spigot Operator Luglunket.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-horde-tanaris-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-tanaris-part-2",
            text = "Reach level 42 before the Tanaris visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 42 } },
            requiredLevel = 42,
        },
        {
            checkpointQuest = 992,
            complete = { level = { min = 38 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-tanaris-part-2-level-before-accept-992-gadgetzan-water-survey",
            kind = "note",
            requiredLevel = 38,
            requiredQuests = {},
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-part-2",
            sourceActionID = "level-before-accept-992-gadgetzan-water-survey",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 992, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-part-2-accept-992-gadgetzan-water-survey",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceStep = 3,
            text = "Accept Gadgetzan Water Survey from Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-part-2",
            sourceActionID = "accept-992-gadgetzan-water-survey",
        },
        {
            complete = {
                any = {
                    { item = { minCount = 1, name = "Model 4711-FTZ Power Source" } },
                    { quest = { id = 654, state = "activeOrCompleted" } },
                },
            },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Model 4711-FTZ Power Source" } },
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 379, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 654, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Model 4711-FTZ Power Source", minCount = 1 } },
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 379, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-part-2-loot-starter-before-accept-654-tanaris-field-sampling",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 654,
            requiredQuests = {},
            text = "Loot Model 4711-FTZ Power Source from Model 4711-FTZ Power Source. Keep it for the next pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-part-2",
            sourceActionID = "loot-starter-before-accept-654-tanaris-field-sampling",
        },
        {
            checkpointQuest = 654,
            complete = { level = { min = 38 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Model 4711-FTZ Power Source" } },
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 379, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 654, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Model 4711-FTZ Power Source", minCount = 1 } },
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 379, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-part-2-level-before-accept-654-tanaris-field-sampling",
            kind = "note",
            requiredLevel = 38,
            requiredQuests = {},
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-part-2",
            sourceActionID = "level-before-accept-654-tanaris-field-sampling",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 654, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Model 4711-FTZ Power Source" } },
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 379, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 654, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Model 4711-FTZ Power Source", minCount = 1 } },
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 379, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-part-2-accept-654-tanaris-field-sampling",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 379 } } },
            sourceStep = 5,
            text = "Use the Model 4711-FTZ Power Source to accept Tanaris Field Sampling.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-part-2",
            sourceActionID = "accept-654-tanaris-field-sampling",
        },
        {
            complete = { questObjective = { count = 1, id = 992, index = 1, text = "Untapped Dowsing Widget" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-part-2-accept-992-gadgetzan-water-survey" },
            id = "horde-leveling-era-horde-tanaris-part-2-objective-992-1-untapped-dowsing-widget",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Untapped Dowsing Widget",
                    mapID = 1446,
                    offMapText = "Travel to Untapped Dowsing Widget.",
                    x = 0.3909,
                    y = 0.2917,
                },
            },
            sourceStep = 6,
            text = "Use the Untapped Dowsing Widget at the Tanaris insect mound to obtain the Tapped Dowsing Widget. Expect an attack and avoid nearby elite insects.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-part-2",
            sourceActionID = "objective-992-1-untapped-dowsing-widget",
        },
        {
            complete = { questObjective = { count = 8, id = 654, index = 3 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-part-2-accept-654-tanaris-field-sampling" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Model 4711-FTZ Power Source" } },
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 379, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 654, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Model 4711-FTZ Power Source", minCount = 1 } },
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 379, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-part-2-objective-654-3-acceptable-scorpid-sample",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 379 } } },
            route = { { label = "Scorpid Hunters", mapID = 1446, offMapText = "Travel to Scorpid Hunters.", x = 0.532, y = 0.312 } },
            sourceStep = 7,
            text = "Kill Scorpid Hunters and loot Untested Scorpid Samples. Use each sample to test it until you have 8 Acceptable Scorpid Samples.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-part-2",
            sourceActionID = "objective-654-3-acceptable-scorpid-sample",
        },
        {
            complete = { questObjective = { count = 8, id = 654, index = 2 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-part-2-accept-654-tanaris-field-sampling" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Model 4711-FTZ Power Source" } },
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 379, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 654, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Model 4711-FTZ Power Source", minCount = 1 } },
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 379, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-part-2-objective-654-2-acceptable-hyena-sample",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 379 } } },
            route = {
                { label = "Starving Blisterpaws", mapID = 1446, offMapText = "Travel to Starving Blisterpaws.", x = 0.502, y = 0.316 },
            },
            sourceStep = 8,
            text = "Kill Starving Blisterpaws and loot Untested Hyena Samples. Use each sample to test it until you have 8 Acceptable Hyena Samples.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-part-2",
            sourceActionID = "objective-654-2-acceptable-hyena-sample",
        },
        {
            complete = { questObjective = { count = 8, id = 654, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-part-2-accept-654-tanaris-field-sampling" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Model 4711-FTZ Power Source" } },
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 379, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 654, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Model 4711-FTZ Power Source", minCount = 1 } },
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 379, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-part-2-objective-654-1-acceptable-basilisk-sample",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 379 } } },
            route = {
                { label = "Glasshide Basilisks", mapID = 1446, offMapText = "Travel to Glasshide Basilisks.", x = 0.494, y = 0.31 },
            },
            sourceStep = 9,
            text = "Kill Glasshide Basilisks and loot Untested Basilisk Samples. Use each sample to test it until you have 8 Acceptable Basilisk Samples.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-part-2",
            sourceActionID = "objective-654-1-acceptable-basilisk-sample",
        },
        {
            complete = { quest = { id = 654, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-part-2-accept-654-tanaris-field-sampling",
                "horde-leveling-era-horde-tanaris-part-2-objective-654-3-acceptable-scorpid-sample",
                "horde-leveling-era-horde-tanaris-part-2-objective-654-2-acceptable-hyena-sample",
                "horde-leveling-era-horde-tanaris-part-2-objective-654-1-acceptable-basilisk-sample",
            },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Model 4711-FTZ Power Source" } },
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 379, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 654, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 654, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { minCount = 1, name = "Model 4711-FTZ Power Source" } },
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 379, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 243, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 238, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = { { any = { { quest = { id = 232, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-part-2-turnin-654-tanaris-field-sampling",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 379 } } },
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceActionID = "turnin-654-tanaris-field-sampling",
            sourceGuide = "leveling-era-horde-tanaris-part-2",
            sourceStep = 10,
            text = "Turn in Tanaris Field Sampling to Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 992, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-part-2-accept-992-gadgetzan-water-survey",
                "horde-leveling-era-horde-tanaris-part-2-objective-992-1-untapped-dowsing-widget",
            },
            id = "horde-leveling-era-horde-tanaris-part-2-turnin-992-gadgetzan-water-survey",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceActionID = "turnin-992-gadgetzan-water-survey",
            sourceGuide = "leveling-era-horde-tanaris-part-2",
            sourceStep = 12,
            text = "Turn in Gadgetzan Water Survey to Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-horde-feralas",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-feralas",
            text = "Reach level 43 before the Feralas visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 43 } },
            requiredLevel = 43,
        },
        {
            checkpointQuest = 2862,
            complete = { level = { min = 39 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-feralas-level-before-accept-2862-war-on-the-woodpaw",
            kind = "note",
            requiredLevel = 39,
            requiredQuests = {},
            text = "Reach level 39 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "level-before-accept-2862-war-on-the-woodpaw",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2862, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2862-war-on-the-woodpaw",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 4,
            text = "Accept War on the Woodpaw from Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2862-war-on-the-woodpaw",
        },
        {
            complete = { questObjective = { count = 10, id = 2862, index = 1, text = "Woodpaw Mongrel" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2862-war-on-the-woodpaw" },
            id = "horde-leveling-era-horde-feralas-objective-2862-1-woodpaw-mongrel",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Woodpaw Mongrel", mapID = 1444, offMapText = "Travel to Woodpaw Mongrel.", x = 0.73, y = 0.398 } },
            sourceStep = 7,
            text = "Collect 10 Woodpaw Gnoll Mane.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2862-1-woodpaw-mongrel",
        },
        {
            complete = { quest = { id = 2862, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-2862-war-on-the-woodpaw",
                "horde-leveling-era-horde-feralas-objective-2862-1-woodpaw-mongrel",
            },
            id = "horde-leveling-era-horde-feralas-turnin-2862-war-on-the-woodpaw",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceActionID = "turnin-2862-war-on-the-woodpaw",
            sourceGuide = "leveling-era-horde-feralas",
            sourceStep = 11,
            text = "Turn in War on the Woodpaw to Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2863, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2863-alpha-strike",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2862 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 11,
            text = "Accept Alpha Strike from Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2863-alpha-strike",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2863, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 2863, index = 1, text = "Woodpaw Alpha" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2863-alpha-strike" },
            id = "horde-leveling-era-horde-feralas-objective-2863-1-woodpaw-alpha",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2862 } } },
            route = { { label = "Woodpaw Alpha", mapID = 1444, offMapText = "Travel to Woodpaw Alpha.", x = 0.686, y = 0.542 } },
            sourceStep = 16,
            text = "Kill 5 Woodpaw Alpha.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2863-1-woodpaw-alpha",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2863, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2863, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-2863-alpha-strike",
                "horde-leveling-era-horde-feralas-objective-2863-1-woodpaw-alpha",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2863, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-turnin-2863-alpha-strike",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2862 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4246,
                },
            },
            sourceActionID = "turnin-2863-alpha-strike",
            sourceGuide = "leveling-era-horde-feralas",
            sourceStep = 17,
            text = "Turn in Alpha Strike to Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2902, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2902-woodpaw-investigation",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2863 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4246,
                },
            },
            sourceStep = 17,
            text = "Accept Woodpaw Investigation from Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2902-woodpaw-investigation",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2902, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2902, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2902-woodpaw-investigation" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2902, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-turnin-2902-woodpaw-investigation",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2863 } } },
            route = {
                {
                    label = "Woodpaw Investigation",
                    mapID = 1444,
                    offMapText = "Travel to Woodpaw Investigation.",
                    x = 0.7163,
                    y = 0.5592,
                },
            },
            sourceActionID = "turnin-2902-woodpaw-investigation",
            sourceGuide = "leveling-era-horde-feralas",
            sourceStep = 20,
            text = "Turn in Woodpaw Investigation.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2903, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2903-the-battle-plans",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2902 } } },
            route = {
                { label = "The Battle Plans", mapID = 1444, offMapText = "Travel to The Battle Plans.", x = 0.7163, y = 0.5592 },
            },
            sourceStep = 20,
            text = "Accept The Battle Plans.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2903-the-battle-plans",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2903, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2903, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2903-the-battle-plans" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2903, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-turnin-2903-the-battle-plans",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2902 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceActionID = "turnin-2903-the-battle-plans",
            sourceGuide = "leveling-era-horde-feralas",
            sourceStep = 22,
            text = "Turn in The Battle Plans to Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7730, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-7730-zukk-ash-infestation",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2903 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 22,
            text = "Accept Zukk'ash Infestation from Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-7730-zukk-ash-infestation",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7730, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7730, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 7731, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-7731-stinglasher",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2903 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 22,
            text = "Accept Stinglasher from Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-7731-stinglasher",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7731, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7731, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 7731, index = 1, text = "Stinglasher" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-7731-stinglasher" },
            id = "horde-leveling-era-horde-feralas-objective-7731-1-stinglasher",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2903 } } },
            route = { { label = "Stinglasher", mapID = 1444, offMapText = "Travel to Stinglasher.", x = 0.756, y = 0.616 } },
            sourceStep = 28,
            text = "Collect 1 Stinglasher's Glands.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-7731-1-stinglasher",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7731, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7731, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 20, id = 7730, index = 1, text = "Zukk'ash Carapace" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-7730-zukk-ash-infestation" },
            id = "horde-leveling-era-horde-feralas-objective-7730-1-zukk-ash-carapace",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2903 } } },
            route = {
                { label = "Zukk'ash Carapace", mapID = 1444, offMapText = "Travel to Zukk'ash Carapace.", x = 0.754, y = 0.612 },
            },
            sourceStep = 29,
            text = "Collect 20 Zukk'ash Carapace.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-7730-1-zukk-ash-carapace",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7730, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7730, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 7730, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-7730-zukk-ash-infestation",
                "horde-leveling-era-horde-feralas-objective-7730-1-zukk-ash-carapace",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7730, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7730, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-turnin-7730-zukk-ash-infestation",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2903 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceActionID = "turnin-7730-zukk-ash-infestation",
            sourceGuide = "leveling-era-horde-feralas",
            sourceStep = 44,
            text = "Turn in Zukk'ash Infestation to Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7731, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-7731-stinglasher",
                "horde-leveling-era-horde-feralas-objective-7731-1-stinglasher",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7731, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7731, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-turnin-7731-stinglasher",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2903 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceActionID = "turnin-7731-stinglasher",
            sourceGuide = "leveling-era-horde-feralas",
            sourceStep = 44,
            text = "Turn in Stinglasher to Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7732, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-7732-zukk-ash-report",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 7730, 7731 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 44,
            text = "Accept Zukk'ash Report from Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-7732-zukk-ash-report",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7732, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7732, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 7730, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
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
                                                        { quest = { id = 7731, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 7732, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-7732-zukk-ash-report" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7732, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7732, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 7730, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
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
                                                        { quest = { id = 7731, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-turnin-7732-zukk-ash-report",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 7730, 7731 } } },
            route = {
                {
                    label = "Zilzibin Drumlore",
                    mapID = 1454,
                    offMapText = "Travel to Zilzibin Drumlore in Orgrimmar.",
                    x = 0.5628,
                    y = 0.4667,
                },
            },
            sourceActionID = "turnin-7732-zukk-ash-report",
            sourceGuide = "leveling-era-horde-feralas",
            sourceStep = 62,
            text = "Turn in Zukk'ash Report to Zilzibin Drumlore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            checkpointQuest = 3362,
            complete = { level = { min = 45 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-level-before-accept-3362-thistleshrub-valley",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "level-before-accept-3362-thistleshrub-valley",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3362, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-3362-thistleshrub-valley",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Tran'rek", mapID = 1446, offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157, y = 0.2676 } },
            sourceStep = 6,
            text = "Accept Thistleshrub Valley from Tran'rek.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-3362-thistleshrub-valley",
        },
        {
            complete = { quest = { id = 992, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-992-gadgetzan-water-survey",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceStep = 8,
            text = "Accept Gadgetzan Water Survey from Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-992-gadgetzan-water-survey",
        },
        {
            complete = { questObjective = { count = 1, id = 992, index = 1, text = "Untapped Dowsing Widget" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-992-gadgetzan-water-survey" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-992-1-untapped-dowsing-widget",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Untapped Dowsing Widget",
                    mapID = 1446,
                    offMapText = "Travel to Untapped Dowsing Widget.",
                    x = 0.3909,
                    y = 0.2917,
                },
            },
            sourceStep = 9,
            text = "Use the Untapped Dowsing Widget at the Tanaris insect mound to obtain the Tapped Dowsing Widget. Expect an attack and avoid nearby elite insects.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-992-1-untapped-dowsing-widget",
        },
        {
            complete = { quest = { id = 992, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-992-gadgetzan-water-survey",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-992-1-untapped-dowsing-widget",
                "horde-leveling-era-horde-tanaris-part-2-objective-992-1-untapped-dowsing-widget",
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-992-gadgetzan-water-survey",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceActionID = "turnin-992-gadgetzan-water-survey",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 10,
            text = "Turn in Gadgetzan Water Survey to Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 82, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-82-noxious-lair-investigation",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 992 } } },
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceStep = 11,
            text = "Accept Noxious Lair Investigation from Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-82-noxious-lair-investigation",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 82, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 82, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2781, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2781-wanted-caliph-scorpidsting",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "WANTED: Caliph Scorpidsting",
                    mapID = 1446,
                    offMapText = "Travel to WANTED: Caliph Scorpidsting.",
                    x = 0.5184,
                    y = 0.2702,
                },
            },
            sourceStep = 12,
            text = "Accept WANTED: Caliph Scorpidsting.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-2781-wanted-caliph-scorpidsting",
        },
        {
            complete = { quest = { id = 2875, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2875-wanted-andre-firebeard",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "WANTED: Andre Firebeard",
                    mapID = 1446,
                    offMapText = "Travel to WANTED: Andre Firebeard.",
                    x = 0.5184,
                    y = 0.2702,
                },
            },
            sourceStep = 12,
            text = "Accept WANTED: Andre Firebeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-2875-wanted-andre-firebeard",
        },
        {
            complete = { quest = { id = 5863, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-5863-the-dunemaul-compound",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Andi Lynn", mapID = 1446, offMapText = "Travel to Andi Lynn in Tanaris.", x = 0.5282, y = 0.274 } },
            sourceStep = 16,
            text = "Accept The Dunemaul Compound from Andi Lynn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-5863-the-dunemaul-compound",
        },
        {
            complete = { quest = { id = 1691, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-1691-more-wastewander-justice",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1690 } } },
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceStep = 17,
            text = "Accept More Wastewander Justice from Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-1691-more-wastewander-justice",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1691, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1691, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1690, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2605, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2605-the-thirsty-goblin",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Marin Noggenfogger",
                    mapID = 1446,
                    offMapText = "Travel to Marin Noggenfogger in Tanaris.",
                    x = 0.5181,
                    y = 0.2866,
                },
            },
            sourceStep = 19,
            text = "Accept The Thirsty Goblin from Marin Noggenfogger.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-2605-the-thirsty-goblin",
        },
        {
            complete = { quest = { id = 8365, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-8365-pirate-hats-ahoy",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Haughty Modiste", mapID = 1446, offMapText = "Travel to Haughty Modiste in Tanaris.", x = 0.6656, y = 0.2227 },
            },
            sourceStep = 20,
            text = "Accept Pirate Hats Ahoy! from Haughty Modiste.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-8365-pirate-hats-ahoy",
        },
        {
            complete = { quest = { id = 8366, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-8366-southsea-shakedown",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Security Chief Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris.",
                    x = 0.6706,
                    y = 0.2389,
                },
            },
            sourceStep = 23,
            text = "Accept Southsea Shakedown from Security Chief Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-8366-southsea-shakedown",
        },
        {
            complete = { quest = { id = 2873, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2873-stoley-s-shipment",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Stoley", mapID = 1446, offMapText = "Travel to Stoley in Tanaris.", x = 0.6711, y = 0.2398 } },
            sourceStep = 24,
            text = "Accept Stoley's Shipment from Stoley.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-2873-stoley-s-shipment",
        },
        {
            complete = { questObjective = { count = 1, id = 2781, index = 1, text = "Caliph Scorpidsting" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2781-wanted-caliph-scorpidsting" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-2781-1-caliph-scorpidsting",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 25,
            text = "Collect 1 Caliph Scorpidsting's Head.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-2781-1-caliph-scorpidsting",
        },
        {
            complete = { questObjective = { count = 6, id = 1691, index = 2, text = "Wastewander Assassin" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-1691-more-wastewander-justice" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-1691-2-wastewander-assassin",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1690 } } },
            route = {
                { label = "Wastewander Assassin", mapID = 1446, offMapText = "Travel to Wastewander Assassin.", x = 0.608, y = 0.366 },
            },
            sourceStep = 26,
            text = "Kill 6 Wastewander Assassin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-1691-2-wastewander-assassin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1691, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1691, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1690, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 8, id = 1691, index = 1, text = "Wastewander Rogue" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-1691-more-wastewander-justice" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-1691-1-wastewander-rogue",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1690 } } },
            route = {
                { label = "Wastewander Rogue", mapID = 1446, offMapText = "Travel to Wastewander Rogue.", x = 0.608, y = 0.366 },
            },
            sourceStep = 26,
            text = "Kill 8 Wastewander Rogue.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-1691-1-wastewander-rogue",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1691, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1691, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1690, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1691, index = 3, text = "Wastewander Shadow Mage" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-1691-more-wastewander-justice" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-1691-3-wastewander-shadow-mage",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1690 } } },
            route = {
                {
                    label = "Wastewander Shadow Mage",
                    mapID = 1446,
                    offMapText = "Travel to Wastewander Shadow Mage.",
                    x = 0.608,
                    y = 0.366,
                },
            },
            sourceStep = 26,
            text = "Kill 10 Wastewander Shadow Mage.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-1691-3-wastewander-shadow-mage",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1691, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1691, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1690, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 2873, index = 1, text = "Stoley's Shipment" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2873-stoley-s-shipment" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-2873-1-stoley-s-shipment",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Stoley's Shipment", mapID = 1446, offMapText = "Travel to Stoley's Shipment.", x = 0.7219, y = 0.4677 },
            },
            sourceStep = 27,
            text = "Collect 1 Stoley's Shipment.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-2873-1-stoley-s-shipment",
        },
        {
            complete = { questObjective = { count = 1, id = 2875, index = 1, text = "Andre Firebeard" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2875-wanted-andre-firebeard" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-2875-1-andre-firebeard",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Andre Firebeard", mapID = 1446, offMapText = "Travel to Andre Firebeard.", x = 0.7337, y = 0.4714 },
            },
            sourceStep = 28,
            text = "Collect 1 Firebeard's Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-2875-1-andre-firebeard",
        },
        {
            complete = { quest = { id = 2876, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2876, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Ship Schedule" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-2876-1-southsea-pirate",
            kind = "note",
            requiredQuests = {},
            route = { { label = "Southsea Pirate", mapID = 1446, offMapText = "Travel to Southsea Pirate.", x = 0.738, y = 0.466 } },
            text = "Kill Southsea Pirate. Loot the starter item here, then use it to accept the quest.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-2876-1-southsea-pirate",
        },
        {
            complete = {
                any = { { item = { minCount = 1, name = "Ship Schedule" } }, { quest = { id = 2876, state = "activeOrCompleted" } } },
            },
            conditions = { faction = "Horde" },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2876, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Ship Schedule" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-loot-starter-before-accept-2876-ship-schedules",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 2876,
            requiredQuests = {},
            text = "Loot Ship Schedule from Ship Schedule. Keep it for the next pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "loot-starter-before-accept-2876-ship-schedules",
        },
        {
            complete = { quest = { id = 2876, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2876, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Ship Schedule" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2876-ship-schedules",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 29,
            text = "Use the Ship Schedule to accept Ship Schedules.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-2876-ship-schedules",
        },
        {
            complete = {
                any = {
                    { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } },
                    { quest = { id = 351, state = "activeOrCompleted" } },
                },
            },
            conditions = { faction = "Horde" },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 351, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-loot-starter-before-accept-351-find-oox-17-tn",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 351,
            requiredQuests = {},
            text = "Loot OOX-17/TN Distress Beacon from Glasshide Basilisk, Scorpid Hunter, Starving Blisterpaw, Fire Roc, Divined Scroll, Dunemaul Enforcer, Dunemaul Brute, Thistleshrub Dew Collector, Thistleshrub Rootshaper, Gnarled Thistleshrub, Wastewander Rogue, Wastewander Thief, Wastewander Shadow Mage, Wastewander Bandit, Wastewander Assassin, Sandfury Shadowhunter, Scarab, Theka the Martyr, Zul'Farrak Zombie, Sergeant Bly, Hydromancer Velratha, Caliph Scorpidsting, Southsea Pirate, Southsea Freebooter, Southsea Dock Worker, Southsea Swashbuckler, Andre Firebeard, Big Voodoo Robe, Tough Scorpid Breastplate, Gor'marok the Ravager. Keep it for the next pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "loot-starter-before-accept-351-find-oox-17-tn",
        },
        {
            complete = { quest = { id = 351, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 351, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-351-find-oox-17-tn",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 30,
            text = "Use the OOX-17/TN Distress Beacon to accept Find OOX-17/TN!.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-351-find-oox-17-tn",
        },
        {
            complete = { questObjective = { count = 20, id = 8365, index = 1, text = "Southsea Pirate Hat" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-8365-pirate-hats-ahoy" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-8365-1-southsea-pirate-hat",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Southsea Pirate Hat", mapID = 1446, offMapText = "Travel to Southsea Pirate Hat.", x = 0.738, y = 0.466 },
            },
            sourceStep = 31,
            text = "Collect 20 Southsea Pirate Hat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-8365-1-southsea-pirate-hat",
        },
        {
            complete = { questObjective = { count = 10, id = 8366, index = 1, text = "Southsea Pirate" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-8366-southsea-shakedown" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-8366-1-southsea-pirate",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Southsea Pirate", mapID = 1446, offMapText = "Travel to Southsea Pirate.", x = 0.738, y = 0.466 } },
            sourceStep = 32,
            text = "Kill 10 Southsea Pirate.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-8366-1-southsea-pirate",
        },
        {
            complete = { questObjective = { count = 10, id = 8366, index = 2, text = "Southsea Freebooter" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-8366-southsea-shakedown" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-8366-2-southsea-freebooter",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Southsea Freebooter", mapID = 1446, offMapText = "Travel to Southsea Freebooter.", x = 0.738, y = 0.466 },
            },
            sourceStep = 32,
            text = "Kill 10 Southsea Freebooter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-8366-2-southsea-freebooter",
        },
        {
            complete = { questObjective = { count = 10, id = 8366, index = 3, text = "Southsea Dock Worker" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-8366-southsea-shakedown" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-8366-3-southsea-dock-worker",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Southsea Dock Worker", mapID = 1446, offMapText = "Travel to Southsea Dock Worker.", x = 0.73, y = 0.478 },
            },
            sourceStep = 33,
            text = "Kill 10 Southsea Dock Worker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-8366-3-southsea-dock-worker",
        },
        {
            complete = { questObjective = { count = 10, id = 8366, index = 4, text = "Southsea Swashbuckler" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-8366-southsea-shakedown" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-8366-4-southsea-swashbuckler",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Southsea Swashbuckler", mapID = 1446, offMapText = "Travel to Southsea Swashbuckler.", x = 0.744, y = 0.452 },
            },
            sourceStep = 34,
            text = "Kill 10 Southsea Swashbuckler.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-8366-4-southsea-swashbuckler",
        },
        {
            complete = { quest = { id = 2875, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2875-wanted-andre-firebeard",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-2875-1-andre-firebeard",
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-2875-wanted-andre-firebeard",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Security Chief Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris.",
                    x = 0.6706,
                    y = 0.2389,
                },
            },
            sourceActionID = "turnin-2875-wanted-andre-firebeard",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 37,
            text = "Turn in WANTED: Andre Firebeard to Security Chief Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8366, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-8366-southsea-shakedown",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-8366-1-southsea-pirate",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-8366-2-southsea-freebooter",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-8366-3-southsea-dock-worker",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-8366-4-southsea-swashbuckler",
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-8366-southsea-shakedown",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Security Chief Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris.",
                    x = 0.6706,
                    y = 0.2389,
                },
            },
            sourceActionID = "turnin-8366-southsea-shakedown",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 37,
            text = "Turn in Southsea Shakedown to Security Chief Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2876, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2876-ship-schedules" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2876, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Ship Schedule" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-2876-ship-schedules",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Security Chief Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris.",
                    x = 0.6706,
                    y = 0.2389,
                },
            },
            sourceActionID = "turnin-2876-ship-schedules",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 37,
            text = "Turn in Ship Schedules to Security Chief Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2873, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2873-stoley-s-shipment",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-2873-1-stoley-s-shipment",
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-2873-stoley-s-shipment",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Stoley", mapID = 1446, offMapText = "Travel to Stoley in Tanaris.", x = 0.6711, y = 0.2397 } },
            sourceActionID = "turnin-2873-stoley-s-shipment",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 38,
            text = "Turn in Stoley's Shipment to Stoley.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2874, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2874-deliver-to-mackinley",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2873 } } },
            route = { { label = "Stoley", mapID = 1446, offMapText = "Travel to Stoley in Tanaris.", x = 0.6711, y = 0.2397 } },
            sourceStep = 38,
            text = "Accept Deliver to MacKinley from Stoley.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-2874-deliver-to-mackinley",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2874, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2874, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 2873, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8365, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-8365-pirate-hats-ahoy",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-8365-1-southsea-pirate-hat",
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-8365-pirate-hats-ahoy",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Haughty Modiste", mapID = 1446, offMapText = "Travel to Haughty Modiste in Tanaris.", x = 0.6656, y = 0.2227 },
            },
            sourceActionID = "turnin-8365-pirate-hats-ahoy",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 39,
            text = "Turn in Pirate Hats Ahoy! to Haughty Modiste.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2781, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2781-wanted-caliph-scorpidsting",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-2781-1-caliph-scorpidsting",
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-2781-wanted-caliph-scorpidsting",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceActionID = "turnin-2781-wanted-caliph-scorpidsting",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 40,
            text = "Turn in WANTED: Caliph Scorpidsting to Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1691, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-1691-more-wastewander-justice",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-1691-2-wastewander-assassin",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-1691-1-wastewander-rogue",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-1691-3-wastewander-shadow-mage",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1691, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1691, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1690, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-1691-more-wastewander-justice",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1690 } } },
            route = {
                {
                    label = "Chief Engineer Bilgewhizzle",
                    mapID = 1446,
                    offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.",
                    x = 0.5246,
                    y = 0.2851,
                },
            },
            sourceActionID = "turnin-1691-more-wastewander-justice",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 40,
            text = "Turn in More Wastewander Justice to Chief Engineer Bilgewhizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3161, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-3161-gahz-ridian",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Marvon Rivetseeker",
                    mapID = 1446,
                    offMapText = "Travel to Marvon Rivetseeker in Tanaris.",
                    x = 0.5271,
                    y = 0.4593,
                },
            },
            sourceStep = 42,
            text = "Accept Gahz'ridian from Marvon Rivetseeker.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-3161-gahz-ridian",
        },
        {
            complete = { questObjective = { count = 5, id = 82, index = 1, text = "Centipaar Wasp" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-82-noxious-lair-investigation" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-82-1-centipaar-wasp",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 992 } } },
            route = { { label = "Centipaar Wasp", mapID = 1446, offMapText = "Travel to Centipaar Wasp.", x = 0.36, y = 0.4 } },
            sourceStep = 43,
            text = "Collect 5 Centipaar Insect Parts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-82-1-centipaar-wasp",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 82, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 82, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 5863, index = 3, text = "Gor'marok the Ravager" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-5863-the-dunemaul-compound" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-5863-3-gor-marok-the-ravager",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Gor'marok the Ravager", mapID = 1446, offMapText = "Travel to Gor'marok the Ravager.", x = 0.415, y = 0.5781 },
            },
            sourceStep = 44,
            text = "Kill Gor'marok the Ravager.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-5863-3-gor-marok-the-ravager",
        },
        {
            complete = { questObjective = { count = 10, id = 5863, index = 1, text = "Dunemaul Brute" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-5863-the-dunemaul-compound" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-5863-1-dunemaul-brute",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Dunemaul Brute", mapID = 1446, offMapText = "Travel to Dunemaul Brute.", x = 0.404, y = 0.56 } },
            sourceStep = 45,
            text = "Kill 10 Dunemaul Brute.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-5863-1-dunemaul-brute",
        },
        {
            complete = { questObjective = { count = 10, id = 5863, index = 2, text = "Dunemaul Enforcer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-5863-the-dunemaul-compound" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-5863-2-dunemaul-enforcer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Dunemaul Enforcer", mapID = 1446, offMapText = "Travel to Dunemaul Enforcer.", x = 0.404, y = 0.56 },
            },
            sourceStep = 45,
            text = "Kill 10 Dunemaul Enforcer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-5863-2-dunemaul-enforcer",
        },
        {
            complete = { questObjective = { count = 30, id = 3161, index = 1, text = "Gahz'ridian Ornament" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-3161-gahz-ridian" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-3161-1-gahz-ridian-ornament",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Gahz'ridian Ornament", mapID = 1446, offMapText = "Travel to Gahz'ridian Ornament.", x = 0.482, y = 0.647 },
            },
            sourceStep = 46,
            text = "Collect 30 Gahz'ridian Ornament.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-3161-1-gahz-ridian-ornament",
        },
        {
            complete = { questObjective = { count = 1, id = 2605, index = 1, text = "Thistleshrub Dew Collector" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2605-the-thirsty-goblin" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-2605-1-thistleshrub-dew-collector",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Thistleshrub Dew Collector",
                    mapID = 1446,
                    offMapText = "Travel to Thistleshrub Dew Collector.",
                    x = 0.298,
                    y = 0.668,
                },
            },
            sourceStep = 47,
            text = "Collect 1 Laden Dew Gland.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-2605-1-thistleshrub-dew-collector",
        },
        {
            complete = { questObjective = { count = 8, id = 3362, index = 1, text = "Gnarled Thistleshrub" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-3362-thistleshrub-valley" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-3362-1-gnarled-thistleshrub",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Gnarled Thistleshrub", mapID = 1446, offMapText = "Travel to Gnarled Thistleshrub.", x = 0.298, y = 0.668 },
            },
            sourceStep = 48,
            text = "Kill 8 Gnarled Thistleshrub.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-3362-1-gnarled-thistleshrub",
        },
        {
            complete = { questObjective = { count = 8, id = 3362, index = 2, text = "Thistleshrub Rootshaper" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-3362-thistleshrub-valley" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-3362-2-thistleshrub-rootshaper",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Thistleshrub Rootshaper",
                    mapID = 1446,
                    offMapText = "Travel to Thistleshrub Rootshaper.",
                    x = 0.298,
                    y = 0.668,
                },
            },
            sourceStep = 48,
            text = "Kill 8 Thistleshrub Rootshaper.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-3362-2-thistleshrub-rootshaper",
        },
        {
            complete = { quest = { id = 3161, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-3161-gahz-ridian",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-3161-1-gahz-ridian-ornament",
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-3161-gahz-ridian",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Marvon Rivetseeker",
                    mapID = 1446,
                    offMapText = "Travel to Marvon Rivetseeker in Tanaris.",
                    x = 0.5271,
                    y = 0.4593,
                },
            },
            sourceActionID = "turnin-3161-gahz-ridian",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 49,
            text = "Turn in Gahz'ridian to Marvon Rivetseeker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2605, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2605-the-thirsty-goblin",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-2605-1-thistleshrub-dew-collector",
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-2605-the-thirsty-goblin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Marin Noggenfogger",
                    mapID = 1446,
                    offMapText = "Travel to Marin Noggenfogger in Tanaris.",
                    x = 0.5181,
                    y = 0.2866,
                },
            },
            sourceActionID = "turnin-2605-the-thirsty-goblin",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 50,
            text = "Turn in The Thirsty Goblin to Marin Noggenfogger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2606, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2606-in-good-taste",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2605 } } },
            route = {
                {
                    label = "Marin Noggenfogger",
                    mapID = 1446,
                    offMapText = "Travel to Marin Noggenfogger in Tanaris.",
                    x = 0.5181,
                    y = 0.2866,
                },
            },
            sourceStep = 50,
            text = "Accept In Good Taste from Marin Noggenfogger.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-2606-in-good-taste",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2606, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2606, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5863, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-5863-the-dunemaul-compound",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-5863-3-gor-marok-the-ravager",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-5863-1-dunemaul-brute",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-5863-2-dunemaul-enforcer",
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-5863-the-dunemaul-compound",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Andi Lynn", mapID = 1446, offMapText = "Travel to Andi Lynn in Tanaris.", x = 0.5282, y = 0.274 } },
            sourceActionID = "turnin-5863-the-dunemaul-compound",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 52,
            text = "Turn in The Dunemaul Compound to Andi Lynn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3362, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-3362-thistleshrub-valley",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-3362-1-gnarled-thistleshrub",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-3362-2-thistleshrub-rootshaper",
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-3362-thistleshrub-valley",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Tran'rek", mapID = 1446, offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157, y = 0.2676 } },
            sourceActionID = "turnin-3362-thistleshrub-valley",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 53,
            text = "Turn in Thistleshrub Valley to Tran'rek.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2606, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2606-in-good-taste" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2606, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2606, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-2606-in-good-taste",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2605 } } },
            route = { { label = "Sprinkle", mapID = 1446, offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106, y = 0.2687 } },
            sourceActionID = "turnin-2606-in-good-taste",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 54,
            text = "Turn in In Good Taste to Sprinkle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2641, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-2641-sprinkle-s-secret-ingredient",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2606 } } },
            route = { { label = "Sprinkle", mapID = 1446, offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106, y = 0.2687 } },
            sourceStep = 54,
            text = "Accept Sprinkle's Secret Ingredient from Sprinkle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-2641-sprinkle-s-secret-ingredient",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2641, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2641, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2606, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 82, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-82-noxious-lair-investigation",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-82-1-centipaar-wasp",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 82, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 82, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-82-noxious-lair-investigation",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 992 } } },
            route = {
                {
                    label = "Alchemist Pestlezugg",
                    mapID = 1446,
                    offMapText = "Travel to Alchemist Pestlezugg in Tanaris.",
                    x = 0.5089,
                    y = 0.2696,
                },
            },
            sourceActionID = "turnin-82-noxious-lair-investigation",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 55,
            text = "Turn in Noxious Lair Investigation to Alchemist Pestlezugg.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 10, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-10-the-scrimshank-redemption",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 82 } } },
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceStep = 56,
            text = "Accept The Scrimshank Redemption from Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-10-the-scrimshank-redemption",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 10, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 10, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 351, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-351-find-oox-17-tn" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 351, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-351-find-oox-17-tn",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Homing Robot OOX-17/TN",
                    mapID = 1446,
                    offMapText = "Travel to Homing Robot OOX-17/TN in Tanaris.",
                    x = 0.6023,
                    y = 0.6472,
                },
            },
            sourceActionID = "turnin-351-find-oox-17-tn",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 57,
            text = "Turn in Find OOX-17/TN! to Homing Robot OOX-17/TN.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 10, index = 1, text = "Scrimshank's Surveying Gear" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-10-the-scrimshank-redemption" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-10-1-scrimshank-s-surveying-gear",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 82 } } },
            route = {
                {
                    label = "Scrimshank's Surveying Gear",
                    mapID = 1446,
                    offMapText = "Travel to Scrimshank's Surveying Gear.",
                    x = 0.5597,
                    y = 0.7118,
                },
            },
            sourceStep = 58,
            text = "Collect 1 Scrimshank's Surveying Gear.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-10-1-scrimshank-s-surveying-gear",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 10, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 10, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 10, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-10-the-scrimshank-redemption",
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-10-1-scrimshank-s-surveying-gear",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 10, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 10, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-10-the-scrimshank-redemption",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 82 } } },
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceActionID = "turnin-10-the-scrimshank-redemption",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 61,
            text = "Turn in The Scrimshank Redemption to Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 110, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-110-insect-part-analysis",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 10 } } },
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceStep = 61,
            text = "Accept Insect Part Analysis from Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-110-insect-part-analysis",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 110, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 110, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 110, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-110-insect-part-analysis" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 110, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 110, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-110-insect-part-analysis",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 10 } } },
            route = {
                {
                    label = "Alchemist Pestlezugg",
                    mapID = 1446,
                    offMapText = "Travel to Alchemist Pestlezugg in Tanaris.",
                    x = 0.5089,
                    y = 0.2696,
                },
            },
            sourceActionID = "turnin-110-insect-part-analysis",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 62,
            text = "Turn in Insect Part Analysis to Alchemist Pestlezugg.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 113, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-113-insect-part-analysis",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 110 } } },
            route = {
                {
                    label = "Alchemist Pestlezugg",
                    mapID = 1446,
                    offMapText = "Travel to Alchemist Pestlezugg in Tanaris.",
                    x = 0.5089,
                    y = 0.2696,
                },
            },
            sourceStep = 62,
            text = "Accept Insect Part Analysis from Alchemist Pestlezugg.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-113-insect-part-analysis",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 113, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 113, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 110, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 113, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-113-insect-part-analysis" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 113, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 113, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 110, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-113-insect-part-analysis",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 110 } } },
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceActionID = "turnin-113-insect-part-analysis",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 63,
            text = "Turn in Insect Part Analysis to Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 32, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-32-rise-of-the-silithid",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 113 } } },
            route = {
                {
                    label = "Senior Surveyor Fizzledowser",
                    mapID = 1446,
                    offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.",
                    x = 0.5021,
                    y = 0.2748,
                },
            },
            sourceStep = 63,
            text = "Accept Rise of the Silithid from Senior Surveyor Fizzledowser.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-32-rise-of-the-silithid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 32, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 32, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 32, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-32-rise-of-the-silithid" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 32, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 32, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-32-rise-of-the-silithid",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 113 } } },
            route = {
                {
                    label = "Zilzibin Drumlore",
                    mapID = 1454,
                    offMapText = "Travel to Zilzibin Drumlore in Orgrimmar.",
                    x = 0.5627,
                    y = 0.4667,
                },
            },
            sourceActionID = "turnin-32-rise-of-the-silithid",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 96,
            text = "Turn in Rise of the Silithid to Zilzibin Drumlore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-horde-the-hinterlands",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-the-hinterlands",
            text = "Reach level 48 before the The Hinterlands visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 48 } },
            requiredLevel = 48,
        },
        {
            checkpointQuest = 2641,
            complete = { level = { min = 44 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-the-hinterlands-level-before-objective-2641-1-violet-tragan",
            kind = "note",
            requiredLevel = 44,
            requiredQuests = {},
            text = "Reach level 44 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "level-before-objective-2641-1-violet-tragan",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2641, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2641, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2606, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 2641, index = 1, text = "Violet Tragan" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-objective-2641-1-violet-tragan",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2606 } } },
            route = { { label = "Violet Tragan", mapID = 1425, offMapText = "Travel to Violet Tragan.", x = 0.4104, y = 0.5979 } },
            sourceStep = 10,
            text = "Collect 1 Violet Tragan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-2641-1-violet-tragan",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2641, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2641, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2606, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2641, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-objective-2641-1-violet-tragan" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2641, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2641, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2606, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-2641-sprinkle-s-secret-ingredient",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2606 } } },
            route = { { label = "Sprinkle", mapID = 1446, offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106, y = 0.2687 } },
            sourceActionID = "turnin-2641-sprinkle-s-secret-ingredient",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 64,
            text = "Turn in Sprinkle's Secret Ingredient to Sprinkle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2661, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-2661-delivery-for-marin",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2641 } } },
            route = { { label = "Sprinkle", mapID = 1446, offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106, y = 0.2687 } },
            sourceStep = 65,
            text = "Accept Delivery for Marin from Sprinkle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-2661-delivery-for-marin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2661, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2661, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2641, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2606, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2661, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-2661-delivery-for-marin" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2661, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2661, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2641, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2606, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-2661-delivery-for-marin",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2641 } } },
            route = {
                {
                    label = "Marin Noggenfogger",
                    mapID = 1446,
                    offMapText = "Travel to Marin Noggenfogger in Tanaris.",
                    x = 0.5181,
                    y = 0.2866,
                },
            },
            sourceActionID = "turnin-2661-delivery-for-marin",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 66,
            text = "Turn in Delivery for Marin to Marin Noggenfogger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2662, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-2662-noggenfogger-elixir",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2661 } } },
            route = {
                {
                    label = "Marin Noggenfogger",
                    mapID = 1446,
                    offMapText = "Travel to Marin Noggenfogger in Tanaris.",
                    x = 0.5181,
                    y = 0.2866,
                },
            },
            sourceStep = 66,
            text = "Accept Noggenfogger Elixir from Marin Noggenfogger.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-2662-noggenfogger-elixir",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2662, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2661, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2641, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2606, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2662, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-2662-noggenfogger-elixir" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2662, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2661, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2641, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2606, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 2605, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-2662-noggenfogger-elixir",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2661 } } },
            route = {
                {
                    label = "Marin Noggenfogger",
                    mapID = 1446,
                    offMapText = "Travel to Marin Noggenfogger in Tanaris.",
                    x = 0.5181,
                    y = 0.2866,
                },
            },
            sourceActionID = "turnin-2662-noggenfogger-elixir",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 67,
            text = "Turn in Noggenfogger Elixir to Marin Noggenfogger.",
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
            checkpointQuest = 2874,
            complete = { level = { min = 40 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-level-before-turnin-2874-deliver-to-mackinley",
            kind = "note",
            requiredLevel = 40,
            requiredQuests = {},
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            sourceActionID = "level-before-turnin-2874-deliver-to-mackinley",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2874, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2874, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 2873, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2874, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2874, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2874, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 2873, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-turnin-2874-deliver-to-mackinley",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2873 } } },
            route = {
                {
                    label = "\"Sea Wolf\" MacKinley",
                    mapID = 1434,
                    offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.",
                    x = 0.2778,
                    y = 0.7707,
                },
            },
            sourceActionID = "turnin-2874-deliver-to-mackinley",
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            sourceStep = 1,
            text = "Turn in Deliver to MacKinley to \"Sea Wolf\" MacKinley.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            checkpointQuest = 4494,
            complete = { level = { min = 50 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-level-before-accept-4494-march-of-the-silithid",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "level-before-accept-4494-march-of-the-silithid",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4494, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4494, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 32, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
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
                                                        { quest = { id = 7732, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 7730, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
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
                                                                                { quest = { id = 7731, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4494, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-4494-march-of-the-silithid",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 32, 7732 } } },
            route = {
                {
                    label = "Zilzibin Drumlore",
                    mapID = 1454,
                    offMapText = "Travel to Zilzibin Drumlore in Orgrimmar.",
                    x = 0.552,
                    y = 0.558,
                },
            },
            sourceStep = 30,
            text = "Accept March of the Silithid from Zilzibin Drumlore.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-4494-march-of-the-silithid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4494, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4494, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 32, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
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
                                                        { quest = { id = 7732, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 7730, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
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
                                                                                { quest = { id = 7731, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            checkpointQuest = 4494,
            complete = { level = { min = 50 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-ungoro-crater-level-before-turnin-4494-march-of-the-silithid",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceActionID = "level-before-turnin-4494-march-of-the-silithid",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4494, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4494, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 32, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
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
                                                        { quest = { id = 7732, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 7730, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
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
                                                                                { quest = { id = 7731, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4494, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4494, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4494, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 32, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
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
                                                        { quest = { id = 7732, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 7730, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
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
                                                                                { quest = { id = 7731, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-ungoro-crater-turnin-4494-march-of-the-silithid",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 32, 7732 } } },
            route = {
                {
                    label = "Alchemist Pestlezugg",
                    mapID = 1446,
                    offMapText = "Travel to Alchemist Pestlezugg in Tanaris.",
                    x = 0.5089,
                    y = 0.2696,
                },
            },
            sourceActionID = "turnin-4494-march-of-the-silithid",
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceStep = 1,
            text = "Turn in March of the Silithid to Alchemist Pestlezugg.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 4496,
            complete = { level = { min = 50 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-ungoro-crater-level-before-accept-4496-bungle-in-the-jungle",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceActionID = "level-before-accept-4496-bungle-in-the-jungle",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4496, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4496, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 4493, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 4494, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 32, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
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
                                                                                { quest = { id = 7732, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            all = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 7730, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
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
                                                                                                        { quest = { id = 7731, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 4493 },
        },
        {
            complete = { quest = { id = 4496, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ungoro-crater-accept-4496-bungle-in-the-jungle",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4493, 4494 } } },
            route = {
                {
                    label = "Alchemist Pestlezugg",
                    mapID = 1446,
                    offMapText = "Travel to Alchemist Pestlezugg in Tanaris.",
                    x = 0.5089,
                    y = 0.2696,
                },
            },
            sourceStep = 1,
            text = "Accept Bungle in the Jungle from Alchemist Pestlezugg.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceActionID = "accept-4496-bungle-in-the-jungle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4496, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4496, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 4493, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 4494, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 32, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
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
                                                                                { quest = { id = 7732, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            all = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 7730, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
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
                                                                                                        { quest = { id = 7731, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 4493 },
        },
        {
            complete = { questObjective = { count = 1, id = 4496, index = 1, text = "Gorishi Scent Gland" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-ungoro-crater-accept-4496-bungle-in-the-jungle" },
            id = "horde-leveling-era-horde-ungoro-crater-objective-4496-1-gorishi-scent-gland",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4493, 4494 } } },
            route = {
                { label = "Gorishi Scent Gland", mapID = 1449, offMapText = "Travel to Gorishi Scent Gland.", x = 0.4995, y = 0.817 },
            },
            sourceStep = 22,
            text = "Collect 1 Gorishi Scent Gland.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceActionID = "objective-4496-1-gorishi-scent-gland",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4496, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4496, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 4493, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 4494, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 32, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
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
                                                                                { quest = { id = 7732, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            all = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 7730, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
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
                                                                                                        { quest = { id = 7731, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 4493 },
        },
        {
            complete = { quest = { id = 4496, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-ungoro-crater-accept-4496-bungle-in-the-jungle",
                "horde-leveling-era-horde-ungoro-crater-objective-4496-1-gorishi-scent-gland",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4496, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4496, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 4493, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 4494, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 32, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 113, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 110, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 10, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 82, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 992, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
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
                                                                                { quest = { id = 7732, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            all = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 7730, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
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
                                                                                                        { quest = { id = 7731, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-ungoro-crater-turnin-4496-bungle-in-the-jungle",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4493, 4494 } } },
            route = {
                {
                    label = "Alchemist Pestlezugg",
                    mapID = 1446,
                    offMapText = "Travel to Alchemist Pestlezugg in Tanaris.",
                    x = 0.5089,
                    y = 0.2696,
                },
            },
            sourceActionID = "turnin-4496-bungle-in-the-jungle",
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceStep = 56,
            text = "Turn in Bungle in the Jungle to Alchemist Pestlezugg.",
            unresolvedPrerequisites = { 4493 },
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-horde-felwood-and-winterspring-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            text = "Reach level 54 before the Felwood & Winterspring visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 54 } },
            requiredLevel = 54,
        },
        {
            complete = { quest = { id = 4504, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-4504-super-sticky",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Tran'rek", mapID = 1446, offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157, y = 0.2676 } },
            sourceStep = 44,
            text = "Accept Super Sticky from Tran'rek.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "accept-4504-super-sticky",
        },
        {
            complete = { questObjective = { count = 12, id = 4504, index = 1, text = "Tar Beast" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-4504-super-sticky" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-4504-1-tar-beast",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Super Sticky Tar", mapID = 1449, offMapText = "Travel to Super Sticky Tar.", x = 0.454, y = 0.154 },
            },
            sourceStep = 48,
            text = "Collect 12 Super Sticky Tar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "objective-4504-1-tar-beast",
        },
        {
            complete = { quest = { id = 4504, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-4504-super-sticky",
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-4504-1-tar-beast",
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-turnin-4504-super-sticky",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Tran'rek", mapID = 1446, offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157, y = 0.2676 } },
            sourceActionID = "turnin-4504-super-sticky",
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceStep = 49,
            text = "Turn in Super Sticky to Tran'rek.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 648,
            complete = { level = { min = 43 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 648, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 351, state = "activeOrCompleted" } },
                                                        { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-648-level",
            kind = "note",
            requiredLevel = 43,
            text = "Reach level 43 before this visit.",
        },
        {
            complete = { quest = { id = 648, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = { "horde-extra-648-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 648, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 351, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 648, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 351, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-648-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 351 } } },
            route = {
                {
                    label = "Homing Robot OOX-17/TN",
                    mapID = 1446,
                    offMapText = "Travel to Homing Robot OOX-17/TN in Tanaris.",
                    x = 0.602,
                    y = 0.646,
                },
            },
            text = "Accept Rescue OOX-17/TN! from Homing Robot OOX-17/TN.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 648, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = { "horde-extra-648-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 648, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 351, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 648, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 351, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-648-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 351 } } },
            route = {},
            text = "Escort OOX-17/TN to Steamwheedle Port. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 648, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = { "horde-extra-648-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 648, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 351, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 648, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 648, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 351, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-17/TN Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-648-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 351 } } },
            route = {
                {
                    label = "Oglethorpe Obnoticus",
                    mapID = 1434,
                    offMapText = "Travel to Oglethorpe Obnoticus in Stranglethorn Vale.",
                    x = 0.282,
                    y = 0.762,
                },
            },
            text = "Turn in Rescue OOX-17/TN! to Oglethorpe Obnoticus.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
    },
})
