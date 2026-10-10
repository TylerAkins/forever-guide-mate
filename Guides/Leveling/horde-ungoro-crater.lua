local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Un'Goro Crater",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-ungoro-crater",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 53 },
            },
        },
    },
    goals = {
        {
            id = "level-before-turnin-4494-march-of-the-silithid",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4494,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.2696, mapID = 1446, label = "Alchemist Pestlezugg", offMapText = "Travel to Alchemist Pestlezugg in Tanaris.", x = 0.5089 },
            },
            text = "Turn in March of the Silithid to Alchemist Pestlezugg.",
            id = "turnin-4494-march-of-the-silithid",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4494, state = "completed" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 32, 7732 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-4496-bungle-in-the-jungle",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4496,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.2696, mapID = 1446, label = "Alchemist Pestlezugg", offMapText = "Travel to Alchemist Pestlezugg in Tanaris.", x = 0.5089 },
            },
            text = "Accept Bungle in the Jungle from Alchemist Pestlezugg.",
            id = "accept-4496-bungle-in-the-jungle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4496, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4493, 4494 },
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
                { y = 0.0872, mapID = 1449, label = "Larion", offMapText = "Travel to Larion in Un'Goro Crater.", x = 0.4554 },
            },
            text = "Accept Larion and Muigin from Larion.",
            id = "accept-4145-larion-and-muigin",
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
                quest = { id = 4145, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { y = 0.0714, mapID = 1449, label = "Williden Marshal", offMapText = "Travel to Williden Marshal in Un'Goro Crater.", x = 0.4395 },
            },
            text = "Accept Expedition Salvation from Williden Marshal.",
            id = "accept-3881-expedition-salvation",
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
                quest = { id = 3881, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.0724, mapID = 1449, label = "Hol'anyee Marshal", offMapText = "Travel to Hol'anyee Marshal in Un'Goro Crater.", x = 0.4389 },
            },
            text = "Accept Alien Ecology from Hol'anyee Marshal.",
            id = "accept-3883-alien-ecology",
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
                quest = { id = 3883, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.0742, mapID = 1449, label = "Spark Nilminer", offMapText = "Travel to Spark Nilminer in Un'Goro Crater.", x = 0.435 },
            },
            text = "Accept Roll the Bones from Spark Nilminer.",
            id = "accept-3882-roll-the-bones",
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
                quest = { id = 3882, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            text = "Accept The Western Pylon from J.D. Collie.",
            id = "accept-4288-the-western-pylon",
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
                quest = { id = 4288, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            route = {
                { mapID = 1449, x = 0.4355, y = 0.0842, label = "Beware of Pterrordax", offMapText = "Travel to Beware of Pterrordax." },
            },
            text = "Accept Beware of Pterrordax.",
            id = "accept-4501-beware-of-pterrordax",
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
                quest = { id = 4501, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            route = {
                { y = 0.085, mapID = 1449, label = "Spraggle Frock", offMapText = "Travel to Spraggle Frock in Un'Goro Crater.", x = 0.4362 },
            },
            text = "Accept Lost! from Spraggle Frock.",
            id = "accept-4492-lost",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4492, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            route = {
                { y = 0.1159, mapID = 1449, label = "Shizzle", offMapText = "Travel to Shizzle in Un'Goro Crater.", x = 0.4424 },
            },
            text = "Accept Shizzle's Flyer from Shizzle.",
            id = "accept-4503-shizzle-s-flyer",
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
                quest = { id = 4503, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            text = "Kill 10 Pterrordax.",
            route = {
                { y = 0.098, mapID = 1449, label = "Pterrordax", offMapText = "Travel to Pterrordax.", x = 0.56 },
            },
            dependsOn = { "accept-4501-beware-of-pterrordax" },
            id = "objective-4501-1-pterrordax",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4501, text = "Pterrordax", index = 1, count = 10 },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-4145-3-bloodpetal-flayer",
            kind = "objective",
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
            text = "Kill 5 Bloodpetal Flayer.",
            complete = {
                questObjective = { id = 4145, index = 3, text = "Bloodpetal Flayer", count = 5 },
            },
            route = {
                { mapID = 1449, x = 0.5579999999999999, y = 0.16, label = "Bloodpetal Flayer", offMapText = "Travel to Bloodpetal Flayer." },
            },
            sourceStep = 11,
            priority = 140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4145-larion-and-muigin" },
        },
        {
            priority = 150,
            route = {
                { y = 0.1636, mapID = 1449, label = "Un'Goro Gorilla", offMapText = "Travel to Un'Goro Gorilla.", x = 0.6423 },
            },
            text = "Collect 2 Un'Goro Gorilla Pelt.",
            id = "objective-4289-1-un-goro-gorilla",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4289, text = "Un'Goro Gorilla", index = 1, count = 2 },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4289-2-un-goro-stomper-pelt",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 2 Un'Goro Stomper Pelt.",
            complete = {
                questObjective = { id = 4289, index = 2, text = "Un'Goro Stomper Pelt", count = 2 },
            },
            route = {
                { mapID = 1449, x = 0.6423000000000001, y = 0.1636, label = "Un'Goro Stomper Pelt", offMapText = "Travel to Un'Goro Stomper Pelt." },
            },
            sourceStep = 13,
            priority = 160,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4289-3-un-goro-thunderer-pelt",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 2 Un'Goro Thunderer Pelt.",
            complete = {
                questObjective = { id = 4289, index = 3, text = "Un'Goro Thunderer Pelt", count = 2 },
            },
            route = {
                { mapID = 1449, x = 0.6423000000000001, y = 0.1636, label = "Un'Goro Thunderer Pelt", offMapText = "Travel to Un'Goro Thunderer Pelt." },
            },
            sourceStep = 14,
            priority = 170,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-3881-1-crate-of-foodstuffs",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            text = "Collect 1 Crate of Foodstuffs.",
            complete = {
                questObjective = { id = 3881, index = 1, text = "Crate of Foodstuffs", count = 1 },
            },
            route = {
                { mapID = 1449, x = 0.6851, y = 0.3654, label = "Crate of Foodstuffs", offMapText = "Travel to Crate of Foodstuffs." },
            },
            sourceStep = 15,
            priority = 180,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3881-expedition-salvation" },
        },
        {
            id = "objective-4145-4-bloodpetal-thresher",
            kind = "objective",
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
            text = "Kill 5 Bloodpetal Thresher.",
            complete = {
                questObjective = { id = 4145, index = 4, text = "Bloodpetal Thresher", count = 5 },
            },
            route = {
                { mapID = 1449, x = 0.6759999999999999, y = 0.34600000000000003, label = "Bloodpetal Thresher", offMapText = "Travel to Bloodpetal Thresher." },
            },
            sourceStep = 16,
            priority = 190,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4145-larion-and-muigin" },
        },
        {
            id = "objective-4145-1-bloodpetal-lasher",
            kind = "objective",
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
            text = "Kill 5 Bloodpetal Lasher.",
            complete = {
                questObjective = { id = 4145, index = 1, text = "Bloodpetal Lasher", count = 5 },
            },
            route = {
                { mapID = 1449, x = 0.6759999999999999, y = 0.34600000000000003, label = "Bloodpetal Lasher", offMapText = "Travel to Bloodpetal Lasher." },
            },
            sourceStep = 16,
            priority = 200,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4145-larion-and-muigin" },
        },
        {
            priority = 210,
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            text = "Open Torwa's Pouch to obtain Preserved Threshadon Meat and Preserved Pheromone Mixture. Keep both for the bait.",
            id = "objective-4292-1-torwa-s-pouch",
            kind = "note",
            useClientPin = false,
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Preserved Threshadon Meat", minCount = 1 },
                            },
                            {
                                item = { name = "Preserved Pheromone Mixture", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 4292, state = "complete" },
                    },
                },
            },
            route = {
                { mapID = 1449, x = 0.7992, y = 0.499, label = "Lar'korwi's Head", offMapText = "Travel to Lar'korwi's Head." },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4291 },
                    conditions = {},
                },
            },
            useClientText = false,
            dependsOn = {},
            sourceInstructionStep = 18,
            sourceInstructionIndex = 1,
            checkpointQuest = 4292,
            instructionOnly = true,
            rememberPreparation = 4292,
        },
        {
            priority = 220,
            route = {
                { mapID = 1449, x = 0.7992, y = 0.499, label = "Lar'korwi bait site", offMapText = "Travel to Lar'korwi bait site." },
            },
            text = "At the eastern hillside, place the Preserved Threshadon Meat, then apply the Preserved Pheromone Mixture. Kill Lar'korwi when he arrives and loot his head.",
            id = "objective-4292-1-preserved-threshadon-meat",
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
                questObjective = { id = 4292, index = 1, count = 1 },
            },
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
            priority = 230,
            text = "Turn in The Apes of Un'Goro to Torwa Pathfinder.",
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            dependsOn = {
                "objective-4289-1-un-goro-gorilla",
                "objective-4289-2-un-goro-stomper-pelt",
                "objective-4289-3-un-goro-thunderer-pelt",
            },
            id = "turnin-4289-the-apes-of-un-goro",
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
                quest = { id = 4289, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            text = "Turn in The Bait for Lar'korwi to Torwa Pathfinder.",
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            dependsOn = { "objective-4292-1-torwa-s-pouch", "objective-4292-1-preserved-threshadon-meat" },
            id = "turnin-4292-the-bait-for-lar-korwi",
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
                quest = { id = 4292, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4291 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            text = "Accept The Mighty U'cha from Torwa Pathfinder.",
            id = "accept-4301-the-mighty-u-cha",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4301, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4289 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            text = "Kill 10 Pterrordax.",
            route = {
                { y = 0.864, mapID = 1449, label = "Pterrordax", offMapText = "Travel to Pterrordax.", x = 0.58 },
            },
            dependsOn = { "accept-4501-beware-of-pterrordax" },
            id = "objective-4501-1-pterrordax-2",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4501, text = "Pterrordax", index = 1, count = 10 },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            text = "Enter the Slithering Scar cave in southern Un'Goro Crater. Use the Unused Scraping Vial inside the hive to collect a Hive Wall Sample.",
            route = {
                { mapID = 1449, x = 0.4874, y = 0.8521, label = "Hive Wall Sample", offMapText = "Travel to Hive Wall Sample." },
            },
            dependsOn = { "accept-3883-alien-ecology" },
            id = "objective-3883-1-unused-scraping-vial",
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
                questObjective = { id = 3883, text = "Unused Scraping Vial", index = 1, count = 1 },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-4496-1-gorishi-scent-gland",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            text = "Collect 1 Gorishi Scent Gland.",
            complete = {
                questObjective = { id = 4496, index = 1, text = "Gorishi Scent Gland", count = 1 },
            },
            route = {
                { mapID = 1449, x = 0.49950000000000006, y = 0.8170000000000001, label = "Gorishi Scent Gland", offMapText = "Travel to Gorishi Scent Gland." },
            },
            sourceStep = 22,
            priority = 280,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4493, 4494 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4496-bungle-in-the-jungle" },
        },
        {
            id = "objective-3881-2-research-equipment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            text = "Collect 1 Research Equipment.",
            complete = {
                questObjective = { id = 3881, index = 2, text = "Research Equipment", count = 1 },
            },
            route = {
                { mapID = 1449, x = 0.3847, y = 0.6611, label = "Research Equipment", offMapText = "Travel to Research Equipment." },
            },
            sourceStep = 23,
            priority = 290,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3881-expedition-salvation" },
        },
        {
            id = "level-before-accept-974-finding-the-source",
            kind = "note",
            text = "Reach level 51 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 51 },
            },
            requiredLevel = 51,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 974,
            priority = 300,
        },
        {
            priority = 310,
            route = {
                { y = 0.5043, mapID = 1449, label = "Krakle", offMapText = "Travel to Krakle in Un'Goro Crater.", x = 0.3093 },
            },
            text = "Accept Finding the Source from Krakle.",
            id = "accept-974-finding-the-source",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 974, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 320,
            text = "For Finding the Source: Krakle in Un'Goro Crater wants you to find the hottest area of Fire Plume Ridge. Whenever you find a hot spot, right click the thermometer to check the temperature. Keep looking until you find the hottest one.",
            id = "objective-974-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 974, state = "complete" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-974-finding-the-source" },
        },
        {
            priority = 330,
            text = "Turn in Finding the Source to Krakle.",
            route = {
                { y = 0.5043, mapID = 1449, label = "Krakle", offMapText = "Travel to Krakle in Un'Goro Crater.", x = 0.3093 },
            },
            dependsOn = { "accept-974-finding-the-source", "objective-974-quest-work" },
            id = "turnin-974-finding-the-source",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 974, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            route = {
                { y = 0.5043, mapID = 1449, label = "Krakle", offMapText = "Travel to Krakle in Un'Goro Crater.", x = 0.3093 },
            },
            text = "Accept The New Springs from Krakle.",
            id = "accept-980-the-new-springs",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 980, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 974 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4145-2-bloodpetal-trapper",
            kind = "objective",
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
            text = "Kill 5 Bloodpetal Trapper.",
            complete = {
                questObjective = { id = 4145, index = 2, text = "Bloodpetal Trapper", count = 5 },
            },
            route = {
                { mapID = 1449, x = 0.348, y = 0.4, label = "Bloodpetal Trapper", offMapText = "Travel to Bloodpetal Trapper." },
            },
            sourceStep = 28,
            priority = 350,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4145-larion-and-muigin" },
        },
        {
            id = "objective-3882-1-dinosaur-bone",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            text = "Collect 8 Dinosaur Bone.",
            complete = {
                questObjective = { id = 3882, index = 1, text = "Dinosaur Bone", count = 8 },
            },
            route = {
                { mapID = 1449, x = 0.348, y = 0.4, label = "Dinosaur Bone", offMapText = "Travel to Dinosaur Bone." },
            },
            sourceStep = 29,
            priority = 360,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3882-roll-the-bones" },
        },
        {
            id = "objective-4503-1-webbed-diemetradon-scale",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            text = "Collect 8 Webbed Diemetradon Scale.",
            complete = {
                questObjective = { id = 4503, index = 1, text = "Webbed Diemetradon Scale", count = 8 },
            },
            route = {
                { mapID = 1449, x = 0.348, y = 0.4, label = "Webbed Diemetradon Scale", offMapText = "Travel to Webbed Diemetradon Scale." },
            },
            sourceStep = 29,
            priority = 370,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4503-shizzle-s-flyer" },
        },
        {
            id = "objective-4503-2-webbed-pterrordax-scale",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            text = "Collect 8 Webbed Pterrordax Scale.",
            complete = {
                questObjective = { id = 4503, index = 2, text = "Webbed Pterrordax Scale", count = 8 },
            },
            route = {
                { mapID = 1449, x = 0.348, y = 0.396, label = "Webbed Pterrordax Scale", offMapText = "Travel to Webbed Pterrordax Scale." },
            },
            sourceStep = 30,
            priority = 380,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4503-shizzle-s-flyer" },
        },
        {
            id = "objective-4501-2-frenzied-pterrordax",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            text = "Kill 15 Frenzied Pterrordax.",
            complete = {
                questObjective = { id = 4501, index = 2, text = "Frenzied Pterrordax", count = 15 },
            },
            route = {
                { mapID = 1449, x = 0.348, y = 0.396, label = "Frenzied Pterrordax", offMapText = "Travel to Frenzied Pterrordax." },
            },
            sourceStep = 31,
            priority = 390,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4501-beware-of-pterrordax" },
        },
        {
            priority = 400,
            text = "Turn in Lost! to Ringo.",
            route = {
                { y = 0.4985, mapID = 1449, label = "Ringo", offMapText = "Travel to Ringo in Un'Goro Crater.", x = 0.519 },
            },
            dependsOn = { "accept-4492-lost" },
            id = "turnin-4492-lost",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4492, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            route = {
                { y = 0.4985, mapID = 1449, label = "Ringo", offMapText = "Travel to Ringo in Un'Goro Crater.", x = 0.519 },
            },
            text = "Accept A Little Help From My Friends from Ringo.",
            id = "accept-4491-a-little-help-from-my-friends",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4491, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4492 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            route = {
                { mapID = 1449, x = 0.4362, y = 0.0851, label = "A Little Help From My Friends", offMapText = "Travel to A Little Help From My Friends." },
            },
            text = "Escort Ringo north to Spraggle Frock at Marshal's Refuge. Stay close and protect him. When he faints, use Spraggle's Canteen beside him, then continue the escort.",
            id = "objective-4491-authored-escort",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4491, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4492 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4491-a-little-help-from-my-friends" },
        },
        {
            priority = 430,
            text = "Turn in A Little Help From My Friends to Spraggle Frock.",
            route = {
                { y = 0.0851, mapID = 1449, label = "Spraggle Frock", offMapText = "Travel to Spraggle Frock in Un'Goro Crater.", x = 0.4362 },
            },
            dependsOn = { "accept-4491-a-little-help-from-my-friends", "objective-4491-authored-escort" },
            id = "turnin-4491-a-little-help-from-my-friends",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4491, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4492 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            text = "Turn in Beware of Pterrordax to Spraggle Frock.",
            route = {
                { y = 0.0851, mapID = 1449, label = "Spraggle Frock", offMapText = "Travel to Spraggle Frock in Un'Goro Crater.", x = 0.4362 },
            },
            dependsOn = {
                "accept-4501-beware-of-pterrordax",
                "objective-4501-1-pterrordax",
                "objective-4501-1-pterrordax-2",
                "objective-4501-2-frenzied-pterrordax",
            },
            id = "turnin-4501-beware-of-pterrordax",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 4501, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            text = "Turn in Roll the Bones to Spark Nilminer.",
            route = {
                { y = 0.0743, mapID = 1449, label = "Spark Nilminer", offMapText = "Travel to Spark Nilminer in Un'Goro Crater.", x = 0.435 },
            },
            dependsOn = { "accept-3882-roll-the-bones", "objective-3882-1-dinosaur-bone" },
            id = "turnin-3882-roll-the-bones",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 3882, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            text = "Discover and examine the Western Crystal Pylon in western Un'Goro Crater.",
            id = "objective-4288-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4288, index = 1, count = 1 },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4288-the-western-pylon" },
            route = {
                { mapID = 1449, x = 0.2379, y = 0.5919, label = "The Western Pylon", offMapText = "Travel to The Western Pylon." },
            },
        },
        {
            priority = 470,
            text = "Turn in The Western Pylon to J.D. Collie.",
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            dependsOn = { "accept-4288-the-western-pylon", "objective-4288-quest-work" },
            id = "turnin-4288-the-western-pylon",
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
                quest = { id = 4288, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            text = "Accept The Northern Pylon from J.D. Collie.",
            id = "accept-4285-the-northern-pylon",
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
                quest = { id = 4285, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 490,
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            text = "Accept The Eastern Pylon from J.D. Collie.",
            id = "accept-4287-the-eastern-pylon",
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
                quest = { id = 4287, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            text = "Turn in Alien Ecology to Hol'anyee Marshal.",
            route = {
                { y = 0.0679, mapID = 1449, label = "Hol'anyee Marshal", offMapText = "Travel to Hol'anyee Marshal in Un'Goro Crater.", x = 0.4347 },
            },
            dependsOn = { "accept-3883-alien-ecology", "objective-3883-1-unused-scraping-vial" },
            id = "turnin-3883-alien-ecology",
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
                quest = { id = 3883, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            text = "Turn in Expedition Salvation to Williden Marshal.",
            route = {
                { y = 0.0714, mapID = 1449, label = "Williden Marshal", offMapText = "Travel to Williden Marshal in Un'Goro Crater.", x = 0.4395 },
            },
            dependsOn = {
                "accept-3881-expedition-salvation",
                "objective-3881-1-crate-of-foodstuffs",
                "objective-3881-2-research-equipment",
            },
            id = "turnin-3881-expedition-salvation",
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
                quest = { id = 3881, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            text = "Turn in Larion and Muigin to Larion.",
            route = {
                { y = 0.0872, mapID = 1449, label = "Larion", offMapText = "Travel to Larion in Un'Goro Crater.", x = 0.4554 },
            },
            dependsOn = {
                "accept-4145-larion-and-muigin",
                "objective-4145-3-bloodpetal-flayer",
                "objective-4145-4-bloodpetal-thresher",
                "objective-4145-1-bloodpetal-lasher",
                "objective-4145-2-bloodpetal-trapper",
            },
            id = "turnin-4145-larion-and-muigin",
            kind = "turnin",
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
                quest = { id = 4145, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            route = {
                { y = 0.0872, mapID = 1449, label = "Larion", offMapText = "Travel to Larion in Un'Goro Crater.", x = 0.4554 },
            },
            text = "Accept Marvon's Workshop from Larion.",
            id = "accept-4147-marvon-s-workshop",
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
                quest = { id = 4147, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4145 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            text = "Turn in Shizzle's Flyer to Shizzle.",
            route = {
                { y = 0.1159, mapID = 1449, label = "Shizzle", offMapText = "Travel to Shizzle in Un'Goro Crater.", x = 0.4423 },
            },
            dependsOn = {
                "accept-4503-shizzle-s-flyer",
                "objective-4503-1-webbed-diemetradon-scale",
                "objective-4503-2-webbed-pterrordax-scale",
            },
            id = "turnin-4503-shizzle-s-flyer",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 4503, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            route = {
                { y = 0.1345, mapID = 1449, label = "Karna Remtravel", offMapText = "Travel to Karna Remtravel in Un'Goro Crater.", x = 0.4638 },
            },
            text = "Accept Chasing A-Me 01 from Karna Remtravel.",
            id = "accept-4243-chasing-a-me-01",
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
                quest = { id = 4243, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            text = "Collect 1 U'cha's Pelt.",
            route = {
                { mapID = 1449, x = 0.6815000000000001, y = 0.1258, label = "U'cha's Pelt", offMapText = "Travel to U'cha's Pelt." },
            },
            dependsOn = { "accept-4301-the-mighty-u-cha" },
            id = "objective-4301-1-u-cha",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4301, text = "U'cha", index = 1, count = 1 },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4289 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            text = "Turn in Chasing A-Me 01 to A-Me 01.",
            route = {
                { mapID = 1449, x = 0.6765000000000001, y = 0.16760000000000003, label = "A-Me 01", offMapText = "Travel to A-Me 01 in Un'Goro Crater." },
            },
            dependsOn = { "accept-4243-chasing-a-me-01" },
            id = "turnin-4243-chasing-a-me-01",
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
                quest = { id = 4243, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 580,
            route = {
                { mapID = 1449, x = 0.6765000000000001, y = 0.16760000000000003, label = "A-Me 01", offMapText = "Travel to A-Me 01 in Un'Goro Crater." },
            },
            text = "Accept Chasing A-Me 01 from A-Me 01.",
            id = "accept-4244-chasing-a-me-01",
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
                quest = { id = 4244, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4243 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            text = "For Chasing A-Me 01: Find a Mithril Casing and return to A-Me 01 in Un'Goro Crater.",
            id = "objective-4244-quest-work",
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
                quest = { id = 4244, state = "complete" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4243 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-4244-chasing-a-me-01" },
        },
        {
            priority = 600,
            text = "Turn in Chasing A-Me 01 to A-Me 01.",
            route = {
                { y = 0.1676, mapID = 1449, label = "A-Me 01", offMapText = "Travel to A-Me 01 in Un'Goro Crater.", x = 0.6765 },
            },
            dependsOn = { "accept-4244-chasing-a-me-01", "objective-4244-quest-work" },
            id = "turnin-4244-chasing-a-me-01",
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
                quest = { id = 4244, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4243 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            route = {
                { y = 0.1676, mapID = 1449, label = "A-Me 01", offMapText = "Travel to A-Me 01 in Un'Goro Crater.", x = 0.6765 },
            },
            text = "Accept Chasing A-Me 01 from A-Me 01.",
            id = "accept-4245-chasing-a-me-01",
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
                quest = { id = 4245, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 620,
            text = "Turn in Chasing A-Me 01 to Karna Remtravel.",
            route = {
                { y = 0.1345, mapID = 1449, label = "Karna Remtravel", offMapText = "Travel to Karna Remtravel in Un'Goro Crater.", x = 0.4638 },
            },
            dependsOn = { "accept-4245-chasing-a-me-01" },
            id = "turnin-4245-chasing-a-me-01",
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
                quest = { id = 4245, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            text = "Turn in The Mighty U'cha to Torwa Pathfinder.",
            route = {
                { y = 0.7596, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7163 },
            },
            dependsOn = { "accept-4301-the-mighty-u-cha", "objective-4301-1-u-cha" },
            id = "turnin-4301-the-mighty-u-cha",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4301, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4289 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            text = "Discover and examine the Northern Crystal Pylon in northern Un'Goro Crater.",
            id = "objective-4285-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4285, index = 1, count = 1 },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4285-the-northern-pylon" },
            route = {
                { mapID = 1449, x = 0.5648, y = 0.1245, label = "The Northern Pylon", offMapText = "Travel to The Northern Pylon." },
            },
        },
        {
            priority = 650,
            text = "Turn in The Northern Pylon to J.D. Collie.",
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            dependsOn = { "accept-4285-the-northern-pylon", "objective-4285-quest-work" },
            id = "turnin-4285-the-northern-pylon",
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
                quest = { id = 4285, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            text = "Discover and examine the Eastern Crystal Pylon in eastern Un'Goro Crater.",
            id = "objective-4287-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4287, index = 1, count = 1 },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4287-the-eastern-pylon" },
            route = {
                { mapID = 1449, x = 0.7724, y = 0.4997, label = "The Eastern Pylon", offMapText = "Travel to The Eastern Pylon." },
            },
        },
        {
            priority = 670,
            text = "Turn in The Eastern Pylon to J.D. Collie.",
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            dependsOn = { "accept-4287-the-eastern-pylon", "objective-4287-quest-work" },
            id = "turnin-4287-the-eastern-pylon",
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
                quest = { id = 4287, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            text = "Accept Making Sense of It from J.D. Collie.",
            id = "accept-4321-making-sense-of-it",
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
                quest = { id = 4321, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 4285, 4287, 4288 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 690,
            text = "Turn in Making Sense of It to J.D. Collie.",
            route = {
                { y = 0.027, mapID = 1449, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater.", x = 0.4192 },
            },
            dependsOn = { "accept-4321-making-sense-of-it" },
            id = "turnin-4321-making-sense-of-it",
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
                quest = { id = 4321, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 4285, 4287, 4288 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 700,
            text = "Turn in Bungle in the Jungle to Alchemist Pestlezugg.",
            route = {
                { mapID = 1446, x = 0.5089, y = 0.2696, label = "Alchemist Pestlezugg", offMapText = "Travel to Alchemist Pestlezugg in Tanaris." },
            },
            dependsOn = { "accept-4496-bungle-in-the-jungle", "objective-4496-1-gorishi-scent-gland" },
            id = "turnin-4496-bungle-in-the-jungle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4496, state = "completed" },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4493, 4494 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            route = {
                { mapID = 1448, x = 0.52, y = 0.16, label = "Angerclaw Grizzly", offMapText = "Travel to Angerclaw Grizzly." },
            },
            text = "For The Strength of Corruption: Talo Thornhoof at Camp Mojache in Feralas wants you to kill 12 Angerclaw Grizzlies and 12 Felpaw Ravagers in Felwood.",
            id = "objective-4120-quest-work",
            kind = "objective",
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
                quest = { id = 4120, state = "complete" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 720,
            route = {
                { y = 0.4383, mapID = 1444, label = "Talo Thornhoof", offMapText = "Travel to Talo Thornhoof in Feralas.", x = 0.7618 },
            },
            text = "Turn in The Strength of Corruption to Talo Thornhoof.",
            id = "turnin-4120-the-strength-of-corruption",
            kind = "turnin",
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
                quest = { id = 4120, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-4120-quest-work" },
        },
        {
            priority = 730,
            route = {
                { mapID = 1444, x = 0.4512, y = 0.2557, label = "Videre Elixir", offMapText = "Travel to Videre Elixir." },
            },
            text = "Collect 1 Videre Elixir.",
            id = "objective-3909-1-evoroot",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3909, text = "Evoroot", index = 1, count = 1 },
            },
            sourceStep = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3908 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 740,
            route = {
                { y = 0.6472, mapID = 1456, label = "Innkeeper Pala", offMapText = "Travel to Innkeeper Pala in Thunder Bluff.", x = 0.4582 },
            },
            text = "Accept Assisting Arch Druid Runetotem from Innkeeper Pala.",
            id = "accept-3762-assisting-arch-druid-runetotem",
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
                quest = { id = 3762, state = "activeOrCompleted" },
            },
            sourceStep = 64,
            requiredQuests = {},
            alternativeQuests = { 936, 3784 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1000-the-new-frontier",
            kind = "note",
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 54 },
            },
            requiredLevel = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1000,
            alternativeQuests = { 1004, 1018 },
            priority = 750,
        },
        {
            priority = 760,
            text = "Accept The New Frontier from Bluff Runner Windstrider.",
            id = "accept-1000-the-new-frontier",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1000, state = "activeOrCompleted" },
            },
            sourceStep = 70,
            requiredQuests = {},
            alternativeQuests = { 1004, 1018 },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 770,
            route = {
                { y = 0.309, mapID = 1456, label = "Magatha Grimtotem", offMapText = "Travel to Magatha Grimtotem in Thunder Bluff.", x = 0.6984 },
            },
            text = "Turn in Delivery to Magatha to Magatha Grimtotem.",
            id = "turnin-3518-delivery-to-magatha",
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
                quest = { id = 3518, state = "completed" },
            },
            sourceStep = 71,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3517 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 780,
            route = {
                { y = 0.309, mapID = 1456, label = "Magatha Grimtotem", offMapText = "Travel to Magatha Grimtotem in Thunder Bluff.", x = 0.6984 },
            },
            text = "Accept Magatha's Payment to Jediga from Magatha Grimtotem.",
            id = "accept-3562-magatha-s-payment-to-jediga",
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
                quest = { id = 3562, state = "activeOrCompleted" },
            },
            sourceStep = 71,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3518 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 790,
            text = "Turn in Assisting Arch Druid Runetotem to Arch Druid Hamuul Runetotem.",
            route = {
                { y = 0.2857, mapID = 1456, label = "Arch Druid Hamuul Runetotem", offMapText = "Travel to Arch Druid Hamuul Runetotem in Thunder Bluff.", x = 0.7859 },
            },
            dependsOn = { "accept-3762-assisting-arch-druid-runetotem" },
            id = "turnin-3762-assisting-arch-druid-runetotem",
            kind = "turnin",
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
                quest = { id = 3762, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {},
            alternativeQuests = { 936, 3784 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 800,
            route = {
                { y = 0.2857, mapID = 1456, label = "Arch Druid Hamuul Runetotem", offMapText = "Travel to Arch Druid Hamuul Runetotem in Thunder Bluff.", x = 0.7859 },
            },
            text = "Accept Un'Goro Soil from Arch Druid Hamuul Runetotem.",
            id = "accept-3761-un-goro-soil",
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
                quest = { id = 3761, state = "activeOrCompleted" },
            },
            sourceStep = 72,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 810,
            text = "Turn in The New Frontier to Arch Druid Hamuul Runetotem.",
            route = {
                { y = 0.2857, mapID = 1456, label = "Arch Druid Hamuul Runetotem", offMapText = "Travel to Arch Druid Hamuul Runetotem in Thunder Bluff.", x = 0.7859 },
            },
            dependsOn = { "accept-1000-the-new-frontier" },
            id = "turnin-1000-the-new-frontier",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1000, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {},
            alternativeQuests = { 1004, 1018 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 820,
            route = {
                { y = 0.2857, mapID = 1456, label = "Arch Druid Hamuul Runetotem", offMapText = "Travel to Arch Druid Hamuul Runetotem in Thunder Bluff.", x = 0.7859 },
            },
            text = "Accept Rabine Saturna from Arch Druid Hamuul Runetotem.",
            id = "accept-1123-rabine-saturna",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1123, state = "activeOrCompleted" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1000, 1004, 1018 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 830,
            text = "For Un'Goro Soil: Bring 20 Un'Goro Soil samples to Ghede on the Elder Rise of Thunder Bluff.",
            id = "objective-3761-quest-work",
            kind = "objective",
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
                quest = { id = 3761, state = "complete" },
            },
            sourceStep = 73,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-3761-un-goro-soil" },
        },
        {
            priority = 840,
            text = "Turn in Un'Goro Soil to Ghede.",
            route = {
                { y = 0.2198, mapID = 1456, label = "Ghede", offMapText = "Travel to Ghede in Thunder Bluff.", x = 0.7745 },
            },
            dependsOn = { "accept-3761-un-goro-soil", "objective-3761-quest-work" },
            id = "turnin-3761-un-goro-soil",
            kind = "turnin",
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
                quest = { id = 3761, state = "completed" },
            },
            sourceStep = 73,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 850,
            route = {
                { y = 0.2857, mapID = 1456, label = "Arch Druid Hamuul Runetotem", offMapText = "Travel to Arch Druid Hamuul Runetotem in Thunder Bluff.", x = 0.7859 },
            },
            text = "Accept Morrowgrain Research from Arch Druid Hamuul Runetotem.",
            id = "accept-3782-morrowgrain-research",
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
                quest = { id = 3782, state = "activeOrCompleted" },
            },
            sourceStep = 75,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3761 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 860,
            text = "Turn in Morrowgrain Research to Bashana Runetotem.",
            route = {
                { y = 0.3418, mapID = 1456, label = "Bashana Runetotem", offMapText = "Travel to Bashana Runetotem in Thunder Bluff.", x = 0.7106 },
            },
            dependsOn = { "accept-3782-morrowgrain-research" },
            id = "turnin-3782-morrowgrain-research",
            kind = "turnin",
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
                quest = { id = 3782, state = "completed" },
            },
            sourceStep = 76,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3761 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 870,
            text = "Turn in Marvon's Workshop to Liv Rizzlefix.",
            route = {
                { y = 0.3873, mapID = 1413, label = "Liv Rizzlefix", offMapText = "Travel to Liv Rizzlefix in The Barrens.", x = 0.6245 },
            },
            dependsOn = { "accept-4147-marvon-s-workshop" },
            id = "turnin-4147-marvon-s-workshop",
            kind = "turnin",
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
                quest = { id = 4147, state = "completed" },
            },
            sourceStep = 78,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4145 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 880,
            text = "For Volcanic Activity: Collect 9 samples of Un'Goro Ash from the fire elementals around the volcano in Un'Goro Crater.",
            id = "objective-4502-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 4502, state = "complete" },
            },
            sourceStep = 78,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 890,
            route = {
                { y = 0.3873, mapID = 1413, label = "Liv Rizzlefix", offMapText = "Travel to Liv Rizzlefix in The Barrens.", x = 0.6245 },
            },
            text = "Turn in Volcanic Activity to Liv Rizzlefix.",
            id = "turnin-4502-volcanic-activity",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 4502, state = "completed" },
            },
            sourceStep = 78,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-4502-quest-work" },
        },
        {
            priority = 900,
            route = {
                { y = 0.4378, mapID = 1413, label = "Islen Waterseer", offMapText = "Travel to Islen Waterseer in The Barrens.", x = 0.6583 },
            },
            text = "Turn in Seeking Spiritual Aid to Islen Waterseer.",
            id = "turnin-5158-seeking-spiritual-aid",
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
                quest = { id = 5158, state = "completed" },
            },
            sourceStep = 79,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5157 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 910,
            route = {
                { y = 0.4378, mapID = 1413, label = "Islen Waterseer", offMapText = "Travel to Islen Waterseer in The Barrens.", x = 0.6583 },
            },
            text = "Accept Cleansed Water Returns to Felwood from Islen Waterseer.",
            id = "accept-5159-cleansed-water-returns-to-felwood",
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
                quest = { id = 5159, state = "activeOrCompleted" },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5158 },
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
