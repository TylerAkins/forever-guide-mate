local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Un'Goro Crater",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-ungoro-crater-part-2",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 53 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-4504-super-sticky",
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
            checkpointQuest = 4504,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.2676, mapID = 1446, label = "Tran'rek", offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157 },
            },
            text = "Accept Super Sticky from Tran'rek.",
            id = "accept-4504-super-sticky",
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
                quest = { id = 4504, state = "activeOrCompleted" },
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
                { mapID = 1425, x = 0.41009999999999996, y = 0.5977, label = "Violet Tragan", offMapText = "Travel to Violet Tragan." },
            },
            text = "For Sprinkle's Secret Ingredient: Sprinkle in Gadgetzan wants you to collect a Violet Tragan and return it to her.",
            id = "objective-2641-quest-work",
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
                quest = { id = 2641, state = "complete" },
            },
            sourceStep = 4,
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
            priority = 40,
            route = {
                { y = 0.2687, mapID = 1446, label = "Sprinkle", offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106 },
            },
            text = "Turn in Sprinkle's Secret Ingredient to Sprinkle.",
            id = "turnin-2641-sprinkle-s-secret-ingredient",
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
                quest = { id = 2641, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2606 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-2641-quest-work" },
        },
        {
            priority = 50,
            route = {
                { y = 0.2687, mapID = 1446, label = "Sprinkle", offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106 },
            },
            text = "Accept Delivery for Marin from Sprinkle.",
            id = "accept-2661-delivery-for-marin",
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
                quest = { id = 2661, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2641 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-4493-march-of-the-silithid",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 4493,
            priority = 60,
        },
        {
            priority = 70,
            route = {
                { y = 0.2696, mapID = 1446, label = "Alchemist Pestlezugg", offMapText = "Travel to Alchemist Pestlezugg in Tanaris.", x = 0.5089 },
            },
            text = "Turn in March of the Silithid to Alchemist Pestlezugg.",
            id = "turnin-4493-march-of-the-silithid",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4493, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 162 },
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
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4496,
            priority = 80,
        },
        {
            priority = 90,
            route = {
                { y = 0.2696, mapID = 1446, label = "Alchemist Pestlezugg", offMapText = "Travel to Alchemist Pestlezugg in Tanaris.", x = 0.5089 },
            },
            text = "Accept Bungle in the Jungle from Alchemist Pestlezugg.",
            id = "accept-4496-bungle-in-the-jungle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4496, state = "activeOrCompleted" },
            },
            sourceStep = 6,
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
            priority = 100,
            text = "Turn in Delivery for Marin to Marin Noggenfogger.",
            route = {
                { y = 0.2866, mapID = 1446, label = "Marin Noggenfogger", offMapText = "Travel to Marin Noggenfogger in Tanaris.", x = 0.5181 },
            },
            dependsOn = { "accept-2661-delivery-for-marin" },
            id = "turnin-2661-delivery-for-marin",
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
                quest = { id = 2661, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2641 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            route = {
                { y = 0.2866, mapID = 1446, label = "Marin Noggenfogger", offMapText = "Travel to Marin Noggenfogger in Tanaris.", x = 0.5181 },
            },
            text = "Accept Noggenfogger Elixir from Marin Noggenfogger.",
            id = "accept-2662-noggenfogger-elixir",
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
                quest = { id = 2662, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2661 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            text = "Turn in Noggenfogger Elixir to Marin Noggenfogger.",
            route = {
                { y = 0.2866, mapID = 1446, label = "Marin Noggenfogger", offMapText = "Travel to Marin Noggenfogger in Tanaris.", x = 0.5181 },
            },
            dependsOn = { "accept-2662-noggenfogger-elixir" },
            id = "turnin-2662-noggenfogger-elixir",
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
                quest = { id = 2662, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2661 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            route = {
                { mapID = 1413, x = 0.625, y = 0.38539999999999996, label = "Stone Circle", offMapText = "Travel to Stone Circle." },
            },
            text = "For The Stone Circle: Retrieve the Stone Circle from Marvon Rivetseeker's workshop in Ratchet.",
            id = "objective-3444-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 46 },
                    },
                },
            },
            complete = {
                quest = { id = 3444, state = "complete" },
            },
            sourceStep = 9,
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
            priority = 140,
            route = {
                { y = 0.4592, mapID = 1446, label = "Marvon Rivetseeker", offMapText = "Travel to Marvon Rivetseeker in Tanaris.", x = 0.5271 },
            },
            text = "Turn in The Stone Circle to Marvon Rivetseeker.",
            id = "turnin-3444-the-stone-circle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 46 },
                    },
                },
            },
            complete = {
                quest = { id = 3444, state = "completed" },
            },
            sourceStep = 9,
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
            priority = 150,
            route = {
                { y = 0.0714, mapID = 1449, label = "Williden Marshal", offMapText = "Travel to Williden Marshal in Un'Goro Crater.", x = 0.4395 },
            },
            text = "Accept Expedition Salvation from Williden Marshal.",
            id = "accept-3881-expedition-salvation",
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
                quest = { id = 3881, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            route = {
                { y = 0.0724, mapID = 1449, label = "Hol'anyee Marshal", offMapText = "Travel to Hol'anyee Marshal in Un'Goro Crater.", x = 0.4389 },
            },
            text = "Accept Alien Ecology from Hol'anyee Marshal.",
            id = "accept-3883-alien-ecology",
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
                quest = { id = 3883, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 170,
            route = {
                { y = 0.0742, mapID = 1449, label = "Spark Nilminer", offMapText = "Travel to Spark Nilminer in Un'Goro Crater.", x = 0.435 },
            },
            text = "Accept Roll the Bones from Spark Nilminer.",
            id = "accept-3882-roll-the-bones",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 3882, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            text = "Accept The Northern Pylon from J.D. Collie.",
            id = "accept-4285-the-northern-pylon",
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
                quest = { id = 4285, state = "activeOrCompleted" },
            },
            sourceStep = 13,
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
            priority = 190,
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            text = "Accept The Eastern Pylon from J.D. Collie.",
            id = "accept-4287-the-eastern-pylon",
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
                quest = { id = 4287, state = "activeOrCompleted" },
            },
            sourceStep = 13,
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
            priority = 200,
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            text = "Accept The Western Pylon from J.D. Collie.",
            id = "accept-4288-the-western-pylon",
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
                quest = { id = 4288, state = "activeOrCompleted" },
            },
            sourceStep = 13,
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
            priority = 210,
            route = {
                { mapID = 1449, x = 0.4355, y = 0.0842, label = "Beware of Pterrordax", offMapText = "Travel to Beware of Pterrordax." },
            },
            text = "Accept Beware of Pterrordax.",
            id = "accept-4501-beware-of-pterrordax",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 4501, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            route = {
                { y = 0.085, mapID = 1449, label = "Spraggle Frock", offMapText = "Travel to Spraggle Frock in Un'Goro Crater.", x = 0.4361 },
            },
            text = "Accept Lost! from Spraggle Frock.",
            id = "accept-4492-lost",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4492, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            route = {
                { y = 0.1159, mapID = 1449, label = "Shizzle", offMapText = "Travel to Shizzle in Un'Goro Crater.", x = 0.4424 },
            },
            text = "Accept Shizzle's Flyer from Shizzle.",
            id = "accept-4503-shizzle-s-flyer",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 4503, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 240,
            text = "Kill 10 Pterrordax.",
            route = {
                { y = 0.098, mapID = 1449, label = "Pterrordax", offMapText = "Travel to Pterrordax.", x = 0.56 },
            },
            dependsOn = { "accept-4501-beware-of-pterrordax" },
            id = "objective-4501-1-pterrordax",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4501, text = "Pterrordax", index = 1, count = 10 },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            route = {
                { y = 0.1636, mapID = 1449, label = "Un'Goro Gorilla", offMapText = "Travel to Un'Goro Gorilla.", x = 0.6423 },
            },
            text = "Collect 2 Un'Goro Gorilla Pelt.",
            id = "objective-4289-1-un-goro-gorilla",
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
                questObjective = { id = 4289, text = "Un'Goro Gorilla", index = 1, count = 2 },
            },
            sourceStep = 19,
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
                    { faction = "Alliance" },
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
            sourceStep = 20,
            priority = 260,
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
                    { faction = "Alliance" },
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
            sourceStep = 21,
            priority = 270,
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
                    { faction = "Alliance" },
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
            sourceStep = 22,
            priority = 280,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3881-expedition-salvation" },
        },
        {
            priority = 290,
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceInstructionStep = 25,
            sourceInstructionIndex = 1,
            checkpointQuest = 4292,
            instructionOnly = true,
            rememberPreparation = 4292,
        },
        {
            priority = 300,
            route = {
                { mapID = 1449, x = 0.7992, y = 0.499, label = "Lar'korwi bait site", offMapText = "Travel to Lar'korwi bait site." },
            },
            text = "At the eastern hillside, place the Preserved Threshadon Meat, then apply the Preserved Pheromone Mixture. Kill Lar'korwi when he arrives and loot his head.",
            id = "objective-4292-1-preserved-threshadon-meat",
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
            priority = 310,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 4289, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Turn in The Bait for Lar'korwi to Torwa Pathfinder.",
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            dependsOn = { "objective-4292-1-torwa-s-pouch", "objective-4292-1-preserved-threshadon-meat" },
            id = "turnin-4292-the-bait-for-lar-korwi",
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
                quest = { id = 4292, state = "completed" },
            },
            sourceStep = 26,
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
            priority = 330,
            route = {
                { y = 0.7597, mapID = 1449, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater.", x = 0.7164 },
            },
            text = "Accept The Mighty U'cha from Torwa Pathfinder.",
            id = "accept-4301-the-mighty-u-cha",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4301, state = "activeOrCompleted" },
            },
            sourceStep = 26,
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
            priority = 340,
            text = "Kill 10 Pterrordax.",
            route = {
                { y = 0.864, mapID = 1449, label = "Pterrordax", offMapText = "Travel to Pterrordax.", x = 0.58 },
            },
            dependsOn = { "accept-4501-beware-of-pterrordax" },
            id = "objective-4501-1-pterrordax-2",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4501, text = "Pterrordax", index = 1, count = 10 },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            text = "Enter the Slithering Scar cave in southern Un'Goro Crater. Use the Unused Scraping Vial inside the hive to collect a Hive Wall Sample.",
            route = {
                { mapID = 1449, x = 0.4874, y = 0.8521, label = "Hive Wall Sample", offMapText = "Travel to Hive Wall Sample." },
            },
            dependsOn = { "accept-3883-alien-ecology" },
            id = "objective-3883-1-unused-scraping-vial",
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
                questObjective = { id = 3883, text = "Unused Scraping Vial", index = 1, count = 1 },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-4496-1-gorishi-scent-gland",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 29,
            priority = 360,
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
                    { faction = "Alliance" },
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
            sourceStep = 30,
            priority = 370,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3881-expedition-salvation" },
        },
        {
            id = "level-before-accept-974-finding-the-source",
            kind = "note",
            text = "Reach level 51 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 51 },
            },
            requiredLevel = 51,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 974,
            priority = 380,
        },
        {
            priority = 390,
            route = {
                { y = 0.5043, mapID = 1449, label = "Krakle", offMapText = "Travel to Krakle in Un'Goro Crater.", x = 0.3093 },
            },
            text = "Accept Finding the Source from Krakle.",
            id = "accept-974-finding-the-source",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 974, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            text = "For Finding the Source: Krakle in Un'Goro Crater wants you to find the hottest area of Fire Plume Ridge. Whenever you find a hot spot, right click the thermometer to check the temperature. Keep looking until you find the hottest one.",
            id = "objective-974-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 974, state = "complete" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-974-finding-the-source" },
        },
        {
            priority = 410,
            text = "Turn in Finding the Source to Krakle.",
            route = {
                { y = 0.5043, mapID = 1449, label = "Krakle", offMapText = "Travel to Krakle in Un'Goro Crater.", x = 0.3093 },
            },
            dependsOn = { "accept-974-finding-the-source", "objective-974-quest-work" },
            id = "turnin-974-finding-the-source",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 974, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            route = {
                { y = 0.5043, mapID = 1449, label = "Krakle", offMapText = "Travel to Krakle in Un'Goro Crater.", x = 0.3093 },
            },
            text = "Accept The New Springs from Krakle.",
            id = "accept-980-the-new-springs",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 51 },
                    },
                },
            },
            complete = {
                quest = { id = 980, state = "activeOrCompleted" },
            },
            sourceStep = 34,
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
            id = "objective-3882-1-dinosaur-bone",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            sourceStep = 35,
            priority = 430,
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
                    { faction = "Alliance" },
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
            sourceStep = 35,
            priority = 440,
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
                    { faction = "Alliance" },
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
            sourceStep = 36,
            priority = 450,
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
                    { faction = "Alliance" },
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
            sourceStep = 37,
            priority = 460,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4501-beware-of-pterrordax" },
        },
        {
            priority = 470,
            text = "Collect 5 Un'Goro Soil.",
            route = {
                { y = 0.4, mapID = 1449, label = "Un'Goro Soil", offMapText = "Travel to Un'Goro Soil.", x = 0.348 },
            },
            dependsOn = { "accept-4496-bungle-in-the-jungle" },
            id = "objective-4496-2-un-goro-soil",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4496, text = "Un'Goro Soil", index = 2, count = 5 },
            },
            sourceStep = 38,
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
            priority = 480,
            text = "Turn in Lost! to Ringo.",
            route = {
                { y = 0.4985, mapID = 1449, label = "Ringo", offMapText = "Travel to Ringo in Un'Goro Crater.", x = 0.519 },
            },
            dependsOn = { "accept-4492-lost" },
            id = "turnin-4492-lost",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4492, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            route = {
                { y = 0.4985, mapID = 1449, label = "Ringo", offMapText = "Travel to Ringo in Un'Goro Crater.", x = 0.519 },
            },
            text = "Accept A Little Help From My Friends from Ringo.",
            id = "accept-4491-a-little-help-from-my-friends",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4491, state = "activeOrCompleted" },
            },
            sourceStep = 40,
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
            priority = 500,
            route = {
                { mapID = 1449, x = 0.4362, y = 0.0851, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            text = "Escort Ringo to Spraggle Frock at Marshal's Refuge. Stay close and use Spraggle's Canteen whenever he faints. The quest is timed.",
            id = "objective-4491-authored-escort",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            priority = 510,
            text = "Turn in A Little Help From My Friends to Spraggle Frock.",
            route = {
                { y = 0.0851, mapID = 1449, label = "Spraggle Frock", offMapText = "Travel to Spraggle Frock in Un'Goro Crater.", x = 0.4362 },
            },
            dependsOn = { "accept-4491-a-little-help-from-my-friends", "objective-4491-authored-escort" },
            id = "turnin-4491-a-little-help-from-my-friends",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4491, state = "completed" },
            },
            sourceStep = 42,
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
            priority = 520,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 4501, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            text = "Turn in Roll the Bones to Spark Nilminer.",
            route = {
                { y = 0.0743, mapID = 1449, label = "Spark Nilminer", offMapText = "Travel to Spark Nilminer in Un'Goro Crater.", x = 0.435 },
            },
            dependsOn = { "accept-3882-roll-the-bones", "objective-3882-1-dinosaur-bone" },
            id = "turnin-3882-roll-the-bones",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 3882, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 540,
            text = "Climb to the Northern Crystal Pylon. Touch it and choose I want to examine this pylon.",
            id = "objective-4285-quest-work",
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
                questObjective = { id = 4285, index = 1, count = 1 },
            },
            sourceStep = 45,
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
                { mapID = 1449, x = 0.5648, y = 0.1245, label = "Northern Crystal Pylon", offMapText = "Travel to Northern Crystal Pylon." },
            },
        },
        {
            priority = 550,
            text = "Turn in The Northern Pylon to J.D. Collie.",
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            dependsOn = { "accept-4285-the-northern-pylon", "objective-4285-quest-work" },
            id = "turnin-4285-the-northern-pylon",
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
                quest = { id = 4285, state = "completed" },
            },
            sourceStep = 45,
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
            priority = 560,
            text = "Climb to the Eastern Crystal Pylon. Touch it and choose I want to examine this pylon.",
            id = "objective-4287-quest-work",
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
                questObjective = { id = 4287, index = 1, count = 1 },
            },
            sourceStep = 45,
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
                { mapID = 1449, x = 0.7724, y = 0.4997, label = "Eastern Crystal Pylon", offMapText = "Travel to Eastern Crystal Pylon." },
            },
        },
        {
            priority = 570,
            text = "Turn in The Eastern Pylon to J.D. Collie.",
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            dependsOn = { "accept-4287-the-eastern-pylon", "objective-4287-quest-work" },
            id = "turnin-4287-the-eastern-pylon",
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
                quest = { id = 4287, state = "completed" },
            },
            sourceStep = 45,
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
            priority = 580,
            text = "Climb to the Western Crystal Pylon. Touch it and choose I want to examine this pylon.",
            id = "objective-4288-quest-work",
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
                questObjective = { id = 4288, index = 1, count = 1 },
            },
            sourceStep = 45,
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
                { mapID = 1449, x = 0.2379, y = 0.5919, label = "Western Crystal Pylon", offMapText = "Travel to Western Crystal Pylon." },
            },
        },
        {
            priority = 590,
            text = "Turn in The Western Pylon to J.D. Collie.",
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            dependsOn = { "accept-4288-the-western-pylon", "objective-4288-quest-work" },
            id = "turnin-4288-the-western-pylon",
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
                quest = { id = 4288, state = "completed" },
            },
            sourceStep = 45,
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
            priority = 600,
            route = {
                { mapID = 1449, x = 0.4192, y = 0.027000000000000003, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater." },
            },
            text = "Accept Making Sense of It from J.D. Collie.",
            id = "accept-4321-making-sense-of-it",
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
                quest = { id = 4321, state = "activeOrCompleted" },
            },
            sourceStep = 45,
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
            priority = 610,
            text = "Turn in Making Sense of It to J.D. Collie.",
            route = {
                { y = 0.027, mapID = 1449, label = "J.D. Collie", offMapText = "Travel to J.D. Collie in Un'Goro Crater.", x = 0.4192 },
            },
            dependsOn = { "accept-4321-making-sense-of-it" },
            id = "turnin-4321-making-sense-of-it",
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
                quest = { id = 4321, state = "completed" },
            },
            sourceStep = 46,
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
            priority = 620,
            text = "Turn in Alien Ecology to Hol'anyee Marshal.",
            route = {
                { y = 0.0679, mapID = 1449, label = "Hol'anyee Marshal", offMapText = "Travel to Hol'anyee Marshal in Un'Goro Crater.", x = 0.4347 },
            },
            dependsOn = { "accept-3883-alien-ecology", "objective-3883-1-unused-scraping-vial" },
            id = "turnin-3883-alien-ecology",
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
                quest = { id = 3883, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            complete = {
                quest = { id = 3881, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
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
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 4503, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            route = {
                { y = 0.1344, mapID = 1449, label = "Karna Remtravel", offMapText = "Travel to Karna Remtravel in Un'Goro Crater.", x = 0.4638 },
            },
            text = "Accept Chasing A-Me 01 from Karna Remtravel.",
            id = "accept-4243-chasing-a-me-01",
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
                quest = { id = 4243, state = "activeOrCompleted" },
            },
            sourceStep = 51,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            text = "Collect 1 U'cha's Pelt.",
            route = {
                { mapID = 1449, x = 0.6815000000000001, y = 0.1258, label = "U'cha's Pelt", offMapText = "Travel to U'cha's Pelt." },
            },
            dependsOn = { "accept-4301-the-mighty-u-cha" },
            id = "objective-4301-1-u-cha",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4301, text = "U'cha", index = 1, count = 1 },
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
            priority = 670,
            text = "Turn in Chasing A-Me 01 to A-Me 01.",
            route = {
                { mapID = 1449, x = 0.6765000000000001, y = 0.16760000000000003, label = "A-Me 01", offMapText = "Travel to A-Me 01 in Un'Goro Crater." },
            },
            dependsOn = { "accept-4243-chasing-a-me-01" },
            id = "turnin-4243-chasing-a-me-01",
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
                quest = { id = 4243, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            route = {
                { mapID = 1449, x = 0.6765000000000001, y = 0.16760000000000003, label = "A-Me 01", offMapText = "Travel to A-Me 01 in Un'Goro Crater." },
            },
            text = "Accept Chasing A-Me 01 from A-Me 01.",
            id = "accept-4244-chasing-a-me-01",
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
                quest = { id = 4244, state = "activeOrCompleted" },
            },
            sourceStep = 53,
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
            priority = 690,
            text = "For Chasing A-Me 01: Find a Mithril Casing and return to A-Me 01 in Un'Goro Crater.",
            id = "objective-4244-quest-work",
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
                quest = { id = 4244, state = "complete" },
            },
            sourceStep = 54,
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
            priority = 700,
            text = "Turn in Chasing A-Me 01 to A-Me 01.",
            route = {
                { y = 0.1676, mapID = 1449, label = "A-Me 01", offMapText = "Travel to A-Me 01 in Un'Goro Crater.", x = 0.6765 },
            },
            dependsOn = { "accept-4244-chasing-a-me-01", "objective-4244-quest-work" },
            id = "turnin-4244-chasing-a-me-01",
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
                quest = { id = 4244, state = "completed" },
            },
            sourceStep = 54,
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
            priority = 710,
            route = {
                { y = 0.1676, mapID = 1449, label = "A-Me 01", offMapText = "Travel to A-Me 01 in Un'Goro Crater.", x = 0.6765 },
            },
            text = "Accept Chasing A-Me 01 from A-Me 01.",
            id = "accept-4245-chasing-a-me-01",
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
                quest = { id = 4245, state = "activeOrCompleted" },
            },
            sourceStep = 54,
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
            id = "objective-4245-reviewed-escort",
            kind = "objective",
            text = "Follow and protect A-Me 01 until she reaches Karna Remtravel.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4244 },
                    conditions = {},
                },
            },
            complete = {
                quest = { id = 4245, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1449, x = 0.4632, y = 0.1368, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 55,
            dependsOn = { "accept-4245-chasing-a-me-01" },
            priority = 720,
        },
        {
            priority = 730,
            text = "Turn in Chasing A-Me 01 to Karna Remtravel.",
            route = {
                { y = 0.1345, mapID = 1449, label = "Karna Remtravel", offMapText = "Travel to Karna Remtravel in Un'Goro Crater.", x = 0.4638 },
            },
            dependsOn = { "accept-4245-chasing-a-me-01", "objective-4245-reviewed-escort" },
            id = "turnin-4245-chasing-a-me-01",
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
                quest = { id = 4245, state = "completed" },
            },
            sourceStep = 56,
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
            priority = 740,
            text = "Turn in The Mighty U'cha to Torwa Pathfinder.",
            route = {
                { mapID = 1449, x = 0.7162999999999999, y = 0.7595999999999999, label = "Torwa Pathfinder", offMapText = "Travel to Torwa Pathfinder in Un'Goro Crater." },
            },
            dependsOn = { "accept-4301-the-mighty-u-cha", "objective-4301-1-u-cha" },
            id = "turnin-4301-the-mighty-u-cha",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4301, state = "completed" },
            },
            sourceStep = 57,
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
            id = "objective-4504-1-super-sticky-tar",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                },
            },
            text = "Collect 12 Super Sticky Tar.",
            complete = {
                questObjective = { id = 4504, index = 1, text = "Super Sticky Tar", count = 12 },
            },
            route = {
                { mapID = 1449, x = 0.6, y = 0.332, label = "Super Sticky Tar", offMapText = "Travel to Super Sticky Tar." },
            },
            sourceStep = 58,
            priority = 750,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4504-super-sticky" },
        },
        {
            priority = 760,
            route = {
                { y = 0.081, mapID = 1449, label = "Linken", offMapText = "Travel to Linken in Un'Goro Crater.", x = 0.4466 },
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
            sourceStep = 59,
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
            priority = 770,
            text = "Turn in Bungle in the Jungle to Alchemist Pestlezugg.",
            route = {
                { y = 0.2696, mapID = 1446, label = "Alchemist Pestlezugg", offMapText = "Travel to Alchemist Pestlezugg in Tanaris.", x = 0.5089 },
            },
            dependsOn = { "accept-4496-bungle-in-the-jungle", "objective-4496-1-gorishi-scent-gland", "objective-4496-2-un-goro-soil" },
            id = "turnin-4496-bungle-in-the-jungle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4496, state = "completed" },
            },
            sourceStep = 60,
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
            priority = 780,
            text = "Turn in Super Sticky to Tran'rek.",
            route = {
                { y = 0.2676, mapID = 1446, label = "Tran'rek", offMapText = "Travel to Tran'rek in Tanaris.", x = 0.5157 },
            },
            dependsOn = { "accept-4504-super-sticky", "objective-4504-1-super-sticky-tar" },
            id = "turnin-4504-super-sticky",
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
                quest = { id = 4504, state = "completed" },
            },
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 790,
            route = {
                { y = 0.2891, mapID = 1446, label = "Videre Elixir", offMapText = "Travel to Videre Elixir.", x = 0.523 },
            },
            text = "Collect 3 Videre Elixir.",
            id = "objective-3909-1-videre-elixir",
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
                questObjective = { id = 3909, text = "Videre Elixir", index = 1 },
            },
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
            id = "level-before-objective-978-1-moontouched-feather",
            kind = "note",
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 52 },
            },
            requiredLevel = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 978,
            priority = 800,
        },
        {
            priority = 810,
            route = {
                { y = 0.2891, mapID = 1446, label = "Moontouched Feather", offMapText = "Travel to Moontouched Feather.", x = 0.523 },
            },
            text = "Collect 10 Moontouched Feather.",
            id = "objective-978-1-moontouched-feather",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 978, text = "Moontouched Feather", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3661 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 820,
            route = {
                { y = 0.4378, mapID = 1413, label = "Islen Waterseer", offMapText = "Travel to Islen Waterseer in The Barrens.", x = 0.6583 },
            },
            text = "Accept Cleansed Water Returns to Felwood from Islen Waterseer.",
            id = "accept-5159-cleansed-water-returns-to-felwood",
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
                quest = { id = 5159, state = "activeOrCompleted" },
            },
            sourceStep = 63,
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
        {
            priority = 830,
            text = "For Volcanic Activity: Collect 9 samples of Un'Goro Ash from the fire elementals around the volcano in Un'Goro Crater.",
            id = "objective-4502-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 4502, state = "complete" },
            },
            sourceStep = 64,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 840,
            route = {
                { y = 0.3874, mapID = 1413, label = "Liv Rizzlefix", offMapText = "Travel to Liv Rizzlefix in The Barrens.", x = 0.6245 },
            },
            text = "Turn in Volcanic Activity to Liv Rizzlefix.",
            id = "turnin-4502-volcanic-activity",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                },
            },
            complete = {
                quest = { id = 4502, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-4502-quest-work" },
        },
        {
            priority = 850,
            route = {
                { y = 0.8392, mapID = 1457, label = "Eridan's Vial", offMapText = "Travel to Eridan's Vial.", x = 0.3951 },
            },
            text = "Collect 1 Vial of Blessed Water.",
            id = "objective-4441-1-eridan-s-vial",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 49 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4441, text = "Eridan's Vial", index = 1, count = 1 },
            },
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 939 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1047-the-new-frontier",
            kind = "note",
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 1047,
            alternativeQuests = { 1015, 1019 },
            priority = 860,
        },
        {
            priority = 870,
            text = "Accept The New Frontier from Herald Moonstalker.",
            id = "accept-1047-the-new-frontier",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1047, state = "activeOrCompleted" },
            },
            sourceStep = 74,
            requiredQuests = {},
            alternativeQuests = { 1015, 1019 },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 880,
            text = "Turn in The New Frontier to Arch Druid Fandral Staghelm.",
            route = {
                { y = 0.0925, mapID = 1457, label = "Arch Druid Fandral Staghelm", offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.", x = 0.3482 },
            },
            dependsOn = { "accept-1047-the-new-frontier" },
            id = "turnin-1047-the-new-frontier",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1047, state = "completed" },
            },
            sourceStep = 79,
            requiredQuests = {},
            alternativeQuests = { 1015, 1019 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The New Frontier from Arch Druid Fandral Staghelm.",
            priority = 890,
            route = {
                { y = 0.0925, mapID = 1457, label = "Arch Druid Fandral Staghelm", offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.", x = 0.3482 },
            },
            dependsOn = { "turnin-1047-the-new-frontier" },
            id = "accept-6761-the-new-frontier",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6761, state = "activeOrCompleted" },
            },
            sourceStep = 79,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1015, 1019, 1047 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 900,
            route = {
                { y = 0.0925, mapID = 1457, label = "Arch Druid Fandral Staghelm", offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.", x = 0.3482 },
            },
            text = "Accept Morrowgrain Research from Arch Druid Fandral Staghelm.",
            id = "accept-3781-morrowgrain-research",
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
                quest = { id = 3781, state = "activeOrCompleted" },
            },
            sourceStep = 79,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3764 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 910,
            text = "Turn in The New Frontier to Mathrengyl Bearwalker.",
            route = {
                { y = 0.0842, mapID = 1457, label = "Mathrengyl Bearwalker", offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.", x = 0.354 },
            },
            dependsOn = { "accept-6761-the-new-frontier" },
            id = "turnin-6761-the-new-frontier",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6761, state = "completed" },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1015, 1019, 1047 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 920,
            route = {
                { y = 0.0842, mapID = 1457, label = "Mathrengyl Bearwalker", offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.", x = 0.354 },
            },
            text = "Accept Rabine Saturna from Mathrengyl Bearwalker.",
            id = "accept-6762-rabine-saturna",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6762, state = "activeOrCompleted" },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6761 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 930,
            text = "Turn in Morrowgrain Research to Mathrengyl Bearwalker.",
            route = {
                { y = 0.0842, mapID = 1457, label = "Mathrengyl Bearwalker", offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.", x = 0.354 },
            },
            dependsOn = { "accept-3781-morrowgrain-research" },
            id = "turnin-3781-morrowgrain-research",
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
                quest = { id = 3781, state = "completed" },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3764 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 940,
            text = "Turn in Moontouched Wildkin to Erelas Ambersky.",
            route = {
                { y = 0.9204, mapID = 1438, label = "Erelas Ambersky", offMapText = "Travel to Erelas Ambersky in Teldrassil.", x = 0.555 },
            },
            dependsOn = { "objective-978-1-moontouched-feather" },
            id = "turnin-978-moontouched-wildkin",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 978, state = "completed" },
            },
            sourceStep = 81,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3661 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 950,
            route = {
                { y = 0.9204, mapID = 1438, label = "Erelas Ambersky", offMapText = "Travel to Erelas Ambersky in Teldrassil.", x = 0.555 },
            },
            text = "Accept Find Ranshalla from Erelas Ambersky.",
            id = "accept-979-find-ranshalla",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 979, state = "activeOrCompleted" },
            },
            sourceStep = 81,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 978 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 960,
            route = {
                { y = 0.9223, mapID = 1438, label = "Daryn Lightwind", offMapText = "Travel to Daryn Lightwind in Teldrassil.", x = 0.5541 },
            },
            text = "Accept Starfall from Daryn Lightwind.",
            id = "accept-5250-starfall",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 53 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5250, state = "activeOrCompleted" },
            },
            sourceStep = 82,
            requiredQuests = {},
            alternativeQuests = { 5249 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
