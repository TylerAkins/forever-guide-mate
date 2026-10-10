local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Un'Goro Crater",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-ungoro-crater",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 49 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-4289-the-apes-of-un-goro",
            kind = "note",
            text = "Reach level 47 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 47 },
            },
            requiredLevel = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4289,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.7596, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            text = "Accept The Apes of Un'Goro from Torwa Pathfinder.",
            id = "accept-4289-the-apes-of-un-goro",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4289, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-4290-the-fare-of-lar-korwi",
            kind = "note",
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 48 },
            },
            requiredLevel = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4290,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.7596, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            text = "Accept The Fare of Lar'korwi from Torwa Pathfinder.",
            id = "accept-4290-the-fare-of-lar-korwi",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 4290, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { y = 0.685, mapID = 1449, label = "It's a Secret to Everybody", offMapText = "Travel to It's a Secret to Everybody.", x = 0.6302 },
            },
            text = "Accept It's a Secret to Everybody.",
            id = "accept-3844-it-s-a-secret-to-everybody",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3844, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            text = "Turn in It's a Secret to Everybody.",
            route = {
                { y = 0.6902, mapID = 1449, label = "It's a Secret to Everybody", offMapText = "Travel to It's a Secret to Everybody.", x = 0.6312 },
            },
            dependsOn = { "accept-3844-it-s-a-secret-to-everybody" },
            id = "turnin-3844-it-s-a-secret-to-everybody",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3844, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 70,
            route = {
                { y = 0.6902, mapID = 1449, label = "It's a Secret to Everybody", offMapText = "Travel to It's a Secret to Everybody.", x = 0.6312 },
            },
            text = "Accept It's a Secret to Everybody.",
            id = "accept-3845-it-s-a-secret-to-everybody",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3845, state = "activeOrCompleted" },
            },
            sourceStep = 4,
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
                    { faction = "Alliance" },
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
            sourceStep = 5,
            priority = 80,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4290-the-fare-of-lar-korwi" },
        },
        {
            priority = 90,
            text = "Turn in The Fare of Lar'korwi to Torwa Pathfinder.",
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            dependsOn = { "accept-4290-the-fare-of-lar-korwi", "objective-4290-1-piece-of-threshadon-carcass" },
            id = "turnin-4290-the-fare-of-lar-korwi",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 4290, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 100,
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            text = "Accept The Scent of Lar'korwi from Torwa Pathfinder.",
            id = "accept-4291-the-scent-of-lar-korwi",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 4291, state = "activeOrCompleted" },
            },
            sourceStep = 6,
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
            priority = 110,
            text = "Collect 2 Ravasaur Pheromone Gland.",
            route = {
                { y = 0.73, mapID = 1449, label = "Lar'korwi Mate", offMapText = "Travel to Lar'korwi Mate.", x = 0.672 },
            },
            dependsOn = { "accept-4291-the-scent-of-lar-korwi" },
            id = "objective-4291-1-lar-korwi-mate",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4291, text = "Lar'korwi Mate", index = 1, count = 2 },
            },
            sourceStep = 7,
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
            priority = 120,
            text = "Turn in The Scent of Lar'korwi to Torwa Pathfinder.",
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7163 },
            },
            dependsOn = { "accept-4291-the-scent-of-lar-korwi", "objective-4291-1-lar-korwi-mate" },
            id = "turnin-4291-the-scent-of-lar-korwi",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 4291, state = "completed" },
            },
            sourceStep = 8,
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
            priority = 130,
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7163 },
            },
            text = "Accept The Bait for Lar'korwi from Torwa Pathfinder.",
            id = "accept-4292-the-bait-for-lar-korwi",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 4292, state = "activeOrCompleted" },
            },
            sourceStep = 8,
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
            id = "loot-starter-before-accept-3884-williden-s-journal",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Alliance" },
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
            priority = 140,
        },
        {
            priority = 150,
            text = "Use the A Mangled Journal to accept Williden's Journal.",
            id = "accept-3884-williden-s-journal",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 3884, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
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
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            priority = 160,
            sourceStep = 11,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 1 Curled Map Parchment.",
            complete = {
                questObjective = { id = 3845, index = 2, text = "Curled Map Parchment", count = 1 },
            },
            sourceStep = 11,
            priority = 170,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 1 Lion-headed Key.",
            complete = {
                questObjective = { id = 3845, index = 3, text = "Lion-headed Key", count = 1 },
            },
            sourceStep = 11,
            priority = 180,
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
            priority = 190,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3845, state = "completed" },
            },
            sourceStep = 14,
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
            priority = 200,
            route = {
                { y = 0.0811, mapID = 1449, label = "Linken", offMapText = "Travel to Linken in Un'Goro Crater.", x = 0.4466 },
            },
            text = "Accept It's a Secret to Everybody from Linken.",
            id = "accept-3908-it-s-a-secret-to-everybody",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3908, state = "activeOrCompleted" },
            },
            sourceStep = 14,
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
            priority = 210,
            text = "Turn in Williden's Journal to Williden Marshal.",
            route = {
                { y = 0.0714, mapID = 1449, label = "Williden Marshal", offMapText = "Travel to Williden Marshal in Un'Goro Crater.", x = 0.4395 },
            },
            dependsOn = { "accept-3884-williden-s-journal" },
            id = "turnin-3884-williden-s-journal",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 3884, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            text = "Accept Crystals of Power from J.D. Collie.",
            id = "accept-4284-crystals-of-power",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4284, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            text = "For Crystals of Power: Collect 7 Power Crystals of each color: red, blue, yellow, and green.",
            id = "objective-4284-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4284, state = "complete" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-4284-crystals-of-power" },
        },
        {
            priority = 240,
            text = "Turn in Crystals of Power to J.D. Collie.",
            route = {
                { y = 0.027, mapID = 1449, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater.", x = 0.4192 },
            },
            dependsOn = { "accept-4284-crystals-of-power", "objective-4284-quest-work" },
            id = "turnin-4284-crystals-of-power",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4284, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-4141-muigin-and-larion",
            kind = "note",
            text = "Reach level 47 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 47 },
            },
            requiredLevel = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4141,
            priority = 250,
        },
        {
            priority = 260,
            route = {
                { mapID = 1449, x = 0.4294, y = 0.0964, label = "Muigin", offMapText = "Travel to Muigin in Un'Goro Crater." },
            },
            text = "Accept Muigin and Larion from Muigin.",
            id = "accept-4141-muigin-and-larion",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4141, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            text = "Collect 15 Bloodpetal.",
            route = {
                { y = 0.352, mapID = 1449, label = "Bloodpetal Flayer", offMapText = "Travel to Bloodpetal Flayer.", x = 0.692 },
            },
            dependsOn = { "accept-4141-muigin-and-larion" },
            id = "objective-4141-1-bloodpetal-flayer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4141, text = "Bloodpetal Flayer", index = 1, count = 15 },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            text = "Turn in Muigin and Larion to Muigin.",
            route = {
                { y = 0.0964, mapID = 1449, label = "Muigin", offMapText = "Travel to Muigin in Un'Goro Crater.", x = 0.4294 },
            },
            dependsOn = { "accept-4141-muigin-and-larion", "objective-4141-1-bloodpetal-flayer" },
            id = "turnin-4141-muigin-and-larion",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4141, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 290,
            route = {
                { y = 0.0964, mapID = 1449, label = "Muigin", offMapText = "Travel to Muigin in Un'Goro Crater.", x = 0.4294 },
            },
            text = "Accept A Visit to Gregan from Muigin.",
            id = "accept-4142-a-visit-to-gregan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4142, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4141 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            route = {
                { mapID = 1446, x = 0.298, y = 0.6679999999999999, label = "Laden Dew Gland", offMapText = "Travel to Laden Dew Gland." },
            },
            text = "For The Thirsty Goblin: Collect a Laden Dew Gland and bring it to Marin Noggenfogger in Gadgetzan.",
            id = "objective-2605-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2605, state = "complete" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            route = {
                { y = 0.2866, mapID = 1446, label = "Marin Noggenfogger", offMapText = "Travel to Marin Noggenfogger in Tanaris.", x = 0.5181 },
            },
            text = "Turn in The Thirsty Goblin to Marin Noggenfogger.",
            id = "turnin-2605-the-thirsty-goblin",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2605, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-2605-quest-work" },
        },
        {
            priority = 320,
            route = {
                { y = 0.2866, mapID = 1446, label = "Marin Noggenfogger", offMapText = "Travel to Marin Noggenfogger in Tanaris.", x = 0.5181 },
            },
            text = "Accept In Good Taste from Marin Noggenfogger.",
            id = "accept-2606-in-good-taste",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2606, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2605 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 330,
            route = {
                { y = 0.2892, mapID = 1446, label = "Pupellyverbos Port", offMapText = "Travel to Pupellyverbos Port.", x = 0.523 },
            },
            text = "Collect 12 Pupellyverbos Port.",
            id = "objective-580-1-pupellyverbos-port",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            priority = 340,
            route = {
                { mapID = 1446, x = 0.415, y = 0.5781000000000001, label = "Gor'marok the Ravager", offMapText = "Travel to Gor'marok the Ravager." },
            },
            text = "For The Dunemaul Compound: Andi Lynn in Gadgetzan wants you to destroy the Dunemaul Compound by killing 10 Dunemaul Brutes, 10 Dunemaul Enforcers, and Gor'marok the Ravager.",
            id = "objective-5863-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 5863, state = "complete" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 350,
            route = {
                { y = 0.274, mapID = 1446, label = "Andi Lynn", offMapText = "Travel to Andi Lynn in Tanaris.", x = 0.5282 },
            },
            text = "Turn in The Dunemaul Compound to Andi Lynn.",
            id = "turnin-5863-the-dunemaul-compound",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 5863, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-5863-quest-work" },
        },
        {
            priority = 360,
            route = {
                { mapID = 1446, x = 0.298, y = 0.6679999999999999, label = "Gnarled Thistleshrub", offMapText = "Travel to Gnarled Thistleshrub." },
            },
            text = "For Thistleshrub Valley: Tran'rek in Gadgetzan wants you to kill 8 Gnarled Thistleshrubs and 8 Thistleshrub Rootshapers.",
            id = "objective-3362-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 3362, state = "complete" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            route = {
                { y = 0.2676, mapID = 1446, label = "Tran'rek", offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157 },
            },
            text = "Turn in Thistleshrub Valley to Tran'rek.",
            id = "turnin-3362-thistleshrub-valley",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 3362, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-3362-quest-work" },
        },
        {
            priority = 380,
            text = "Turn in In Good Taste to Sprinkle.",
            route = {
                { y = 0.2687, mapID = 1446, label = "Sprinkle", offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106 },
            },
            dependsOn = { "accept-2606-in-good-taste" },
            id = "turnin-2606-in-good-taste",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2606, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2605 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.2687, mapID = 1446, label = "Sprinkle", offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106 },
            },
            text = "Accept Sprinkle's Secret Ingredient from Sprinkle.",
            id = "accept-2641-sprinkle-s-secret-ingredient",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2641, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2606 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            route = {
                { y = 0.2748, mapID = 1446, label = "Senior Surveyor Fizzledowser", offMapText = "Travel to Senior Surveyor Fizzledowser in Tanaris.", x = 0.5021 },
            },
            text = "Accept Rise of the Silithid from Senior Surveyor Fizzledowser.",
            id = "accept-162-rise-of-the-silithid",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 39 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 162, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 113 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 410,
            route = {
                { mapID = 1446, x = 0.40299999999999997, y = 0.6890000000000001, label = "Gahz'ridian Ornament", offMapText = "Travel to Gahz'ridian Ornament." },
            },
            text = "For Gahz'ridian: Marvon Rivetseeker in Tanaris wants you to collect 30 Gahz'ridian Ornaments.",
            id = "objective-3161-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 3161, state = "complete" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            route = {
                { y = 0.4593, mapID = 1446, label = "Marvon Rivetseeker", offMapText = "Travel to Marvon Rivetseeker in Tanaris.", x = 0.5271 },
            },
            text = "Turn in Gahz'ridian to Marvon Rivetseeker.",
            id = "turnin-3161-gahz-ridian",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 3161, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-3161-quest-work" },
        },
        {
            priority = 430,
            route = {
                { y = 0.4593, mapID = 1446, label = "Marvon Rivetseeker", offMapText = "Travel to Marvon Rivetseeker in Tanaris.", x = 0.5271 },
            },
            text = "Accept The Stone Circle from Marvon Rivetseeker.",
            id = "accept-3444-the-stone-circle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 46 },
                    },
                },
            },
            complete = {
                quest = { id = 3444, state = "activeOrCompleted" },
            },
            sourceStep = 32,
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
    },
    casualSpine = true,
    routeMode = "ordered",
})
