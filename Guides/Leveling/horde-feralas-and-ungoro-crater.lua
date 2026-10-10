local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Feralas & Un'Goro Crater",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-feralas-and-ungoro-crater",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 49 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-3062-dark-heart",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3062,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.4383, mapID = 1444, label = "Talo Thornhoof", offMapText = "Travel to Talo Thornhoof in Feralas.", x = 0.7618 },
            },
            text = "Accept Dark Heart from Talo Thornhoof.",
            id = "accept-3062-dark-heart",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3062, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.4383, mapID = 1444, label = "Talo Thornhoof", offMapText = "Travel to Talo Thornhoof in Feralas.", x = 0.7618 },
            },
            text = "Accept Vengeance on the Northspring from Talo Thornhoof.",
            id = "accept-3063-vengeance-on-the-northspring",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3063, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 40,
            route = {
                { y = 0.4291, mapID = 1444, label = "Jangdor Swiftstrider", offMapText = "Travel to Jangdor Swiftstrider in Feralas.", x = 0.7443 },
            },
            text = "Accept Improved Quality from Jangdor Swiftstrider.",
            id = "accept-7734-improved-quality",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7734, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2822 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { mapID = 1425, x = 0.574, y = 0.504, label = "Wildkin Muisek", offMapText = "Travel to Wildkin Muisek." },
            },
            text = "For Testing the Vessel: Travel to the Hinterlands, and locate the Wildkin. Kill 10, and use the Muisek Vessel to shrink and capture the fallen Wildkin.",
            id = "objective-3123-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3123, state = "complete" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3122 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            text = "Turn in Testing the Vessel to Witch Doctor Uzer'i.",
            id = "turnin-3123-testing-the-vessel",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3123, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3122 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-3123-quest-work" },
        },
        {
            priority = 70,
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            text = "Accept Hippogryph Muisek from Witch Doctor Uzer'i.",
            id = "accept-3124-hippogryph-muisek",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3124, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3123 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            text = "Accept Natural Materials from Witch Doctor Uzer'i.",
            id = "accept-3128-natural-materials",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3128, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3122 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            text = "Collect 10 Hippogryph Muisek.",
            route = {
                { y = 0.624, mapID = 1444, label = "Frayfeather Patriarch", offMapText = "Travel to Frayfeather Patriarch.", x = 0.574 },
            },
            dependsOn = { "accept-3124-hippogryph-muisek" },
            id = "objective-3124-1-frayfeather-patriarch",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3124, text = "Frayfeather Patriarch", index = 1, count = 10 },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3123 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 100,
            text = "Collect 20 Resilient Sinew.",
            route = {
                { y = 0.624, mapID = 1444, label = "Resilient Sinew", offMapText = "Travel to Resilient Sinew.", x = 0.574 },
            },
            dependsOn = { "accept-3128-natural-materials" },
            id = "objective-3128-3-resilient-sinew",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3128, text = "Resilient Sinew", index = 3, count = 20 },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3122 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            text = "Collect 40 Metallic Fragments.",
            route = {
                { y = 0.624, mapID = 1444, label = "Metallic Fragments", offMapText = "Travel to Metallic Fragments.", x = 0.574 },
            },
            dependsOn = { "accept-3128-natural-materials" },
            id = "objective-3128-4-metallic-fragments",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3128, text = "Metallic Fragments", index = 4, count = 40 },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3122 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 120,
            text = "Turn in Hippogryph Muisek to Witch Doctor Uzer'i.",
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            dependsOn = { "accept-3124-hippogryph-muisek", "objective-3124-1-frayfeather-patriarch" },
            id = "turnin-3124-hippogryph-muisek",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3124, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3123 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            text = "Accept Faerie Dragon Muisek from Witch Doctor Uzer'i.",
            id = "accept-3125-faerie-dragon-muisek",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3125, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3124 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            text = "Collect 8 Faerie Dragon Muisek.",
            route = {
                { y = 0.468, mapID = 1444, label = "Sprite Darter", offMapText = "Travel to Sprite Darter.", x = 0.694 },
            },
            dependsOn = { "accept-3125-faerie-dragon-muisek" },
            id = "objective-3125-1-sprite-darter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3125, text = "Sprite Darter", index = 1, count = 8 },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3124 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            text = "Collect 6 Encrusted Minerals.",
            route = {
                { y = 0.468, mapID = 1444, label = "Encrusted Minerals", offMapText = "Travel to Encrusted Minerals.", x = 0.694 },
            },
            dependsOn = { "accept-3128-natural-materials" },
            id = "objective-3128-2-encrusted-minerals",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3128, text = "Encrusted Minerals", index = 2, count = 6 },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3122 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            text = "Turn in Faerie Dragon Muisek to Witch Doctor Uzer'i.",
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            dependsOn = { "accept-3125-faerie-dragon-muisek", "objective-3125-1-sprite-darter" },
            id = "turnin-3125-faerie-dragon-muisek",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3125, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3124 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            text = "Accept Treant Muisek from Witch Doctor Uzer'i.",
            id = "accept-3126-treant-muisek",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3126, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3125 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-3126-treant-muisek" },
            id = "objective-3126-1-wandering-forest-walker",
            text = "Collect 3 Treant Muisek.",
            useClientPin = true,
            complete = {
                questObjective = { id = 3126, text = "Wandering Forest Walker", index = 1, count = 3 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            priority = 180,
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3125 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            dependsOn = { "accept-3128-natural-materials" },
            id = "objective-3128-1-splintered-log",
            text = "Collect 2 Splintered Log.",
            useClientPin = true,
            complete = {
                questObjective = { id = 3128, text = "Splintered Log", index = 1, count = 2 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            priority = 190,
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3122 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            priority = 200,
            text = "Turn in Treant Muisek to Witch Doctor Uzer'i.",
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            dependsOn = { "accept-3126-treant-muisek", "objective-3126-1-wandering-forest-walker" },
            id = "turnin-3126-treant-muisek",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3126, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3125 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            text = "Accept Mountain Giant Muisek from Witch Doctor Uzer'i.",
            id = "accept-3127-mountain-giant-muisek",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3127, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3126 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            text = "Turn in Natural Materials to Witch Doctor Uzer'i.",
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            dependsOn = {
                "accept-3128-natural-materials",
                "objective-3128-3-resilient-sinew",
                "objective-3128-4-metallic-fragments",
                "objective-3128-2-encrusted-minerals",
                "objective-3128-1-splintered-log",
            },
            id = "turnin-3128-natural-materials",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3128, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3122 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-7003-zapped-giants",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7003,
            priority = 230,
        },
        {
            priority = 240,
            route = {
                { y = 0.4342, mapID = 1444, label = "Zorbin Fandazzle", offMapText = "Travel to Zorbin Fandazzle in Feralas.", x = 0.4481 },
            },
            text = "Accept Zapped Giants from Zorbin Fandazzle.",
            id = "accept-7003-zapped-giants",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 7003, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            route = {
                { y = 0.4342, mapID = 1444, label = "Zorbin Fandazzle", offMapText = "Travel to Zorbin Fandazzle in Feralas.", x = 0.4481 },
            },
            text = "Accept Fuel for the Zapping from Zorbin Fandazzle.",
            id = "accept-7721-fuel-for-the-zapping",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 7721, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            text = "Use the Ultra-Shrinker on giants along the coast, then kill them and collect 15 Miniaturization Residues.",
            route = {
                { y = 0.498, mapID = 1444, label = "Zorbin's Ultra-Shrinker", offMapText = "Travel to Zorbin's Ultra-Shrinker.", x = 0.444 },
            },
            dependsOn = { "accept-7003-zapped-giants" },
            id = "objective-7003-1-zorbin-s-ultra-shrinker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                questObjective = { id = 7003, text = "Zorbin's Ultra-Shrinker", index = 1, count = 15 },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-7721-1-water-elemental-core",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            text = "Collect 10 Water Elemental Core.",
            complete = {
                questObjective = { id = 7721, index = 1, text = "Water Elemental Core", count = 10 },
            },
            route = {
                { mapID = 1444, x = 0.442, y = 0.506, label = "Water Elemental Core", offMapText = "Travel to Water Elemental Core." },
            },
            sourceStep = 14,
            priority = 270,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7721-fuel-for-the-zapping" },
        },
        {
            priority = 280,
            text = "Turn in Zapped Giants to Zorbin Fandazzle.",
            route = {
                { y = 0.4342, mapID = 1444, label = "Zorbin Fandazzle", offMapText = "Travel to Zorbin Fandazzle in Feralas.", x = 0.4481 },
            },
            dependsOn = { "accept-7003-zapped-giants", "objective-7003-1-zorbin-s-ultra-shrinker" },
            id = "turnin-7003-zapped-giants",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 7003, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 290,
            text = "Turn in Fuel for the Zapping to Zorbin Fandazzle.",
            route = {
                { y = 0.4342, mapID = 1444, label = "Zorbin Fandazzle", offMapText = "Travel to Zorbin Fandazzle in Feralas.", x = 0.4481 },
            },
            dependsOn = { "accept-7721-fuel-for-the-zapping", "objective-7721-1-water-elemental-core" },
            id = "turnin-7721-fuel-for-the-zapping",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 7721, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            route = {
                { y = 0.4342, mapID = 1444, label = "Zorbin Fandazzle", offMapText = "Travel to Zorbin Fandazzle in Feralas.", x = 0.4481 },
            },
            text = "Accept Again With the Zapped Giants from Zorbin Fandazzle.",
            id = "accept-7725-again-with-the-zapped-giants",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 7725, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7003 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-7738-perfect-yeti-hide",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Loot Perfect Yeti Hide from Ferocious Rage Scar. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Perfect Yeti Hide", minCount = 1 },
                    },
                    {
                        quest = { id = 7738, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 310,
        },
        {
            priority = 320,
            text = "Use the Perfect Yeti Hide to accept Perfect Yeti Hide.",
            id = "accept-7738-perfect-yeti-hide",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7738, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2822 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-7734-1-rage-scar-yeti-hide",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 10 Rage Scar Yeti Hide.",
            complete = {
                questObjective = { id = 7734, index = 1, text = "Rage Scar Yeti Hide", count = 10 },
            },
            route = {
                { mapID = 1444, x = 0.514, y = 0.324, label = "Rage Scar Yeti Hide", offMapText = "Travel to Rage Scar Yeti Hide." },
            },
            sourceStep = 19,
            priority = 330,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2822 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7734-improved-quality" },
        },
        {
            priority = 340,
            text = "Collect 7 Mountain Giant Muisek.",
            route = {
                { mapID = 1444, x = 0.402, y = 0.258, label = "Mountain Giant Muisek", offMapText = "Travel to Mountain Giant Muisek." },
            },
            dependsOn = { "accept-3127-mountain-giant-muisek" },
            id = "objective-3127-1-zorbin-s-ultra-shrinker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3127, text = "Zorbin's Ultra-Shrinker", index = 1, count = 7 },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3126 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            text = "Kill Northspring harpies in northern Feralas and loot the Horn of Hatetalon.",
            route = {
                { mapID = 1444, x = 0.4, y = 0.152, label = "Northspring harpies", offMapText = "Travel to Northspring harpies." },
            },
            dependsOn = { "accept-3062-dark-heart" },
            id = "objective-3062-1-northspring-harpy",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Horn of Hatetalon", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 3062, state = "complete" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            sourceInstructionStep = 23,
            sourceInstructionIndex = 1,
            checkpointQuest = 3062,
            instructionOnly = true,
            rememberPreparation = 3062,
        },
        {
            id = "objective-3063-1-northspring-harpy",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 4 Northspring Harpy.",
            complete = {
                questObjective = { id = 3063, index = 1, text = "Northspring Harpy", count = 4 },
            },
            route = {
                { mapID = 1444, x = 0.4, y = 0.152, label = "Northspring Harpy", offMapText = "Travel to Northspring Harpy." },
            },
            sourceStep = 24,
            priority = 360,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3063-vengeance-on-the-northspring" },
        },
        {
            priority = 370,
            text = "Use the Horn of Hatetalon at the northern ruins to summon Edana Hatetalon. Defeat her and collect her Dark Heart. Bring a group if needed.",
            route = {
                { mapID = 1444, x = 0.40549999999999997, y = 0.0859, label = "Edana Hatetalon", offMapText = "Travel to Edana Hatetalon." },
            },
            dependsOn = { "accept-3062-dark-heart" },
            id = "objective-3062-1-horn-of-hatetalon",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3062, index = 1, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-3063-2-northspring-roguefeather",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 4 Northspring Roguefeather.",
            complete = {
                questObjective = { id = 3063, index = 2, text = "Northspring Roguefeather", count = 4 },
            },
            route = {
                { mapID = 1444, x = 0.4, y = 0.152, label = "Northspring Roguefeather", offMapText = "Travel to Northspring Roguefeather." },
            },
            sourceStep = 24,
            priority = 380,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3063-vengeance-on-the-northspring" },
        },
        {
            id = "objective-3063-3-northspring-slayer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 4 Northspring Slayer.",
            complete = {
                questObjective = { id = 3063, index = 3, text = "Northspring Slayer", count = 4 },
            },
            route = {
                { mapID = 1444, x = 0.4, y = 0.152, label = "Northspring Slayer", offMapText = "Travel to Northspring Slayer." },
            },
            sourceStep = 24,
            priority = 390,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3063-vengeance-on-the-northspring" },
        },
        {
            id = "objective-3063-4-northspring-windcaller",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 4 Northspring Windcaller.",
            complete = {
                questObjective = { id = 3063, index = 4, text = "Northspring Windcaller", count = 4 },
            },
            route = {
                { mapID = 1444, x = 0.4, y = 0.152, label = "Northspring Windcaller", offMapText = "Travel to Northspring Windcaller." },
            },
            sourceStep = 24,
            priority = 400,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3063-vengeance-on-the-northspring" },
        },
        {
            id = "level-before-objective-4284-1-red-power-crystal",
            kind = "note",
            text = "Reach level 47 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 47 },
            },
            requiredLevel = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4284,
            priority = 410,
        },
        {
            priority = 420,
            route = {
                { y = 0.2891, mapID = 1446, label = "Red Power Crystal", offMapText = "Travel to Red Power Crystal.", x = 0.523 },
            },
            text = "Collect 7 Red Power Crystal. Loot the starter item here, then use it to accept the quest.",
            id = "objective-4284-1-red-power-crystal",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4284, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            route = {
                { mapID = 1413, x = 0.625, y = 0.38539999999999996, label = "Stone Circle", offMapText = "Travel to Stone Circle." },
            },
            text = "For The Stone Circle: Retrieve the Stone Circle from Marvon Rivetseeker's workshop in Ratchet.",
            id = "objective-3444-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 46 },
                    },
                },
            },
            complete = {
                quest = { id = 3444, state = "complete" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3380, 3445 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            route = {
                { y = 0.4593, mapID = 1446, label = "Marvon Rivetseeker", offMapText = "Travel to Marvon Rivetseeker in Tanaris.", x = 0.5271 },
            },
            text = "Turn in The Stone Circle to Marvon Rivetseeker.",
            id = "turnin-3444-the-stone-circle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 46 },
                    },
                },
            },
            complete = {
                quest = { id = 3444, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3380, 3445 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-3444-quest-work" },
        },
        {
            priority = 450,
            route = {
                { y = 0.7596, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            text = "Accept The Apes of Un'Goro from Torwa Pathfinder.",
            id = "accept-4289-the-apes-of-un-goro",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4289, state = "activeOrCompleted" },
            },
            sourceStep = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-4290-the-fare-of-lar-korwi",
            kind = "note",
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 48 },
            },
            requiredLevel = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4290,
            priority = 460,
        },
        {
            priority = 470,
            route = {
                { y = 0.7596, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            text = "Accept The Fare of Lar'korwi from Torwa Pathfinder.",
            id = "accept-4290-the-fare-of-lar-korwi",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 4290, state = "activeOrCompleted" },
            },
            sourceStep = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 480,
            route = {
                { y = 0.685, mapID = 1449, label = "It's a Secret to Everybody", offMapText = "Travel to It's a Secret to Everybody.", x = 0.6302 },
            },
            text = "Accept It's a Secret to Everybody.",
            id = "accept-3844-it-s-a-secret-to-everybody",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3844, state = "activeOrCompleted" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 490,
            text = "Turn in It's a Secret to Everybody.",
            route = {
                { y = 0.6902, mapID = 1449, label = "It's a Secret to Everybody", offMapText = "Travel to It's a Secret to Everybody.", x = 0.6312 },
            },
            dependsOn = { "accept-3844-it-s-a-secret-to-everybody" },
            id = "turnin-3844-it-s-a-secret-to-everybody",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3844, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            route = {
                { y = 0.6902, mapID = 1449, label = "It's a Secret to Everybody", offMapText = "Travel to It's a Secret to Everybody.", x = 0.6312 },
            },
            text = "Accept It's a Secret to Everybody.",
            id = "accept-3845-it-s-a-secret-to-everybody",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3845, state = "activeOrCompleted" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3844 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4290-1-piece-of-threshadon-carcass",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            text = "Collect 1 Piece of Threshadon Carcass.",
            complete = {
                questObjective = { id = 4290, index = 1, text = "Piece of Threshadon Carcass", count = 1 },
            },
            route = {
                { mapID = 1449, x = 0.6875, y = 0.5666, label = "Piece of Threshadon Carcass", offMapText = "Travel to Piece of Threshadon Carcass." },
            },
            sourceStep = 59,
            priority = 510,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4290-the-fare-of-lar-korwi" },
        },
        {
            priority = 520,
            text = "Turn in The Fare of Lar'korwi to Torwa Pathfinder.",
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            dependsOn = { "accept-4290-the-fare-of-lar-korwi", "objective-4290-1-piece-of-threshadon-carcass" },
            id = "turnin-4290-the-fare-of-lar-korwi",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 4290, state = "completed" },
            },
            sourceStep = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            text = "Accept The Scent of Lar'korwi from Torwa Pathfinder.",
            id = "accept-4291-the-scent-of-lar-korwi",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 4291, state = "activeOrCompleted" },
            },
            sourceStep = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4290 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            text = "Collect 2 Ravasaur Pheromone Gland.",
            route = {
                { y = 0.73, mapID = 1449, label = "Lar'korwi Mate", offMapText = "Travel to Lar'korwi Mate.", x = 0.672 },
            },
            dependsOn = { "accept-4291-the-scent-of-lar-korwi" },
            id = "objective-4291-1-lar-korwi-mate",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4291, text = "Lar'korwi Mate", index = 1, count = 2 },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4290 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-objective-4300-1-white-ravasaur-claw",
            kind = "note",
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 48 },
            },
            requiredLevel = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4300,
            priority = 550,
        },
        {
            id = "objective-4300-1-white-ravasaur-claw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 8 White Ravasaur Claw.",
            complete = {
                questObjective = { id = 4300, index = 1, text = "White Ravasaur Claw", count = 8 },
            },
            route = {
                { mapID = 1449, x = 0.65, y = 0.7040000000000001, label = "White Ravasaur Claw", offMapText = "Travel to White Ravasaur Claw." },
            },
            sourceStep = 62,
            priority = 560,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-3884-williden-s-journal",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Horde" },
            text = "Loot A Mangled Journal from Ravasaur Hunter, Venomhide Ravasaur, Bloodpetal Lasher, Bloodpetal Flayer, Bloodpetal Thresher, Bloodpetal Trapper, Un'Goro Stomper, Un'Goro Gorilla, Un'Goro Thunderer, Tar Beast, Gorishi Worker, Young Diemetradon, Fledgling Pterrordax, Pterrordax, Frenzied Pterrordax, Lar'korwi Mate, Lar'korwi. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "A Mangled Journal", minCount = 1 },
                    },
                    {
                        quest = { id = 3884, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 570,
        },
        {
            priority = 580,
            text = "Use the A Mangled Journal to accept Williden's Journal.",
            id = "accept-3884-williden-s-journal",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 3884, state = "activeOrCompleted" },
            },
            sourceStep = 63,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            text = "Turn in The Scent of Lar'korwi to Torwa Pathfinder.",
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7163 },
            },
            dependsOn = { "accept-4291-the-scent-of-lar-korwi", "objective-4291-1-lar-korwi-mate" },
            id = "turnin-4291-the-scent-of-lar-korwi",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 4291, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4290 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7163 },
            },
            text = "Accept The Bait for Lar'korwi from Torwa Pathfinder.",
            id = "accept-4292-the-bait-for-lar-korwi",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 4292, state = "activeOrCompleted" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4291 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-3845-it-s-a-secret-to-everybody" },
            id = "objective-3845-1-a-small-pack",
            text = "Collect 1 Large Compass.",
            useClientPin = true,
            complete = {
                questObjective = { id = 3845, text = "A Small Pack", index = 1, count = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            priority = 610,
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3844 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            id = "objective-3845-2-curled-map-parchment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 1 Curled Map Parchment.",
            complete = {
                questObjective = { id = 3845, index = 2, text = "Curled Map Parchment", count = 1 },
            },
            sourceStep = 67,
            priority = 620,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3844 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-3845-it-s-a-secret-to-everybody" },
        },
        {
            id = "objective-3845-3-lion-headed-key",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 1 Lion-headed Key.",
            complete = {
                questObjective = { id = 3845, index = 3, text = "Lion-headed Key", count = 1 },
            },
            sourceStep = 67,
            priority = 630,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3844 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-3845-it-s-a-secret-to-everybody" },
        },
        {
            priority = 640,
            text = "Turn in It's a Secret to Everybody to Linken.",
            route = {
                { y = 0.0811, mapID = 1449, label = "Linken", offMapText = "Travel to Linken in Un'Goro Crater.", x = 0.4466 },
            },
            dependsOn = {
                "accept-3845-it-s-a-secret-to-everybody",
                "objective-3845-1-a-small-pack",
                "objective-3845-2-curled-map-parchment",
                "objective-3845-3-lion-headed-key",
            },
            id = "turnin-3845-it-s-a-secret-to-everybody",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3845, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3844 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            route = {
                { y = 0.0811, mapID = 1449, label = "Linken", offMapText = "Travel to Linken in Un'Goro Crater.", x = 0.4466 },
            },
            text = "Accept It's a Secret to Everybody from Linken.",
            id = "accept-3908-it-s-a-secret-to-everybody",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3908, state = "activeOrCompleted" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3845 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            text = "Turn in Williden's Journal to Williden Marshal.",
            route = {
                { y = 0.0714, mapID = 1449, label = "Williden Marshal", offMapText = "Travel to Williden Marshal in Un'Goro Crater.", x = 0.4395 },
            },
            dependsOn = { "accept-3884-williden-s-journal" },
            id = "turnin-3884-williden-s-journal",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 3884, state = "completed" },
            },
            sourceStep = 70,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 670,
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            text = "Accept Crystals of Power from J.D. Collie.",
            id = "accept-4284-crystals-of-power",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4284, state = "activeOrCompleted" },
            },
            sourceStep = 71,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 680,
            text = "Turn in Crystals of Power to J.D. Collie.",
            route = {
                { y = 0.027, mapID = 1449, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater.", x = 0.4192 },
            },
            dependsOn = { "accept-4284-crystals-of-power" },
            id = "turnin-4284-crystals-of-power",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4284, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            text = "Turn in Vengeance on the Northspring to Talo Thornhoof.",
            route = {
                { y = 0.4383, mapID = 1444, label = "Talo Thornhoof", offMapText = "Travel to Talo Thornhoof in Feralas.", x = 0.7618 },
            },
            dependsOn = {
                "accept-3063-vengeance-on-the-northspring",
                "objective-3063-1-northspring-harpy",
                "objective-3063-2-northspring-roguefeather",
                "objective-3063-3-northspring-slayer",
                "objective-3063-4-northspring-windcaller",
            },
            id = "turnin-3063-vengeance-on-the-northspring",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3063, state = "completed" },
            },
            sourceStep = 76,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 700,
            route = {
                { y = 0.4383, mapID = 1444, label = "Talo Thornhoof", offMapText = "Travel to Talo Thornhoof in Feralas.", x = 0.7618 },
            },
            text = "Accept The Strength of Corruption from Talo Thornhoof.",
            id = "accept-4120-the-strength-of-corruption",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4120, state = "activeOrCompleted" },
            },
            sourceStep = 76,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 710,
            text = "Turn in Dark Heart to Talo Thornhoof.",
            route = {
                { y = 0.4383, mapID = 1444, label = "Talo Thornhoof", offMapText = "Travel to Talo Thornhoof in Feralas.", x = 0.7618 },
            },
            dependsOn = { "accept-3062-dark-heart", "objective-3062-1-northspring-harpy", "objective-3062-1-horn-of-hatetalon" },
            id = "turnin-3062-dark-heart",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3062, state = "completed" },
            },
            sourceStep = 76,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 720,
            text = "Turn in Improved Quality to Jangdor Swiftstrider.",
            route = {
                { y = 0.4291, mapID = 1444, label = "Jangdor Swiftstrider", offMapText = "Travel to Jangdor Swiftstrider in Feralas.", x = 0.7443 },
            },
            dependsOn = { "accept-7734-improved-quality", "objective-7734-1-rage-scar-yeti-hide" },
            id = "turnin-7734-improved-quality",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7734, state = "completed" },
            },
            sourceStep = 77,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2822 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 730,
            text = "Turn in Perfect Yeti Hide to Jangdor Swiftstrider.",
            route = {
                { y = 0.4291, mapID = 1444, label = "Jangdor Swiftstrider", offMapText = "Travel to Jangdor Swiftstrider in Feralas.", x = 0.7443 },
            },
            dependsOn = { "accept-7738-perfect-yeti-hide" },
            id = "turnin-7738-perfect-yeti-hide",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7738, state = "completed" },
            },
            sourceStep = 77,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2822 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 740,
            text = "Turn in Mountain Giant Muisek to Witch Doctor Uzer'i.",
            route = {
                { y = 0.4337, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            dependsOn = { "accept-3127-mountain-giant-muisek", "objective-3127-1-zorbin-s-ultra-shrinker" },
            id = "turnin-3127-mountain-giant-muisek",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3127, state = "completed" },
            },
            sourceStep = 78,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3126 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            route = {
                { y = 0.4337, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            text = "Accept Weapons of Spirit from Witch Doctor Uzer'i.",
            id = "accept-3129-weapons-of-spirit",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3129, state = "activeOrCompleted" },
            },
            sourceStep = 78,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 3127, 3128 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 760,
            text = "Turn in Weapons of Spirit to Witch Doctor Uzer'i.",
            route = {
                { y = 0.4337, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            dependsOn = { "accept-3129-weapons-of-spirit" },
            id = "turnin-3129-weapons-of-spirit",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3129, state = "completed" },
            },
            sourceStep = 79,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 3127, 3128 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 770,
            route = {
                { y = 0.6912, mapID = 1454, label = "Pupellyverbos Port", offMapText = "Travel to Pupellyverbos Port.", x = 0.4958 },
            },
            text = "Collect 12 Pupellyverbos Port.",
            id = "objective-580-1-pupellyverbos-port",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                questObjective = { id = 580, text = "Pupellyverbos Port", index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 780,
            route = {
                { y = 0.3659, mapID = 1454, label = "Dran Droffers", offMapText = "Travel to Dran Droffers in Orgrimmar.", x = 0.5948 },
            },
            text = "Turn in Ripple Delivery to Dran Droffers.",
            id = "turnin-81-ripple-delivery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 81, state = "completed" },
            },
            sourceStep = 90,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 77 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 790,
            route = {
                { y = 0.3409, mapID = 1454, label = "Jes'rimon", offMapText = "Travel to Jes'rimon in Orgrimmar.", x = 0.5551 },
            },
            text = "Turn in Bone-Bladed Weapons to Jes'rimon.",
            id = "turnin-4300-bone-bladed-weapons",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4300, state = "completed" },
            },
            sourceStep = 91,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-4300-1-white-ravasaur-claw" },
        },
        {
            id = "level-before-accept-4502-volcanic-activity",
            kind = "note",
            text = "Reach level 49 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 49 },
            },
            requiredLevel = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4502,
            priority = 800,
        },
        {
            priority = 810,
            route = {
                { y = 0.3874, mapID = 1413, label = "Liv Rizzlefix", offMapText = "Travel to Liv Rizzlefix in The Barrens.", x = 0.6245 },
            },
            text = "Accept Volcanic Activity from Liv Rizzlefix.",
            id = "accept-4502-volcanic-activity",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 4502, state = "activeOrCompleted" },
            },
            sourceStep = 98,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
