local _, ns = ...

-- Source decisions: docs/loremaster/felwood.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-felwood",
    title = "Felwood",
    category = "Loremaster Guides",
    revision = 1,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
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
            complete = { quest = { id = 4101, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-4101-cleansing-felwood",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Arathandris Silversky",
                    mapID = 1448,
                    offMapText = "Travel to Arathandris Silversky in Felwood.",
                    x = 0.5415,
                    y = 0.8683,
                },
            },
            sourceStep = 15,
            text = "Accept Cleansing Felwood from Arathandris Silversky.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-4101-cleansing-felwood",
        },
        {
            checkpointQuest = 5155,
            complete = { level = { min = 48 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-level-before-accept-5155-forces-of-jaedenar",
            kind = "note",
            requiredLevel = 48,
            requiredQuests = {},
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "level-before-accept-5155-forces-of-jaedenar",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5155, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-5155-forces-of-jaedenar",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 16,
            text = "Accept Forces of Jaedenar from Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-5155-forces-of-jaedenar",
        },
        {
            complete = { quest = { id = 4421, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-4421-the-corruption-of-the-jadefire",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Eridan Bluewind", mapID = 1448, offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135, y = 0.8151 },
            },
            sourceStep = 17,
            text = "Accept The Corruption of the Jadefire from Eridan Bluewind.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-4421-the-corruption-of-the-jadefire",
        },
        {
            complete = { quest = { id = 8460, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-8460-timbermaw-ally",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Grazle", mapID = 1448, offMapText = "Travel to Grazle in Felwood.", x = 0.5093, y = 0.8501 } },
            sourceStep = 18,
            text = "Accept Timbermaw Ally from Grazle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-8460-timbermaw-ally",
        },
        {
            complete = { questObjective = { count = 6, id = 8460, index = 1, text = "Deadwood Warrior" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-8460-timbermaw-ally" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-8460-1-deadwood-warrior",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Deadwood Warrior", mapID = 1448, offMapText = "Travel to Deadwood Warrior.", x = 0.484, y = 0.892 },
            },
            sourceStep = 19,
            text = "Kill 6 Deadwood Warrior.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-8460-1-deadwood-warrior",
        },
        {
            complete = { questObjective = { count = 6, id = 8460, index = 2, text = "Deadwood Pathfinder" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-8460-timbermaw-ally" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-8460-2-deadwood-pathfinder",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Deadwood Pathfinder", mapID = 1448, offMapText = "Travel to Deadwood Pathfinder.", x = 0.484, y = 0.892 },
            },
            sourceStep = 19,
            text = "Kill 6 Deadwood Pathfinder.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-8460-2-deadwood-pathfinder",
        },
        {
            complete = { questObjective = { count = 6, id = 8460, index = 3, text = "Deadwood Gardener" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-8460-timbermaw-ally" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-8460-3-deadwood-gardener",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Deadwood Gardener", mapID = 1448, offMapText = "Travel to Deadwood Gardener.", x = 0.484, y = 0.892 },
            },
            sourceStep = 19,
            text = "Kill 6 Deadwood Gardener.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-8460-3-deadwood-gardener",
        },
        {
            complete = { quest = { id = 8460, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-azshara-and-felwood-accept-8460-timbermaw-ally",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-8460-1-deadwood-warrior",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-8460-2-deadwood-pathfinder",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-8460-3-deadwood-gardener",
            },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-8460-timbermaw-ally",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Grazle", mapID = 1448, offMapText = "Travel to Grazle in Felwood.", x = 0.5093, y = 0.8502 } },
            sourceStep = 20,
            text = "Turn in Timbermaw Ally to Grazle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-8460-timbermaw-ally",
        },
        {
            complete = { quest = { id = 8462, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-8462-speak-to-nafien",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8460 } } },
            route = { { label = "Grazle", mapID = 1448, offMapText = "Travel to Grazle in Felwood.", x = 0.5093, y = 0.8502 } },
            sourceStep = 20,
            text = "Accept Speak to Nafien from Grazle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-8462-speak-to-nafien",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8462, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8462, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8460, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 4421, index = 4 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-4421-the-corruption-of-the-jadefire" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-4421-reviewed-4",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Xavathras", mapID = 1448, offMapText = "Travel to Xavathras.", x = 0.3224, y = 0.671 } },
            sourceStep = 24,
            text = "Kill Xavathras at the southern Jadefire ruins.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-4421-reviewed-4",
        },
        {
            complete = { questObjective = { count = 9, id = 4421, index = 2, text = "Jadefire Shadowstalker" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-4421-the-corruption-of-the-jadefire" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-4421-2-jadefire-shadowstalker",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Jadefire Shadowstalker",
                    mapID = 1448,
                    offMapText = "Travel to Jadefire Shadowstalker.",
                    x = 0.344,
                    y = 0.664,
                },
            },
            sourceStep = 25,
            text = "Kill 9 Jadefire Shadowstalker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-4421-2-jadefire-shadowstalker",
        },
        {
            complete = { questObjective = { count = 9, id = 4421, index = 3, text = "Jadefire Rogue" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-4421-the-corruption-of-the-jadefire" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-4421-3-jadefire-rogue",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Jadefire Rogue", mapID = 1448, offMapText = "Travel to Jadefire Rogue.", x = 0.344, y = 0.664 } },
            sourceStep = 25,
            text = "Kill 9 Jadefire Rogue.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-4421-3-jadefire-rogue",
        },
        {
            complete = { questObjective = { count = 11, id = 4421, index = 1, text = "Jadefire Felsworn" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-4421-the-corruption-of-the-jadefire" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-4421-1-jadefire-felsworn",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Jadefire Felsworn", mapID = 1448, offMapText = "Travel to Jadefire Felsworn.", x = 0.344, y = 0.664 },
            },
            sourceStep = 25,
            text = "Kill 11 Jadefire Felsworn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-4421-1-jadefire-felsworn",
        },
        {
            complete = { questObjective = { count = 4, id = 5155, index = 1, text = "Jaedenar Hound" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-5155-forces-of-jaedenar" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-5155-1-jaedenar-hound",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Jaedenar Hound", mapID = 1448, offMapText = "Travel to Jaedenar Hound.", x = 0.404, y = 0.576 } },
            sourceStep = 27,
            text = "Kill 4 Jaedenar Hound.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-5155-1-jaedenar-hound",
        },
        {
            complete = { questObjective = { count = 4, id = 5155, index = 2, text = "Jaedenar Guardian" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-5155-forces-of-jaedenar" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-5155-2-jaedenar-guardian",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Jaedenar Guardian", mapID = 1448, offMapText = "Travel to Jaedenar Guardian.", x = 0.404, y = 0.576 },
            },
            sourceStep = 27,
            text = "Kill 4 Jaedenar Guardian.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-5155-2-jaedenar-guardian",
        },
        {
            complete = { questObjective = { count = 6, id = 5155, index = 3, text = "Jaedenar Adept" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-5155-forces-of-jaedenar" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-5155-3-jaedenar-adept",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Jaedenar Adept", mapID = 1448, offMapText = "Travel to Jaedenar Adept.", x = 0.404, y = 0.576 } },
            sourceStep = 27,
            text = "Kill 6 Jaedenar Adept.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-5155-3-jaedenar-adept",
        },
        {
            complete = { questObjective = { count = 6, id = 5155, index = 4, text = "Jaedenar Cultist" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-5155-forces-of-jaedenar" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-5155-4-jaedenar-cultist",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Jaedenar Cultist", mapID = 1448, offMapText = "Travel to Jaedenar Cultist.", x = 0.404, y = 0.576 },
            },
            sourceStep = 27,
            text = "Kill 6 Jaedenar Cultist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-5155-4-jaedenar-cultist",
        },
        {
            complete = { quest = { id = 5155, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-azshara-and-felwood-accept-5155-forces-of-jaedenar",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-5155-1-jaedenar-hound",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-5155-2-jaedenar-guardian",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-5155-3-jaedenar-adept",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-5155-4-jaedenar-cultist",
            },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-5155-forces-of-jaedenar",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 28,
            text = "Turn in Forces of Jaedenar to Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-5155-forces-of-jaedenar",
        },
        {
            complete = { quest = { id = 5157, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-5157-collection-of-the-corrupt-water",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5155 } } },
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 28,
            text = "Accept Collection of the Corrupt Water from Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-5157-collection-of-the-corrupt-water",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5157, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4421, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-azshara-and-felwood-accept-4421-the-corruption-of-the-jadefire",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-4421-2-jadefire-shadowstalker",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-4421-3-jadefire-rogue",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-4421-1-jadefire-felsworn",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-4421-reviewed-4",
            },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-4421-the-corruption-of-the-jadefire",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Eridan Bluewind", mapID = 1448, offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135, y = 0.8151 },
            },
            sourceStep = 29,
            text = "Turn in The Corruption of the Jadefire to Eridan Bluewind.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-4421-the-corruption-of-the-jadefire",
        },
        {
            complete = { quest = { id = 4906, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-4906-further-corruption",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4421 } } },
            route = {
                { label = "Eridan Bluewind", mapID = 1448, offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135, y = 0.8151 },
            },
            sourceStep = 29,
            text = "Accept Further Corruption from Eridan Bluewind.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-4906-further-corruption",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4906, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4906, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4421, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5156, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-5156-verifying-the-corruption",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Taronn Redfeather",
                    mapID = 1448,
                    offMapText = "Travel to Taronn Redfeather in Felwood.",
                    x = 0.5089,
                    y = 0.8162,
                },
            },
            sourceStep = 30,
            text = "Accept Verifying the Corruption from Taronn Redfeather.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-5156-verifying-the-corruption",
        },
        {
            complete = { questObjective = { count = 2, id = 5156, index = 1, text = "Entropic Beast" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-5156-verifying-the-corruption" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-5156-1-entropic-beast",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Entropic Beast", mapID = 1448, offMapText = "Travel to Entropic Beast.", x = 0.426, y = 0.414 } },
            sourceStep = 33,
            text = "Kill 2 Entropic Beast.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-5156-1-entropic-beast",
        },
        {
            complete = { questObjective = { count = 2, id = 5156, index = 2, text = "Entropic Horror" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-5156-verifying-the-corruption" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-5156-2-entropic-horror",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Entropic Horror", mapID = 1448, offMapText = "Travel to Entropic Horror.", x = 0.426, y = 0.414 } },
            sourceStep = 33,
            text = "Kill 2 Entropic Horror.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-5156-2-entropic-horror",
        },
        {
            complete = { questObjective = { count = 1, id = 4906, index = 4 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-4906-further-corruption" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-4906-reviewed-4",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4421 } } },
            route = { { label = "Xavaric", mapID = 1448, offMapText = "Travel to Xavaric.", x = 0.3907, y = 0.2235 } },
            sourceStep = 34,
            text = "Kill Xavaric at Jadefire Run.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-4906-reviewed-4",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4906, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4906, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4421, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 939, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-939-flute-of-xavaric",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 35,
            text = "Use the Flute of Xavaric to accept Flute of Xavaric.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-939-flute-of-xavaric",
        },
        {
            complete = { questObjective = { count = 5, id = 939, index = 1, text = "Jadefire Hellcaller" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-939-flute-of-xavaric" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-939-1-jadefire-hellcaller",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Jadefire Hellcaller", mapID = 1448, offMapText = "Travel to Jadefire Hellcaller.", x = 0.404, y = 0.2 },
            },
            sourceStep = 36,
            text = "Collect 5 Jadefire Felbind.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-939-1-jadefire-hellcaller",
        },
        {
            complete = { questObjective = { count = 8, id = 4906, index = 1, text = "Jadefire Hellcaller" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-4906-further-corruption" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-4906-1-jadefire-hellcaller",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4421 } } },
            route = {
                { label = "Jadefire Hellcaller", mapID = 1448, offMapText = "Travel to Jadefire Hellcaller.", x = 0.404, y = 0.2 },
            },
            sourceStep = 37,
            text = "Kill 8 Jadefire Hellcaller.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-4906-1-jadefire-hellcaller",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4906, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4906, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4421, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 8, id = 4906, index = 2, text = "Jadefire Betrayer" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-4906-further-corruption" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-4906-2-jadefire-betrayer",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4421 } } },
            route = {
                { label = "Jadefire Betrayer", mapID = 1448, offMapText = "Travel to Jadefire Betrayer.", x = 0.404, y = 0.2 },
            },
            sourceStep = 37,
            text = "Kill 8 Jadefire Betrayer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-4906-2-jadefire-betrayer",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4906, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4906, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4421, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 8, id = 4906, index = 3, text = "Jadefire Trickster" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-4906-further-corruption" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-4906-3-jadefire-trickster",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4421 } } },
            route = {
                { label = "Jadefire Trickster", mapID = 1448, offMapText = "Travel to Jadefire Trickster.", x = 0.404, y = 0.2 },
            },
            sourceStep = 37,
            text = "Kill 8 Jadefire Trickster.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-4906-3-jadefire-trickster",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4906, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4906, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4421, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 15, id = 4101, index = 1, text = "Warpwood Moss Flayer" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-4101-cleansing-felwood" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-4101-1-warpwood-moss-flayer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Warpwood Moss Flayer", mapID = 1448, offMapText = "Travel to Warpwood Moss Flayer.", x = 0.5578, y = 0.1685 },
            },
            sourceStep = 38,
            text = "Collect 15 Blood Amber.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-4101-1-warpwood-moss-flayer",
        },
        {
            complete = { quest = { id = 8462, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-8462-speak-to-nafien" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-8462-speak-to-nafien",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8460 } } },
            route = { { label = "Nafien", mapID = 1448, offMapText = "Travel to Nafien in Felwood.", x = 0.6477, y = 0.0813 } },
            sourceStep = 40,
            text = "Turn in Speak to Nafien to Nafien.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-8462-speak-to-nafien",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8462, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8462, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8460, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5156, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-azshara-and-felwood-accept-5156-verifying-the-corruption",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-5156-1-entropic-beast",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-5156-2-entropic-horror",
            },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-5156-verifying-the-corruption",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Taronn Redfeather",
                    mapID = 1448,
                    offMapText = "Travel to Taronn Redfeather in Felwood.",
                    x = 0.5089,
                    y = 0.8162,
                },
            },
            sourceStep = 46,
            text = "Turn in Verifying the Corruption to Taronn Redfeather.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-5156-verifying-the-corruption",
        },
        {
            complete = { quest = { id = 939, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-azshara-and-felwood-accept-939-flute-of-xavaric",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-939-1-jadefire-hellcaller",
            },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-939-flute-of-xavaric",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Eridan Bluewind", mapID = 1448, offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135, y = 0.8151 },
            },
            sourceStep = 47,
            text = "Turn in Flute of Xavaric to Eridan Bluewind.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-939-flute-of-xavaric",
        },
        {
            complete = { quest = { id = 4441, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-4441-felbound-ancients",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 939 } } },
            route = {
                { label = "Eridan Bluewind", mapID = 1448, offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135, y = 0.8151 },
            },
            sourceStep = 47,
            text = "Accept Felbound Ancients from Eridan Bluewind.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-4441-felbound-ancients",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4441, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4441, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 939, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "Flute of Xavaric", minCount = 1 } }, { faction = "Alliance" } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4906, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-azshara-and-felwood-accept-4906-further-corruption",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-4906-1-jadefire-hellcaller",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-4906-2-jadefire-betrayer",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-4906-3-jadefire-trickster",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-4906-reviewed-4",
            },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-4906-further-corruption",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4421 } } },
            route = {
                { label = "Eridan Bluewind", mapID = 1448, offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135, y = 0.8151 },
            },
            sourceStep = 47,
            text = "Turn in Further Corruption to Eridan Bluewind.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-4906-further-corruption",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4906, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4906, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4421, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5157, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-5157-collection-of-the-corrupt-water" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-5157-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5155 } } },
            route = {
                {
                    label = "Collection of the Corrupt Water",
                    mapID = 1448,
                    offMapText = "Travel to Collection of the Corrupt Water.",
                    x = 0.3519,
                    y = 0.5995,
                },
            },
            sourceStep = 48,
            text = "Follow the path into Jaedenar. Use the Empty Canteen at the corrupted moonwell to obtain Corrupt Moonwell Water.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-5157-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5157, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5157, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-azshara-and-felwood-accept-5157-collection-of-the-corrupt-water",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-5157-quest-work",
            },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-5157-collection-of-the-corrupt-water",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5155 } } },
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 48,
            text = "Turn in Collection of the Corrupt Water to Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-5157-collection-of-the-corrupt-water",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5157, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5158, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-5158-seeking-spiritual-aid",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5157 } } },
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 48,
            text = "Accept Seeking Spiritual Aid from Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-5158-seeking-spiritual-aid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5158, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4101, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-azshara-and-felwood-accept-4101-cleansing-felwood",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-4101-1-warpwood-moss-flayer",
            },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-4101-cleansing-felwood",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Arathandris Silversky",
                    mapID = 1448,
                    offMapText = "Travel to Arathandris Silversky in Felwood.",
                    x = 0.5415,
                    y = 0.8683,
                },
            },
            sourceStep = 49,
            text = "Turn in Cleansing Felwood to Arathandris Silversky.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-4101-cleansing-felwood",
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
            checkpointQuest = 5158,
            complete = { level = { min = 48 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-level-before-turnin-5158-seeking-spiritual-aid",
            kind = "note",
            requiredLevel = 48,
            requiredQuests = {},
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "level-before-turnin-5158-seeking-spiritual-aid",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5158, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5158, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-5158-seeking-spiritual-aid",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5157 } } },
            route = {
                {
                    label = "Islen Waterseer",
                    mapID = 1413,
                    offMapText = "Travel to Islen Waterseer in The Barrens.",
                    x = 0.6583,
                    y = 0.4378,
                },
            },
            sourceStep = 28,
            text = "Turn in Seeking Spiritual Aid to Islen Waterseer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-5158-seeking-spiritual-aid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5158, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            complete = { quest = { id = 5159, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-5159-cleansed-water-returns-to-felwood",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5158 } } },
            route = {
                {
                    label = "Islen Waterseer",
                    mapID = 1413,
                    offMapText = "Travel to Islen Waterseer in The Barrens.",
                    x = 0.6583,
                    y = 0.4378,
                },
            },
            sourceStep = 63,
            text = "Accept Cleansed Water Returns to Felwood from Islen Waterseer.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "accept-5159-cleansed-water-returns-to-felwood",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5159, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 4441, index = 1, text = "Eridan's Vial" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-objective-4441-1-eridan-s-vial",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 939 } } },
            route = { { label = "Eridan's Vial", mapID = 1457, offMapText = "Travel to Eridan's Vial.", x = 0.3951, y = 0.8392 } },
            sourceStep = 66,
            text = "Collect 1 Vial of Blessed Water.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "objective-4441-1-eridan-s-vial",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4441, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4441, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 939, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "Flute of Xavaric", minCount = 1 } }, { faction = "Alliance" } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-winterspring-and-felwood",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            text = "Reach level 54 before the Winterspring & Felwood visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 54 } },
            requiredLevel = 54,
        },
        {
            checkpointQuest = 5882,
            complete = { level = { min = 48 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-level-before-objective-5882-1-deadwood-den-watcher",
            kind = "note",
            requiredLevel = 48,
            requiredQuests = {},
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "level-before-objective-5882-1-deadwood-den-watcher",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5882, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5882, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4101, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-5249-level",
            kind = "note",
            checkpointQuest = 5249,
            text = "Reach level 56 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 56 } },
            requiredLevel = 56,
            excludeWhen = { any = { { quest = { id = 5250, state = "activeOrCompleted" } } } },
            alternativeQuests = { 5244 },
        },
        {
            id = "alliance-extra-5249-accept",
            kind = "accept",
            text = "Accept To Winterspring! from Ivy Leafrunner.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 53 } } } },
            route = {
                { mapID = 1448, x = 0.508, y = 0.816, label = "Ivy Leafrunner", offMapText = "Travel to Ivy Leafrunner in Felwood." },
            },
            complete = { quest = { id = 5249, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            excludeWhen = { any = { { quest = { id = 5250, state = "activeOrCompleted" } } } },
            alternativeQuests = { 5244 },
            dependsOn = { "alliance-extra-5249-level" },
        },
        {
            complete = { quest = { id = 5882, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-objective-5882-1-deadwood-den-watcher",
            kind = "note",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4101 } } },
            route = {
                { label = "Deadwood Den Watcher", mapID = 1448, offMapText = "Travel to Deadwood Den Watcher.", x = 0.624, y = 0.126 },
            },
            text = "Kill Deadwood Den Watcher. Keep the required materials for the quest.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "objective-5882-1-deadwood-den-watcher",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5882, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5882, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4101, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 5159,
            complete = { level = { min = 48 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-level-before-turnin-5159-cleansed-water-returns-to-felwood",
            kind = "note",
            requiredLevel = 48,
            requiredQuests = {},
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "level-before-turnin-5159-cleansed-water-returns-to-felwood",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5159, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5159, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-turnin-5159-cleansed-water-returns-to-felwood",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5158 } } },
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 2,
            text = "Turn in Cleansed Water Returns to Felwood to Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "turnin-5159-cleansed-water-returns-to-felwood",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5159, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5165, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-accept-5165-dousing-the-flames-of-protection",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5159 } } },
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 2,
            text = "Accept Dousing the Flames of Protection from Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "accept-5165-dousing-the-flames-of-protection",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5165, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5165, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5159, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 4441,
            complete = { level = { min = 49 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-level-before-objective-4441-quest-work",
            kind = "note",
            requiredLevel = 49,
            requiredQuests = {},
            text = "Reach level 49 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "level-before-objective-4441-quest-work",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4441, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4441, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 939, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "Flute of Xavaric", minCount = 1 } }, { faction = "Alliance" } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4441, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-objective-4441-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 939 } } },
            route = {
                {
                    label = "Vial of Blessed Water",
                    mapID = 1457,
                    offMapText = "Travel to Vial of Blessed Water.",
                    x = 0.3951,
                    y = 0.8392,
                },
            },
            sourceStep = 3,
            text = "For Felbound Ancients: Travel to Darnassus and use Eridan's Vial to collect a Vial of Blessed Water from the Temple of the Moon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "objective-4441-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4441, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4441, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 939, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "Flute of Xavaric", minCount = 1 } }, { faction = "Alliance" } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4441, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-winterspring-and-felwood-objective-4441-quest-work",
                "alliance-leveling-era-alliance-ungoro-crater-part-2-objective-4441-1-eridan-s-vial",
            },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-turnin-4441-felbound-ancients",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 939 } } },
            route = {
                { label = "Eridan Bluewind", mapID = 1448, offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135, y = 0.8151 },
            },
            sourceStep = 3,
            text = "Turn in Felbound Ancients to Eridan Bluewind.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "turnin-4441-felbound-ancients",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4441, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4441, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 939, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "Flute of Xavaric", minCount = 1 } }, { faction = "Alliance" } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4442, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-accept-4442-purified",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4441 } } },
            route = {
                { label = "Eridan Bluewind", mapID = 1448, offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135, y = 0.8151 },
            },
            sourceStep = 4,
            text = "Accept Purified! from Eridan Bluewind.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "accept-4442-purified",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4442, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4441, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 939, state = "activeOrCompleted" } },
                                                                                { all = { { item = { name = "Flute of Xavaric", minCount = 1 } }, { faction = "Alliance" } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4442, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-winterspring-and-felwood-accept-4442-purified" },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-turnin-4442-purified",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4441 } } },
            route = {
                { label = "Eridan Bluewind", mapID = 1448, offMapText = "Travel to Eridan Bluewind in Felwood.", x = 0.5135, y = 0.8151 },
            },
            sourceStep = 5,
            text = "Turn in Purified! to Eridan Bluewind.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "turnin-4442-purified",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4442, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4441, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 939, state = "activeOrCompleted" } },
                                                                                { all = { { item = { name = "Flute of Xavaric", minCount = 1 } }, { faction = "Alliance" } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-4261-level",
            kind = "note",
            checkpointQuest = 4261,
            text = "Reach level 56 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 56 } },
            requiredLevel = 56,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4261, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4261, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4442, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4441, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 939, state = "activeOrCompleted" } },
                                                                                                        { all = { { item = { name = "Flute of Xavaric", minCount = 1 } }, { faction = "Alliance" } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-4261-accept",
            kind = "accept",
            text = "Accept Ancient Spirit from Arei.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } } } },
            route = {
                { mapID = 1448, x = 0.494, y = 0.14400000000000002, label = "Arei", offMapText = "Travel to Arei in Felwood." },
            },
            complete = { quest = { id = 4261, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 4442 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-4261-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4261, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4261, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4442, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4441, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 939, state = "activeOrCompleted" } },
                                                                                                        { all = { { item = { name = "Flute of Xavaric", minCount = 1 } }, { faction = "Alliance" } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-4261-objective",
            kind = "objective",
            text = "Escort Arei to safety. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } } } },
            route = {},
            complete = { quest = { id = 4261, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 4442 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-4261-accept" },
            useClientPin = true,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4261, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4261, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4442, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4441, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 939, state = "activeOrCompleted" } },
                                                                                                        { all = { { item = { name = "Flute of Xavaric", minCount = 1 } }, { faction = "Alliance" } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-4261-turnin",
            kind = "turnin",
            text = "Turn in Ancient Spirit to Kayneth Stillwind.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } } } },
            route = {
                {
                    mapID = 1440,
                    x = 0.852,
                    y = 0.446,
                    label = "Kayneth Stillwind",
                    offMapText = "Travel to Kayneth Stillwind in Ashenvale.",
                },
            },
            complete = { quest = { id = 4261, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 4442 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-4261-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4261, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4261, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4442, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4441, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 939, state = "activeOrCompleted" } },
                                                                                                        { all = { { item = { name = "Flute of Xavaric", minCount = 1 } }, { faction = "Alliance" } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5882, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-accept-5882-salve-via-hunting",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4101 } } },
            route = {
                {
                    label = "Arathandris Silversky",
                    mapID = 1448,
                    offMapText = "Travel to Arathandris Silversky in Felwood.",
                    x = 0.5415,
                    y = 0.8683,
                },
            },
            sourceStep = 6,
            text = "Accept Salve via Hunting from Arathandris Silversky.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "accept-5882-salve-via-hunting",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5882, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5882, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4101, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 5202,
            complete = { level = { min = 49 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-level-before-accept-5202-a-strange-red-key",
            kind = "note",
            requiredLevel = 49,
            requiredQuests = {},
            text = "Reach level 49 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "level-before-accept-5202-a-strange-red-key",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5202, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-accept-5202-a-strange-red-key",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 13,
            text = "Use the Blood Red Key to accept A Strange Red Key.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "accept-5202-a-strange-red-key",
        },
        {
            complete = { quest = { id = 5202, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 49 } } } },
            dependsOn = { "alliance-leveling-era-alliance-winterspring-and-felwood-accept-5202-a-strange-red-key" },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-turnin-5202-a-strange-red-key",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Captured Arko'narin",
                    mapID = 1448,
                    offMapText = "Travel to Captured Arko'narin in Felwood.",
                    x = 0.3621,
                    y = 0.555,
                },
            },
            sourceStep = 14,
            text = "Turn in A Strange Red Key to Captured Arko'narin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "turnin-5202-a-strange-red-key",
        },
        {
            complete = { quest = { id = 8461, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-accept-8461-deadwood-of-the-north",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Nafien", mapID = 1448, offMapText = "Travel to Nafien in Felwood.", x = 0.6477, y = 0.0813 } },
            sourceStep = 16,
            text = "Accept Deadwood of the North from Nafien.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "accept-8461-deadwood-of-the-north",
        },
        {
            complete = { questObjective = { count = 6, id = 8461, index = 1, text = "Deadwood Den Watcher" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-winterspring-and-felwood-accept-8461-deadwood-of-the-north" },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-objective-8461-1-deadwood-den-watcher",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Deadwood Den Watcher", mapID = 1448, offMapText = "Travel to Deadwood Den Watcher.", x = 0.636, y = 0.096 },
            },
            sourceStep = 17,
            text = "Kill 6 Deadwood Den Watcher.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "objective-8461-1-deadwood-den-watcher",
        },
        {
            complete = { questObjective = { count = 6, id = 8461, index = 2, text = "Deadwood Avenger" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-winterspring-and-felwood-accept-8461-deadwood-of-the-north" },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-objective-8461-2-deadwood-avenger",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Deadwood Avenger", mapID = 1448, offMapText = "Travel to Deadwood Avenger.", x = 0.636, y = 0.096 },
            },
            sourceStep = 17,
            text = "Kill 6 Deadwood Avenger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "objective-8461-2-deadwood-avenger",
        },
        {
            complete = { questObjective = { count = 6, id = 8461, index = 3, text = "Deadwood Shaman" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-winterspring-and-felwood-accept-8461-deadwood-of-the-north" },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-objective-8461-3-deadwood-shaman",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Deadwood Shaman", mapID = 1448, offMapText = "Travel to Deadwood Shaman.", x = 0.636, y = 0.096 } },
            sourceStep = 17,
            text = "Kill 6 Deadwood Shaman.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "objective-8461-3-deadwood-shaman",
        },
        {
            complete = { quest = { id = 8461, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-winterspring-and-felwood-accept-8461-deadwood-of-the-north",
                "alliance-leveling-era-alliance-winterspring-and-felwood-objective-8461-1-deadwood-den-watcher",
                "alliance-leveling-era-alliance-winterspring-and-felwood-objective-8461-2-deadwood-avenger",
                "alliance-leveling-era-alliance-winterspring-and-felwood-objective-8461-3-deadwood-shaman",
            },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-turnin-8461-deadwood-of-the-north",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Nafien", mapID = 1448, offMapText = "Travel to Nafien in Felwood.", x = 0.6477, y = 0.0813 } },
            sourceStep = 18,
            text = "Turn in Deadwood of the North to Nafien.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "turnin-8461-deadwood-of-the-north",
        },
        {
            complete = { quest = { id = 8465, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-accept-8465-speak-to-salfa",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8461 } } },
            route = { { label = "Nafien", mapID = 1448, offMapText = "Travel to Nafien in Felwood.", x = 0.6477, y = 0.0813 } },
            sourceStep = 18,
            text = "Accept Speak to Salfa from Nafien.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "accept-8465-speak-to-salfa",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8465, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8465, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8461, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8465, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-winterspring-and-felwood-accept-8465-speak-to-salfa" },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-turnin-8465-speak-to-salfa",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8461 } } },
            route = { { label = "Salfa", mapID = 1452, offMapText = "Travel to Salfa in Winterspring.", x = 0.2774, y = 0.345 } },
            sourceStep = 19,
            text = "Turn in Speak to Salfa to Salfa.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "turnin-8465-speak-to-salfa",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8465, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8465, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8461, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5165, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = { "alliance-leveling-era-alliance-winterspring-and-felwood-accept-5165-dousing-the-flames-of-protection" },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-objective-5165-1-authored-Brazier-of-Pain",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5159 } } },
            route = {
                { label = "Brazier-of-Pain", mapID = 1448, offMapText = "Travel to Brazier-of-Pain.", x = 0.3627, y = 0.5629 },
            },
            text = "Enter Shadow Hold through the cave at Felwood 35.41,58.69. Douse the Brazier of Pain on the upper level with the Purified Moon Well Water.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "objective-5165-1-authored-Brazier-of-Pain",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5165, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5165, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5159, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5165, index = 4 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = { "alliance-leveling-era-alliance-winterspring-and-felwood-accept-5165-dousing-the-flames-of-protection" },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-objective-5165-4-authored-Brazier-of-Hatred",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5159 } } },
            route = {
                { label = "Brazier-of-Hatred", mapID = 1448, offMapText = "Travel to Brazier-of-Hatred.", x = 0.3648, y = 0.5518 },
            },
            text = "Douse the Brazier of Hatred on the upper level with the Purified Moon Well Water.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "objective-5165-4-authored-Brazier-of-Hatred",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5165, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5165, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5159, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5165, index = 3 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = { "alliance-leveling-era-alliance-winterspring-and-felwood-accept-5165-dousing-the-flames-of-protection" },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-objective-5165-3-authored-Brazier-of-Suffering",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5159 } } },
            route = {
                { label = "Brazier-of-Suffering", mapID = 1448, offMapText = "Travel to Brazier-of-Suffering.", x = 0.3673, y = 0.5326 },
            },
            text = "Go around the floor opening at Felwood 38.25,54.06 and follow the passage down. Douse the Brazier of Suffering on the lower level.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "objective-5165-3-authored-Brazier-of-Suffering",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5165, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5165, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5159, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5165, index = 2 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = { "alliance-leveling-era-alliance-winterspring-and-felwood-accept-5165-dousing-the-flames-of-protection" },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-objective-5165-2-authored-Brazier-of-Malice",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5159 } } },
            route = {
                { label = "Brazier-of-Malice", mapID = 1448, offMapText = "Travel to Brazier-of-Malice.", x = 0.3768, y = 0.5269 },
            },
            text = "Douse the Brazier of Malice on the lower level with the Purified Moon Well Water.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "objective-5165-2-authored-Brazier-of-Malice",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5165, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5165, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5159, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5165, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-winterspring-and-felwood-accept-5165-dousing-the-flames-of-protection",
                "alliance-leveling-era-alliance-winterspring-and-felwood-objective-5165-1-authored-Brazier-of-Pain",
                "alliance-leveling-era-alliance-winterspring-and-felwood-objective-5165-4-authored-Brazier-of-Hatred",
                "alliance-leveling-era-alliance-winterspring-and-felwood-objective-5165-3-authored-Brazier-of-Suffering",
                "alliance-leveling-era-alliance-winterspring-and-felwood-objective-5165-2-authored-Brazier-of-Malice",
            },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-turnin-5165-dousing-the-flames-of-protection",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5159 } } },
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 36,
            text = "Turn in Dousing the Flames of Protection to Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "turnin-5165-dousing-the-flames-of-protection",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5165, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5165, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5159, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = {
                any = {
                    { item = { minCount = 1, name = "Deadwood Ritual Totem" } },
                    { quest = { id = 8470, state = "activeOrCompleted" } },
                },
            },
            conditions = { faction = "Alliance" },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8470, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Deadwood Ritual Totem" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-loot-starter-before-accept-8470-deadwood-ritual-totem",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 8470,
            requiredQuests = {},
            text = "Loot Deadwood Ritual Totem from Deadwood Den Watcher, Deadwood Avenger, Deadwood Shaman. Keep it for the next pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "loot-starter-before-accept-8470-deadwood-ritual-totem",
        },
        {
            complete = { quest = { id = 8470, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8470, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Deadwood Ritual Totem" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-accept-8470-deadwood-ritual-totem",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 64,
            text = "Use the Deadwood Ritual Totem to accept Deadwood Ritual Totem.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "accept-8470-deadwood-ritual-totem",
        },
        {
            complete = { quest = { id = 8470, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-winterspring-and-felwood-accept-8470-deadwood-ritual-totem" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8470, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Deadwood Ritual Totem" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-objective-8470-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 69,
            text = "Reach Neutral reputation with Timbermaw Hold before speaking with the furbolgs inside the hold.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "objective-8470-quest-work",
        },
        {
            complete = { quest = { id = 8470, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-winterspring-and-felwood-accept-8470-deadwood-ritual-totem",
                "alliance-leveling-era-alliance-winterspring-and-felwood-objective-8470-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8470, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Deadwood Ritual Totem" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-winterspring-and-felwood-turnin-8470-deadwood-ritual-totem",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Kernda", mapID = 1448, offMapText = "Travel to Kernda in Felwood.", x = 0.6549, y = 0.0348 } },
            sourceStep = 69,
            text = "Turn in Deadwood Ritual Totem to Kernda.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring-and-felwood",
            sourceActionID = "turnin-8470-deadwood-ritual-totem",
        },
        {
            id = "alliance-extra-5242-level",
            kind = "note",
            checkpointQuest = 5242,
            text = "Reach level 58 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 58 } },
            requiredLevel = 58,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5242, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5242, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5165, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-5242-accept",
            kind = "accept",
            text = "Accept A Final Blow from Greta Mosshoof.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            route = {
                {
                    mapID = 1448,
                    x = 0.512,
                    y = 0.8220000000000001,
                    label = "Greta Mosshoof",
                    offMapText = "Travel to Greta Mosshoof in Felwood.",
                },
            },
            complete = { quest = { id = 5242, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 5165 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-5242-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5242, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5242, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5165, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-5242-objective",
            kind = "objective",
            text = "Kill Moora and Salia. Kill Shadow Lord Fel'dan and loot his head.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            route = {
                {
                    mapID = 1448,
                    x = 0.38799999999999996,
                    y = 0.46799999999999997,
                    label = "Salia",
                    offMapText = "Travel to Salia in Felwood.",
                },
            },
            complete = { quest = { id = 5242, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 5165 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-5242-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5242, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5242, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5165, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-5242-turnin",
            kind = "turnin",
            text = "Turn in A Final Blow to Greta Mosshoof.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } } } },
            route = {
                {
                    mapID = 1448,
                    x = 0.512,
                    y = 0.8220000000000001,
                    label = "Greta Mosshoof",
                    offMapText = "Travel to Greta Mosshoof in Felwood.",
                },
            },
            complete = { quest = { id = 5242, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 5165 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-5242-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5242, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5242, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5165, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-5249-objective",
            kind = "objective",
            text = "Find Starfall Village in Winterspring and speak with Wynd Nightchaser. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 53 } } } },
            route = {},
            complete = { quest = { id = 5249, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            excludeWhen = { any = { { quest = { id = 5250, state = "activeOrCompleted" } } } },
            alternativeQuests = { 5244 },
            dependsOn = { "alliance-extra-5249-accept" },
            useClientPin = true,
        },
        {
            id = "alliance-extra-5249-turnin",
            kind = "turnin",
            text = "Turn in To Winterspring! to Wynd Nightchaser.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 53 } } } },
            route = {
                {
                    mapID = 1452,
                    x = 0.52,
                    y = 0.302,
                    label = "Wynd Nightchaser",
                    offMapText = "Travel to Wynd Nightchaser in Winterspring.",
                },
            },
            complete = { quest = { id = 5249, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            excludeWhen = { any = { { quest = { id = 5250, state = "activeOrCompleted" } } } },
            alternativeQuests = { 5244 },
            dependsOn = { "alliance-extra-5249-objective" },
        },
        {
            id = "visit-entry-leveling-era-horde-felwood-and-winterspring",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-felwood-and-winterspring",
            text = "Reach level 52 before the Felwood & Winterspring visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 52 } },
            requiredLevel = 52,
        },
        {
            checkpointQuest = 5155,
            complete = { level = { min = 48 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-level-before-accept-5155-forces-of-jaedenar",
            kind = "note",
            requiredLevel = 48,
            requiredQuests = {},
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "level-before-accept-5155-forces-of-jaedenar",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5155, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-accept-5155-forces-of-jaedenar",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 1,
            text = "Accept Forces of Jaedenar from Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "accept-5155-forces-of-jaedenar",
        },
        {
            complete = { quest = { id = 5156, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-accept-5156-verifying-the-corruption",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Taronn Redfeather",
                    mapID = 1448,
                    offMapText = "Travel to Taronn Redfeather in Felwood.",
                    x = 0.5089,
                    y = 0.8162,
                },
            },
            sourceStep = 2,
            text = "Accept Verifying the Corruption from Taronn Redfeather.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "accept-5156-verifying-the-corruption",
        },
        {
            complete = { quest = { id = 8460, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-accept-8460-timbermaw-ally",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Grazle", mapID = 1448, offMapText = "Travel to Grazle in Felwood.", x = 0.5093, y = 0.8501 } },
            sourceStep = 3,
            text = "Accept Timbermaw Ally from Grazle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "accept-8460-timbermaw-ally",
        },
        {
            complete = { questObjective = { count = 6, id = 8460, index = 1, text = "Deadwood Warrior" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-8460-timbermaw-ally" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-8460-1-deadwood-warrior",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Deadwood Warrior", mapID = 1448, offMapText = "Travel to Deadwood Warrior.", x = 0.484, y = 0.892 },
            },
            sourceStep = 5,
            text = "Kill 6 Deadwood Warrior.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-8460-1-deadwood-warrior",
        },
        {
            complete = { questObjective = { count = 6, id = 8460, index = 2, text = "Deadwood Pathfinder" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-8460-timbermaw-ally" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-8460-2-deadwood-pathfinder",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Deadwood Pathfinder", mapID = 1448, offMapText = "Travel to Deadwood Pathfinder.", x = 0.484, y = 0.892 },
            },
            sourceStep = 5,
            text = "Kill 6 Deadwood Pathfinder.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-8460-2-deadwood-pathfinder",
        },
        {
            complete = { questObjective = { count = 6, id = 8460, index = 3, text = "Deadwood Gardener" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-8460-timbermaw-ally" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-8460-3-deadwood-gardener",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Deadwood Gardener", mapID = 1448, offMapText = "Travel to Deadwood Gardener.", x = 0.484, y = 0.892 },
            },
            sourceStep = 5,
            text = "Kill 6 Deadwood Gardener.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-8460-3-deadwood-gardener",
        },
        {
            complete = { quest = { id = 8460, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-accept-8460-timbermaw-ally",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-8460-1-deadwood-warrior",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-8460-2-deadwood-pathfinder",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-8460-3-deadwood-gardener",
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-turnin-8460-timbermaw-ally",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Grazle", mapID = 1448, offMapText = "Travel to Grazle in Felwood.", x = 0.5093, y = 0.8502 } },
            sourceStep = 6,
            text = "Turn in Timbermaw Ally to Grazle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "turnin-8460-timbermaw-ally",
        },
        {
            complete = { quest = { id = 8462, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-accept-8462-speak-to-nafien",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8460 } } },
            route = { { label = "Grazle", mapID = 1448, offMapText = "Travel to Grazle in Felwood.", x = 0.5093, y = 0.8502 } },
            sourceStep = 6,
            text = "Accept Speak to Nafien from Grazle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "accept-8462-speak-to-nafien",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8462, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8462, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8460, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 4102,
            complete = { level = { min = 48 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-felwood-and-winterspring-level-before-accept-4102-cleansing-felwood",
            kind = "note",
            requiredLevel = 48,
            requiredQuests = {},
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "level-before-accept-4102-cleansing-felwood",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 4102, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-accept-4102-cleansing-felwood",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Maybess Riverbreeze",
                    mapID = 1448,
                    offMapText = "Travel to Maybess Riverbreeze in Felwood.",
                    x = 0.4668,
                    y = 0.8298,
                },
            },
            sourceStep = 8,
            text = "Accept Cleansing Felwood from Maybess Riverbreeze.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "accept-4102-cleansing-felwood",
        },
        {
            complete = { questObjective = { count = 4, id = 5155, index = 1, text = "Jaedenar Hound" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-5155-forces-of-jaedenar" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-5155-1-jaedenar-hound",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Jaedenar Hound", mapID = 1448, offMapText = "Travel to Jaedenar Hound.", x = 0.404, y = 0.576 } },
            sourceStep = 9,
            text = "Kill 4 Jaedenar Hound.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-5155-1-jaedenar-hound",
        },
        {
            complete = { questObjective = { count = 4, id = 5155, index = 2, text = "Jaedenar Guardian" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-5155-forces-of-jaedenar" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-5155-2-jaedenar-guardian",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Jaedenar Guardian", mapID = 1448, offMapText = "Travel to Jaedenar Guardian.", x = 0.404, y = 0.576 },
            },
            sourceStep = 9,
            text = "Kill 4 Jaedenar Guardian.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-5155-2-jaedenar-guardian",
        },
        {
            complete = { questObjective = { count = 6, id = 5155, index = 3, text = "Jaedenar Adept" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-5155-forces-of-jaedenar" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-5155-3-jaedenar-adept",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Jaedenar Adept", mapID = 1448, offMapText = "Travel to Jaedenar Adept.", x = 0.404, y = 0.576 } },
            sourceStep = 9,
            text = "Kill 6 Jaedenar Adept.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-5155-3-jaedenar-adept",
        },
        {
            complete = { questObjective = { count = 6, id = 5155, index = 4, text = "Jaedenar Cultist" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-5155-forces-of-jaedenar" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-5155-4-jaedenar-cultist",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Jaedenar Cultist", mapID = 1448, offMapText = "Travel to Jaedenar Cultist.", x = 0.404, y = 0.576 },
            },
            sourceStep = 9,
            text = "Kill 6 Jaedenar Cultist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-5155-4-jaedenar-cultist",
        },
        {
            checkpointQuest = 4505,
            complete = { level = { min = 49 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-felwood-and-winterspring-level-before-accept-4505-well-of-corruption",
            kind = "note",
            requiredLevel = 49,
            requiredQuests = {},
            text = "Reach level 49 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "level-before-accept-4505-well-of-corruption",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 4505, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 49 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-accept-4505-well-of-corruption",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Winna Hazzard", mapID = 1448, offMapText = "Travel to Winna Hazzard in Felwood.", x = 0.3421, y = 0.5234 },
            },
            sourceStep = 10,
            text = "Accept Well of Corruption from Winna Hazzard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "accept-4505-well-of-corruption",
        },
        {
            complete = { quest = { id = 6162, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 46 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-accept-6162-a-husband-s-last-battle",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Dreka'Sur", mapID = 1448, offMapText = "Travel to Dreka'Sur in Felwood.", x = 0.348, y = 0.5273 } },
            sourceStep = 11,
            text = "Accept A Husband's Last Battle from Dreka'Sur.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "accept-6162-a-husband-s-last-battle",
        },
        {
            complete = { questObjective = { count = 1, id = 4505, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 49 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-4505-well-of-corruption" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-4505-1-hardened-flasket",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Well of Corruption", mapID = 1448, offMapText = "Travel to Well of Corruption.", x = 0.3241, y = 0.6658 },
            },
            sourceStep = 14,
            text = "Use the Hardened Flasket at the corrupt moonwell to obtain a Filled Flasket. Watch for stealthed enemies.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-4505-1-hardened-flasket",
        },
        {
            complete = { questObjective = { count = 1, id = 6162, index = 1, text = "Overlord Ror" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 46 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-6162-a-husband-s-last-battle" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-6162-1-overlord-ror",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Overlord Ror", mapID = 1448, offMapText = "Travel to Overlord Ror.", x = 0.4823, y = 0.9427 } },
            sourceStep = 15,
            text = "Collect 1 Overlord Ror's Claw.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-6162-1-overlord-ror",
        },
        {
            complete = { quest = { id = 5155, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-accept-5155-forces-of-jaedenar",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-5155-1-jaedenar-hound",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-5155-2-jaedenar-guardian",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-5155-3-jaedenar-adept",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-5155-4-jaedenar-cultist",
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-turnin-5155-forces-of-jaedenar",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 17,
            text = "Turn in Forces of Jaedenar to Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "turnin-5155-forces-of-jaedenar",
        },
        {
            complete = { quest = { id = 5157, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-accept-5157-collection-of-the-corrupt-water",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5155 } } },
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 17,
            text = "Accept Collection of the Corrupt Water from Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "accept-5157-collection-of-the-corrupt-water",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5157, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 2, id = 5156, index = 1, text = "Entropic Beast" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-5156-verifying-the-corruption" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-5156-1-entropic-beast",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Entropic Beast", mapID = 1448, offMapText = "Travel to Entropic Beast.", x = 0.426, y = 0.414 } },
            sourceStep = 20,
            text = "Kill 2 Entropic Beast.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-5156-1-entropic-beast",
        },
        {
            complete = { questObjective = { count = 2, id = 5156, index = 2, text = "Entropic Horror" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-5156-verifying-the-corruption" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-5156-2-entropic-horror",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Entropic Horror", mapID = 1448, offMapText = "Travel to Entropic Horror.", x = 0.426, y = 0.414 } },
            sourceStep = 20,
            text = "Kill 2 Entropic Horror.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-5156-2-entropic-horror",
        },
        {
            complete = { questObjective = { count = 15, id = 4102, index = 1, text = "Warpwood Moss Flayer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-4102-cleansing-felwood" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-4102-1-warpwood-moss-flayer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Warpwood Moss Flayer", mapID = 1448, offMapText = "Travel to Warpwood Moss Flayer.", x = 0.5578, y = 0.1685 },
            },
            sourceStep = 21,
            text = "Collect 15 Blood Amber.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-4102-1-warpwood-moss-flayer",
        },
        {
            complete = { quest = { id = 8462, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-8462-speak-to-nafien" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-turnin-8462-speak-to-nafien",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8460 } } },
            route = { { label = "Nafien", mapID = 1448, offMapText = "Travel to Nafien in Felwood.", x = 0.6477, y = 0.0813 } },
            sourceStep = 23,
            text = "Turn in Speak to Nafien to Nafien.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "turnin-8462-speak-to-nafien",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8462, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8462, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8460, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6162, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 46 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-accept-6162-a-husband-s-last-battle",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-6162-1-overlord-ror",
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-turnin-6162-a-husband-s-last-battle",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Dreka'Sur", mapID = 1448, offMapText = "Travel to Dreka'Sur in Felwood.", x = 0.348, y = 0.5273 } },
            sourceStep = 33,
            text = "Turn in A Husband's Last Battle to Dreka'Sur.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "turnin-6162-a-husband-s-last-battle",
        },
        {
            complete = { quest = { id = 4505, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 49 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-accept-4505-well-of-corruption",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-4505-1-hardened-flasket",
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-turnin-4505-well-of-corruption",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Winna Hazzard", mapID = 1448, offMapText = "Travel to Winna Hazzard in Felwood.", x = 0.3421, y = 0.5234 },
            },
            sourceStep = 34,
            text = "Turn in Well of Corruption to Winna Hazzard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "turnin-4505-well-of-corruption",
        },
        {
            complete = { quest = { id = 4102, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-accept-4102-cleansing-felwood",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-4102-1-warpwood-moss-flayer",
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-turnin-4102-cleansing-felwood",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Maybess Riverbreeze",
                    mapID = 1448,
                    offMapText = "Travel to Maybess Riverbreeze in Felwood.",
                    x = 0.4672,
                    y = 0.8307,
                },
            },
            sourceStep = 36,
            text = "Turn in Cleansing Felwood to Maybess Riverbreeze.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "turnin-4102-cleansing-felwood",
        },
        {
            complete = { questObjective = { count = 1, id = 5157, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-accept-5157-collection-of-the-corrupt-water" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-objective-5157-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5155 } } },
            route = {
                {
                    label = "Collection of the Corrupt Water",
                    mapID = 1448,
                    offMapText = "Travel to Collection of the Corrupt Water.",
                    x = 0.3519,
                    y = 0.5995,
                },
            },
            sourceStep = 38,
            text = "Follow the path into Jaedenar. Use the Empty Canteen at the corrupted moonwell to obtain Corrupt Moonwell Water.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "objective-5157-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5157, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5157, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-accept-5157-collection-of-the-corrupt-water",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-5157-quest-work",
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-turnin-5157-collection-of-the-corrupt-water",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5155 } } },
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 38,
            text = "Turn in Collection of the Corrupt Water to Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "turnin-5157-collection-of-the-corrupt-water",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5157, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5158, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-accept-5158-seeking-spiritual-aid",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5157 } } },
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 38,
            text = "Accept Seeking Spiritual Aid from Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "accept-5158-seeking-spiritual-aid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5158, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5156, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-accept-5156-verifying-the-corruption",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-5156-1-entropic-beast",
                "horde-leveling-era-horde-felwood-and-winterspring-objective-5156-2-entropic-horror",
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-turnin-5156-verifying-the-corruption",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Taronn Redfeather",
                    mapID = 1448,
                    offMapText = "Travel to Taronn Redfeather in Felwood.",
                    x = 0.5089,
                    y = 0.8162,
                },
            },
            sourceStep = 39,
            text = "Turn in Verifying the Corruption to Taronn Redfeather.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "turnin-5156-verifying-the-corruption",
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
            complete = { quest = { id = 5158, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ungoro-crater-turnin-5158-seeking-spiritual-aid",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5157 } } },
            route = {
                {
                    label = "Islen Waterseer",
                    mapID = 1413,
                    offMapText = "Travel to Islen Waterseer in The Barrens.",
                    x = 0.6583,
                    y = 0.4378,
                },
            },
            sourceStep = 79,
            text = "Turn in Seeking Spiritual Aid to Islen Waterseer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceActionID = "turnin-5158-seeking-spiritual-aid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5158, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5159, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ungoro-crater-accept-5159-cleansed-water-returns-to-felwood",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5158 } } },
            route = {
                {
                    label = "Islen Waterseer",
                    mapID = 1413,
                    offMapText = "Travel to Islen Waterseer in The Barrens.",
                    x = 0.6583,
                    y = 0.4378,
                },
            },
            sourceStep = 80,
            text = "Accept Cleansed Water Returns to Felwood from Islen Waterseer.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceActionID = "accept-5159-cleansed-water-returns-to-felwood",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5159, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            checkpointQuest = 4506,
            complete = { level = { min = 49 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-level-before-accept-4506-corrupted-sabers",
            kind = "note",
            requiredLevel = 49,
            requiredQuests = {},
            text = "Reach level 49 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "level-before-accept-4506-corrupted-sabers",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4506, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4506, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 4505, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4506, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 49 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-4506-corrupted-sabers",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4505 } } },
            route = {
                { label = "Winna Hazzard", mapID = 1448, offMapText = "Travel to Winna Hazzard in Felwood.", x = 0.3421, y = 0.5234 },
            },
            sourceStep = 1,
            text = "Accept Corrupted Sabers from Winna Hazzard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "accept-4506-corrupted-sabers",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4506, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4506, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 4505, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4506, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 49 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-4506-corrupted-sabers" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-4506-authored-escort",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4505 } } },
            route = {
                { label = "Corrupted Sabers", mapID = 1448, offMapText = "Travel to Corrupted Sabers.", x = 0.3241, y = 0.6658 },
            },
            text = "Use Winna's Kitten Carrier at the corrupt moonwell. Wait for the Corrupted Saber to follow you, then escort it back to Winna Hazzard without losing it.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "objective-4506-authored-escort",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4506, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4506, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 4505, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 5159,
            complete = { level = { min = 48 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-level-before-turnin-5159-cleansed-water-returns-to-felwood",
            kind = "note",
            requiredLevel = 48,
            requiredQuests = {},
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "level-before-turnin-5159-cleansed-water-returns-to-felwood",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5159, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5159, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-turnin-5159-cleansed-water-returns-to-felwood",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5158 } } },
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 2,
            text = "Turn in Cleansed Water Returns to Felwood to Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "turnin-5159-cleansed-water-returns-to-felwood",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5159, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5165, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-5165-dousing-the-flames-of-protection",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5159 } } },
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 2,
            text = "Accept Dousing the Flames of Protection from Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "accept-5165-dousing-the-flames-of-protection",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5165, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5165, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5159, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5887, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-5887-1-deadwood-warrior",
            kind = "note",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4102 } } },
            route = {
                { label = "Deadwood Warrior", mapID = 1448, offMapText = "Travel to Deadwood Warrior.", x = 0.484, y = 0.892 },
            },
            text = "Kill Deadwood Warrior. Loot the starter item here, then use it to accept the quest.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "objective-5887-1-deadwood-warrior",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5887, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5887, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 4102, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5887, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-5887-salve-via-hunting",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4102 } } },
            route = {
                {
                    label = "Maybess Riverbreeze",
                    mapID = 1448,
                    offMapText = "Travel to Maybess Riverbreeze in Felwood.",
                    x = 0.4672,
                    y = 0.8307,
                },
            },
            sourceStep = 4,
            text = "Accept Salve via Hunting from Maybess Riverbreeze.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "accept-5887-salve-via-hunting",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5887, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5887, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 4102, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 5202,
            complete = { level = { min = 49 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-level-before-accept-5202-a-strange-red-key",
            kind = "note",
            requiredLevel = 49,
            requiredQuests = {},
            text = "Reach level 49 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "level-before-accept-5202-a-strange-red-key",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5202, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 49 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-5202-a-strange-red-key",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 11,
            text = "Use the Blood Red Key to accept A Strange Red Key.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "accept-5202-a-strange-red-key",
        },
        {
            complete = { quest = { id = 5202, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 49 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-5202-a-strange-red-key" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-turnin-5202-a-strange-red-key",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Captured Arko'narin",
                    mapID = 1448,
                    offMapText = "Travel to Captured Arko'narin in Felwood.",
                    x = 0.3621,
                    y = 0.555,
                },
            },
            sourceStep = 12,
            text = "Turn in A Strange Red Key to Captured Arko'narin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "turnin-5202-a-strange-red-key",
        },
        {
            complete = { quest = { id = 4506, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 49 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-4506-corrupted-sabers",
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-4506-authored-escort",
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-turnin-4506-corrupted-sabers",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4505 } } },
            route = {
                { label = "Winna Hazzard", mapID = 1448, offMapText = "Travel to Winna Hazzard in Felwood.", x = 0.3421, y = 0.5234 },
            },
            sourceStep = 16,
            text = "Turn in Corrupted Sabers to Winna Hazzard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "turnin-4506-corrupted-sabers",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4506, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4506, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 4505, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8461, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-8461-deadwood-of-the-north",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Nafien", mapID = 1448, offMapText = "Travel to Nafien in Felwood.", x = 0.6477, y = 0.0813 } },
            sourceStep = 19,
            text = "Accept Deadwood of the North from Nafien.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "accept-8461-deadwood-of-the-north",
        },
        {
            complete = { questObjective = { count = 6, id = 8461, index = 1, text = "Deadwood Den Watcher" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-8461-deadwood-of-the-north" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-8461-1-deadwood-den-watcher",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Deadwood Den Watcher", mapID = 1448, offMapText = "Travel to Deadwood Den Watcher.", x = 0.636, y = 0.096 },
            },
            sourceStep = 20,
            text = "Kill 6 Deadwood Den Watcher.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "objective-8461-1-deadwood-den-watcher",
        },
        {
            complete = { questObjective = { count = 6, id = 8461, index = 2, text = "Deadwood Avenger" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-8461-deadwood-of-the-north" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-8461-2-deadwood-avenger",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Deadwood Avenger", mapID = 1448, offMapText = "Travel to Deadwood Avenger.", x = 0.636, y = 0.096 },
            },
            sourceStep = 20,
            text = "Kill 6 Deadwood Avenger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "objective-8461-2-deadwood-avenger",
        },
        {
            complete = { questObjective = { count = 6, id = 8461, index = 3, text = "Deadwood Shaman" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-8461-deadwood-of-the-north" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-8461-3-deadwood-shaman",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Deadwood Shaman", mapID = 1448, offMapText = "Travel to Deadwood Shaman.", x = 0.636, y = 0.096 } },
            sourceStep = 20,
            text = "Kill 6 Deadwood Shaman.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "objective-8461-3-deadwood-shaman",
        },
        {
            complete = { quest = { id = 8461, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-8461-deadwood-of-the-north",
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-8461-1-deadwood-den-watcher",
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-8461-2-deadwood-avenger",
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-8461-3-deadwood-shaman",
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-turnin-8461-deadwood-of-the-north",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Nafien", mapID = 1448, offMapText = "Travel to Nafien in Felwood.", x = 0.6477, y = 0.0813 } },
            sourceStep = 23,
            text = "Turn in Deadwood of the North to Nafien.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "turnin-8461-deadwood-of-the-north",
        },
        {
            complete = { quest = { id = 8465, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-8465-speak-to-salfa",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8461 } } },
            route = { { label = "Nafien", mapID = 1448, offMapText = "Travel to Nafien in Felwood.", x = 0.6477, y = 0.0813 } },
            sourceStep = 23,
            text = "Accept Speak to Salfa from Nafien.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "accept-8465-speak-to-salfa",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8465, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8465, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8461, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8465, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-8465-speak-to-salfa" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-turnin-8465-speak-to-salfa",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8461 } } },
            route = { { label = "Salfa", mapID = 1452, offMapText = "Travel to Salfa in Winterspring.", x = 0.2774, y = 0.345 } },
            sourceStep = 27,
            text = "Turn in Speak to Salfa to Salfa.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "turnin-8465-speak-to-salfa",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8465, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8465, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8461, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5165, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-5165-dousing-the-flames-of-protection" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-5165-1-authored-Brazier-of-Pain",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5159 } } },
            route = {
                { label = "Brazier-of-Pain", mapID = 1448, offMapText = "Travel to Brazier-of-Pain.", x = 0.3627, y = 0.5629 },
            },
            text = "Enter Shadow Hold through the cave at Felwood 35.41,58.69. Douse the Brazier of Pain on the upper level with the Purified Moon Well Water.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "objective-5165-1-authored-Brazier-of-Pain",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5165, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5165, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5159, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5165, index = 4 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-5165-dousing-the-flames-of-protection" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-5165-4-authored-Brazier-of-Hatred",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5159 } } },
            route = {
                { label = "Brazier-of-Hatred", mapID = 1448, offMapText = "Travel to Brazier-of-Hatred.", x = 0.3648, y = 0.5518 },
            },
            text = "Douse the Brazier of Hatred on the upper level with the Purified Moon Well Water.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "objective-5165-4-authored-Brazier-of-Hatred",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5165, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5165, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5159, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5165, index = 3 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-5165-dousing-the-flames-of-protection" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-5165-3-authored-Brazier-of-Suffering",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5159 } } },
            route = {
                { label = "Brazier-of-Suffering", mapID = 1448, offMapText = "Travel to Brazier-of-Suffering.", x = 0.3673, y = 0.5326 },
            },
            text = "Go around the floor opening at Felwood 38.25,54.06 and follow the passage down. Douse the Brazier of Suffering on the lower level.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "objective-5165-3-authored-Brazier-of-Suffering",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5165, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5165, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5159, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5165, index = 2 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-5165-dousing-the-flames-of-protection" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-5165-2-authored-Brazier-of-Malice",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5159 } } },
            route = {
                { label = "Brazier-of-Malice", mapID = 1448, offMapText = "Travel to Brazier-of-Malice.", x = 0.3768, y = 0.5269 },
            },
            text = "Douse the Brazier of Malice on the lower level with the Purified Moon Well Water.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "objective-5165-2-authored-Brazier-of-Malice",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5165, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5165, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5159, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5165, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-5165-dousing-the-flames-of-protection",
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-5165-1-authored-Brazier-of-Pain",
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-5165-4-authored-Brazier-of-Hatred",
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-5165-3-authored-Brazier-of-Suffering",
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-5165-2-authored-Brazier-of-Malice",
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-turnin-5165-dousing-the-flames-of-protection",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5159 } } },
            route = {
                { label = "Greta Mosshoof", mapID = 1448, offMapText = "Travel to Greta Mosshoof in Felwood.", x = 0.5121, y = 0.8211 },
            },
            sourceStep = 54,
            text = "Turn in Dousing the Flames of Protection to Greta Mosshoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "turnin-5165-dousing-the-flames-of-protection",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5165, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5165, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5159, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = {
                any = {
                    { item = { minCount = 1, name = "Deadwood Ritual Totem" } },
                    { quest = { id = 8470, state = "activeOrCompleted" } },
                },
            },
            conditions = { faction = "Horde" },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8470, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Deadwood Ritual Totem" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-loot-starter-before-accept-8470-deadwood-ritual-totem",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 8470,
            requiredQuests = {},
            text = "Loot Deadwood Ritual Totem from Deadwood Den Watcher, Deadwood Avenger, Deadwood Shaman. Keep it for the next pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "loot-starter-before-accept-8470-deadwood-ritual-totem",
        },
        {
            complete = { quest = { id = 8470, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8470, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Deadwood Ritual Totem" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-8470-deadwood-ritual-totem",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 60,
            text = "Use the Deadwood Ritual Totem to accept Deadwood Ritual Totem.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "accept-8470-deadwood-ritual-totem",
        },
        {
            complete = { quest = { id = 8470, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-8470-deadwood-ritual-totem" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8470, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Deadwood Ritual Totem" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-8470-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 64,
            text = "Reach Neutral reputation with Timbermaw Hold before speaking with the furbolgs inside the hold.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "objective-8470-quest-work",
        },
        {
            complete = { quest = { id = 8470, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-8470-deadwood-ritual-totem",
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-8470-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8470, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Deadwood Ritual Totem" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-turnin-8470-deadwood-ritual-totem",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Kernda", mapID = 1448, offMapText = "Travel to Kernda in Felwood.", x = 0.6549, y = 0.0348 } },
            sourceStep = 64,
            text = "Turn in Deadwood Ritual Totem to Kernda.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "turnin-8470-deadwood-ritual-totem",
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
            id = "horde-extra-5242-level",
            kind = "note",
            checkpointQuest = 5242,
            text = "Reach level 58 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 58 } },
            requiredLevel = 58,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5242, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5242, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5165, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-5242-accept",
            kind = "accept",
            text = "Accept A Final Blow from Greta Mosshoof.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            route = {
                {
                    mapID = 1448,
                    x = 0.512,
                    y = 0.8220000000000001,
                    label = "Greta Mosshoof",
                    offMapText = "Travel to Greta Mosshoof in Felwood.",
                },
            },
            complete = { quest = { id = 5242, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 5165 } } },
            useClientText = false,
            dependsOn = { "horde-extra-5242-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5242, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5242, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5165, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-5242-objective",
            kind = "objective",
            text = "Kill Moora and Salia. Kill Shadow Lord Fel'dan and loot his head.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            route = {
                {
                    mapID = 1448,
                    x = 0.38799999999999996,
                    y = 0.46799999999999997,
                    label = "Salia",
                    offMapText = "Travel to Salia in Felwood.",
                },
            },
            complete = { quest = { id = 5242, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 5165 } } },
            useClientText = false,
            dependsOn = { "horde-extra-5242-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5242, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5242, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5165, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-5242-turnin",
            kind = "turnin",
            text = "Turn in A Final Blow to Greta Mosshoof.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            route = {
                {
                    mapID = 1448,
                    x = 0.512,
                    y = 0.8220000000000001,
                    label = "Greta Mosshoof",
                    offMapText = "Travel to Greta Mosshoof in Felwood.",
                },
            },
            complete = { quest = { id = 5242, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 5165 } } },
            useClientText = false,
            dependsOn = { "horde-extra-5242-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5242, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5242, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5165, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5159, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5158, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5157, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5155, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
    },
})
