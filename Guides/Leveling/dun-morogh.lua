local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Dwarf & Gnome Starter",
    category = "Leveling Quest Guides",
    id = "leveling-era-dun-morogh",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
            priority = 10,
            route = {
                { mapID = 1426, x = 0.2993, y = 0.7120000000000001, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "accept-179-dwarven-outfitters",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 8,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-179-dwarven-outfitters",
        },
        {
            priority = 20,
            route = {
                { y = 0.744, mapID = 1426, label = "Ragged Young Wolf", offMapText = "Travel to Ragged Young Wolf.", x = 0.306 },
            },
            id = "objective-179-1-ragged-young-wolf",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 9,
            useClientPin = false,
            dependsOn = { "accept-179-dwarven-outfitters" },
            classAction = "objective-179-1-ragged-young-wolf",
        },
        {
            priority = 30,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            dependsOn = { "accept-179-dwarven-outfitters", "objective-179-1-ragged-young-wolf" },
            id = "turnin-179-dwarven-outfitters",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 11,
            useClientPin = false,
            classAction = "turnin-179-dwarven-outfitters",
        },
        {
            priority = 40,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            text = "Accept Simple Rune from Sten Stoutarm.",
            id = "accept-3106-simple-rune",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 3106, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
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
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            text = "Accept Encrypted Rune from Sten Stoutarm.",
            id = "accept-3109-encrypted-rune",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 3109, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
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
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            text = "Accept Hallowed Rune from Sten Stoutarm.",
            id = "accept-3110-hallowed-rune",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 3110, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            text = "Accept Consecrated Rune from Sten Stoutarm.",
            id = "accept-3107-consecrated-rune",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 3107, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
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
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            text = "Accept Etched Rune from Sten Stoutarm.",
            id = "accept-3108-etched-rune",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 3108, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            text = "Accept Glyphic Memorandum from Sten Stoutarm.",
            id = "accept-3114-glyphic-memorandum",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 3114, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
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
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            text = "Accept Simple Memorandum from Sten Stoutarm.",
            id = "accept-3112-simple-memorandum",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 3112, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            text = "Accept Tainted Memorandum from Sten Stoutarm.",
            id = "accept-3115-tainted-memorandum",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 3115, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            text = "Accept Encrypted Memorandum from Sten Stoutarm.",
            id = "accept-3113-encrypted-memorandum",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 3113, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            text = "Accept Coldridge Valley Mail Delivery from Sten Stoutarm.",
            id = "accept-233-coldridge-valley-mail-delivery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 233, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
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
                { y = 0.7125, mapID = 1426, label = "Balir Frosthammer", offMapText = "Travel to Balir Frosthammer in Dun Morogh.", x = 0.2971 },
            },
            text = "Accept A New Threat from Balir Frosthammer.",
            id = "accept-170-a-new-threat",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 170, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "Kill 6 Rockjaw Trogg.",
            route = {
                { y = 0.728, mapID = 1426, label = "Rockjaw Trogg", offMapText = "Travel to Rockjaw Trogg.", x = 0.258 },
            },
            dependsOn = { "accept-170-a-new-threat" },
            id = "objective-170-1-rockjaw-trogg",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 170, text = "Rockjaw Trogg", index = 1, count = 6 },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            text = "Kill 6 Burly Rockjaw Trogg.",
            route = {
                { y = 0.728, mapID = 1426, label = "Burly Rockjaw Trogg", offMapText = "Travel to Burly Rockjaw Trogg.", x = 0.258 },
            },
            dependsOn = { "accept-170-a-new-threat" },
            id = "objective-170-2-burly-rockjaw-trogg",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 170, text = "Burly Rockjaw Trogg", index = 2, count = 6 },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            text = "Turn in Coldridge Valley Mail Delivery to Talin Keeneye.",
            route = {
                { y = 0.7143, mapID = 1426, label = "Talin Keeneye", offMapText = "Travel to Talin Keeneye in Dun Morogh.", x = 0.226 },
            },
            dependsOn = { "accept-233-coldridge-valley-mail-delivery" },
            id = "turnin-233-coldridge-valley-mail-delivery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 233, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            route = {
                { y = 0.7143, mapID = 1426, label = "Talin Keeneye", offMapText = "Travel to Talin Keeneye in Dun Morogh.", x = 0.226 },
            },
            text = "Accept Coldridge Valley Mail Delivery from Talin Keeneye.",
            id = "accept-234-coldridge-valley-mail-delivery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 234, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 233 },
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
                { y = 0.7143, mapID = 1426, label = "Talin Keeneye", offMapText = "Travel to Talin Keeneye in Dun Morogh.", x = 0.226 },
            },
            text = "Accept The Boar Hunter from Talin Keeneye.",
            id = "accept-183-the-boar-hunter",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 183, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            text = "Kill 12 Small Crag Boar.",
            route = {
                { y = 0.712, mapID = 1426, label = "Small Crag Boar", offMapText = "Travel to Small Crag Boar.", x = 0.222 },
            },
            dependsOn = { "accept-183-the-boar-hunter" },
            id = "objective-183-1-small-crag-boar",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 183, text = "Small Crag Boar", index = 1, count = 12 },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "Turn in The Boar Hunter to Talin Keeneye.",
            route = {
                { y = 0.7143, mapID = 1426, label = "Talin Keeneye", offMapText = "Travel to Talin Keeneye in Dun Morogh.", x = 0.226 },
            },
            dependsOn = { "accept-183-the-boar-hunter", "objective-183-1-small-crag-boar" },
            id = "turnin-183-the-boar-hunter",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 183, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            text = "Turn in Coldridge Valley Mail Delivery to Grelin Whitebeard.",
            route = {
                { y = 0.7571, mapID = 1426, label = "Grelin Whitebeard", offMapText = "Travel to Grelin Whitebeard in Dun Morogh.", x = 0.2508 },
            },
            dependsOn = { "accept-234-coldridge-valley-mail-delivery" },
            id = "turnin-234-coldridge-valley-mail-delivery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 234, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 233 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-3364-scalding-mornbrew-delivery",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3364,
            priority = 230,
        },
        {
            priority = 240,
            route = {
                { y = 0.7596, mapID = 1426, label = "Nori Pridedrift", offMapText = "Travel to Nori Pridedrift in Dun Morogh.", x = 0.2498 },
            },
            text = "Accept Scalding Mornbrew Delivery from Nori Pridedrift.",
            id = "accept-3364-scalding-mornbrew-delivery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3364, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            route = {
                { mapID = 1426, x = 0.2851, y = 0.6767, label = "Felix Whindlebolt", offMapText = "Travel to Felix Whindlebolt in Dun Morogh." },
            },
            text = "Accept A Refugee's Quandary from Felix Whindlebolt.",
            id = "accept-3361-a-refugee-s-quandary",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3361, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            text = "Turn in Scalding Mornbrew Delivery to Durnan Furcutter.",
            route = {
                { y = 0.6637, mapID = 1426, label = "Durnan Furcutter", offMapText = "Travel to Durnan Furcutter in Dun Morogh.", x = 0.2877 },
            },
            dependsOn = { "accept-3364-scalding-mornbrew-delivery" },
            id = "turnin-3364-scalding-mornbrew-delivery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3364, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            route = {
                { y = 0.6637, mapID = 1426, label = "Durnan Furcutter", offMapText = "Travel to Durnan Furcutter in Dun Morogh.", x = 0.2877 },
            },
            text = "Accept Bring Back the Mug from Durnan Furcutter.",
            id = "accept-3365-bring-back-the-mug",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3365, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 280,
            text = "Read Simple Rune in your bags. Turn in Simple Rune to Thran Khorman.",
            route = {
                { y = 0.6724, mapID = 1426, label = "Thran Khorman", offMapText = "Travel to Thran Khorman in Dun Morogh.", x = 0.2883 },
            },
            dependsOn = { "accept-3106-simple-rune" },
            id = "turnin-3106-simple-rune",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 3106, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 290,
            text = "Read Encrypted Rune in your bags. Turn in Encrypted Rune to Solm Hargrin.",
            route = {
                { y = 0.6751, mapID = 1426, label = "Solm Hargrin", offMapText = "Travel to Solm Hargrin in Dun Morogh.", x = 0.2837 },
            },
            dependsOn = { "accept-3109-encrypted-rune" },
            id = "turnin-3109-encrypted-rune",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 3109, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            text = "Read Hallowed Rune in your bags. Turn in Hallowed Rune to Branstock Khalder.",
            route = {
                { y = 0.6639, mapID = 1426, label = "Branstock Khalder", offMapText = "Travel to Branstock Khalder in Dun Morogh.", x = 0.286 },
            },
            dependsOn = { "accept-3110-hallowed-rune" },
            id = "turnin-3110-hallowed-rune",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 3110, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            text = "Read Consecrated Rune in your bags. Turn in Consecrated Rune to Bromos Grummner.",
            route = {
                { y = 0.6833, mapID = 1426, label = "Bromos Grummner", offMapText = "Travel to Bromos Grummner in Dun Morogh.", x = 0.2883 },
            },
            dependsOn = { "accept-3107-consecrated-rune" },
            id = "turnin-3107-consecrated-rune",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 3107, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Read Etched Rune in your bags. Turn in Etched Rune to Thorgas Grimson.",
            route = {
                { y = 0.6746, mapID = 1426, label = "Thorgas Grimson", offMapText = "Travel to Thorgas Grimson in Dun Morogh.", x = 0.2918 },
            },
            dependsOn = { "accept-3108-etched-rune" },
            id = "turnin-3108-etched-rune",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 3108, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            text = "Read Simple Memorandum in your bags. Turn in Simple Memorandum to Thran Khorman.",
            route = {
                { y = 0.6724, mapID = 1426, label = "Thran Khorman", offMapText = "Travel to Thran Khorman in Dun Morogh.", x = 0.2883 },
            },
            dependsOn = { "accept-3112-simple-memorandum" },
            id = "turnin-3112-simple-memorandum",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 3112, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            text = "Read Encrypted Memorandum in your bags. Turn in Encrypted Memorandum to Solm Hargrin.",
            route = {
                { y = 0.6751, mapID = 1426, label = "Solm Hargrin", offMapText = "Travel to Solm Hargrin in Dun Morogh.", x = 0.2837 },
            },
            dependsOn = { "accept-3113-encrypted-memorandum" },
            id = "turnin-3113-encrypted-memorandum",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 3113, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            text = "Read Glyphic Memorandum in your bags. Turn in Glyphic Memorandum to Marryk Nurribit.",
            route = {
                { y = 0.6636, mapID = 1426, label = "Marryk Nurribit", offMapText = "Travel to Marryk Nurribit in Dun Morogh.", x = 0.2871 },
            },
            dependsOn = { "accept-3114-glyphic-memorandum" },
            id = "turnin-3114-glyphic-memorandum",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 3114, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            text = "Read Tainted Memorandum in your bags. Turn in Tainted Memorandum to Alamar Grimm.",
            route = {
                { y = 0.6614, mapID = 1426, label = "Alamar Grimm", offMapText = "Travel to Alamar Grimm in Dun Morogh.", x = 0.2865 },
            },
            dependsOn = { "accept-3115-tainted-memorandum" },
            id = "turnin-3115-tainted-memorandum",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 3115, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            route = {
                { y = 0.6614, mapID = 1426, label = "Alamar Grimm", offMapText = "Travel to Alamar Grimm in Dun Morogh.", x = 0.2865 },
            },
            text = "Accept Beginnings from Alamar Grimm.",
            id = "accept-1599-beginnings",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 1599, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {},
            alternativeQuests = { 1598 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            text = "Turn in A New Threat to Balir Frosthammer.",
            route = {
                { mapID = 1426, x = 0.29710000000000003, y = 0.7125, label = "Balir Frosthammer", offMapText = "Travel to Balir Frosthammer in Dun Morogh." },
            },
            dependsOn = { "accept-170-a-new-threat", "objective-170-1-rockjaw-trogg", "objective-170-2-burly-rockjaw-trogg" },
            id = "turnin-170-a-new-threat",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 170, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 179 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.7571, mapID = 1426, label = "Grelin Whitebeard", offMapText = "Travel to Grelin Whitebeard in Dun Morogh.", x = 0.2508 },
            },
            text = "Accept The Troll Cave from Grelin Whitebeard.",
            id = "accept-182-the-troll-cave",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 182, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            text = "Turn in Bring Back the Mug to Nori Pridedrift.",
            route = {
                { y = 0.7596, mapID = 1426, label = "Nori Pridedrift", offMapText = "Travel to Nori Pridedrift in Dun Morogh.", x = 0.2498 },
            },
            dependsOn = { "accept-3365-bring-back-the-mug" },
            id = "turnin-3365-bring-back-the-mug",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3365, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3364 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            text = "Collect 3 Feather Charm.",
            route = {
                { y = 0.7983, mapID = 1426, label = "Frostmane Novice", offMapText = "Travel to Frostmane Novice.", x = 0.2678 },
            },
            dependsOn = { "accept-1599-beginnings" },
            id = "objective-1599-1-frostmane-novice",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1599, text = "Frostmane Novice", index = 1, count = 3 },
            },
            sourceStep = 44,
            requiredQuests = {},
            alternativeQuests = { 1598 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            text = "Turn in Beginnings to Alamar Grimm.",
            route = {
                { mapID = 1426, x = 0.2865, y = 0.6614, label = "Alamar Grimm", offMapText = "Travel to Alamar Grimm in Dun Morogh." },
            },
            dependsOn = { "accept-1599-beginnings", "objective-1599-1-frostmane-novice" },
            id = "turnin-1599-beginnings",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 1599, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {},
            alternativeQuests = { 1598 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-3361-1-felix-s-box",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Felix's Box.",
            complete = {
                questObjective = { id = 3361, index = 1, text = "Felix's Box", count = 1 },
            },
            route = {
                { mapID = 1426, x = 0.20879999999999999, y = 0.7606999999999999, label = "Felix's Box", offMapText = "Travel to Felix's Box." },
            },
            sourceStep = 49,
            priority = 430,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3361-a-refugee-s-quandary" },
        },
        {
            id = "objective-3361-2-felix-s-chest",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Felix's Chest.",
            complete = {
                questObjective = { id = 3361, index = 2, text = "Felix's Chest", count = 1 },
            },
            route = {
                { mapID = 1426, x = 0.2278, y = 0.8, label = "Felix's Chest", offMapText = "Travel to Felix's Chest." },
            },
            sourceStep = 50,
            priority = 440,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3361-a-refugee-s-quandary" },
        },
        {
            id = "objective-3361-3-felix-s-bucket-of-bolts",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Felix's Bucket of Bolts.",
            complete = {
                questObjective = { id = 3361, index = 3, text = "Felix's Bucket of Bolts", count = 1 },
            },
            route = {
                { mapID = 1426, x = 0.2633, y = 0.7927, label = "Felix's Bucket of Bolts", offMapText = "Travel to Felix's Bucket of Bolts." },
            },
            sourceStep = 51,
            priority = 450,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3361-a-refugee-s-quandary" },
        },
        {
            id = "objective-182-1-frostmane-troll-whelp",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 14 Frostmane Troll Whelp.",
            complete = {
                questObjective = { id = 182, index = 1, text = "Frostmane Troll Whelp", count = 14 },
            },
            route = {
                { mapID = 1426, x = 0.26780000000000004, y = 0.7983, label = "Frostmane Troll Whelp", offMapText = "Travel to Frostmane Troll Whelp." },
            },
            sourceStep = 52,
            priority = 460,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-182-the-troll-cave" },
        },
        {
            priority = 470,
            text = "Turn in The Troll Cave to Grelin Whitebeard.",
            route = {
                { mapID = 1426, x = 0.25079999999999997, y = 0.7570999999999999, label = "Grelin Whitebeard", offMapText = "Travel to Grelin Whitebeard in Dun Morogh." },
            },
            dependsOn = { "accept-182-the-troll-cave", "objective-182-1-frostmane-troll-whelp" },
            id = "turnin-182-the-troll-cave",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 182, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { mapID = 1426, x = 0.25079999999999997, y = 0.7570999999999999, label = "Grelin Whitebeard", offMapText = "Travel to Grelin Whitebeard in Dun Morogh." },
            },
            text = "Accept The Stolen Journal from Grelin Whitebeard.",
            id = "accept-218-the-stolen-journal",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 218, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 182 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 490,
            text = "Collect 1 Grelin Whitebeard's Journal.",
            route = {
                { mapID = 1426, x = 0.3049, y = 0.8016, label = "Grelin Whitebeard's Journal", offMapText = "Travel to Grelin Whitebeard's Journal." },
            },
            dependsOn = { "accept-218-the-stolen-journal" },
            id = "objective-218-1-grik-nir-the-cold",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 218, text = "Grik'nir the Cold", index = 1, count = 1 },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 182 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            text = "Turn in The Stolen Journal to Grelin Whitebeard.",
            route = {
                { mapID = 1426, x = 0.25079999999999997, y = 0.7570999999999999, label = "Grelin Whitebeard", offMapText = "Travel to Grelin Whitebeard in Dun Morogh." },
            },
            dependsOn = { "accept-218-the-stolen-journal", "objective-218-1-grik-nir-the-cold" },
            id = "turnin-218-the-stolen-journal",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 218, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 182 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            route = {
                { mapID = 1426, x = 0.25079999999999997, y = 0.7570999999999999, label = "Grelin Whitebeard", offMapText = "Travel to Grelin Whitebeard in Dun Morogh." },
            },
            text = "Accept Senir's Observations from Grelin Whitebeard.",
            id = "accept-282-senir-s-observations",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 282, state = "activeOrCompleted" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 218 },
                    conditions = {},
                },
            },
            alternativeQuests = { 287 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            text = "Turn in A Refugee's Quandary to Felix Whindlebolt.",
            route = {
                { mapID = 1426, x = 0.28550000000000003, y = 0.6765000000000001, label = "Felix Whindlebolt", offMapText = "Travel to Felix Whindlebolt in Dun Morogh." },
            },
            dependsOn = {
                "accept-3361-a-refugee-s-quandary",
                "objective-3361-1-felix-s-box",
                "objective-3361-2-felix-s-chest",
                "objective-3361-3-felix-s-bucket-of-bolts",
            },
            id = "turnin-3361-a-refugee-s-quandary",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3361, state = "completed" },
            },
            sourceStep = 59,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            text = "Turn in Senir's Observations to Mountaineer Thalos.",
            route = {
                { mapID = 1426, x = 0.3348, y = 0.7184, label = "Mountaineer Thalos", offMapText = "Travel to Mountaineer Thalos in Dun Morogh." },
            },
            dependsOn = { "accept-282-senir-s-observations" },
            id = "turnin-282-senir-s-observations",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 282, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 218 },
                    conditions = {},
                },
            },
            alternativeQuests = { 287 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 540,
            route = {
                { mapID = 1426, x = 0.3348, y = 0.7184, label = "Mountaineer Thalos", offMapText = "Travel to Mountaineer Thalos in Dun Morogh." },
            },
            text = "Accept Senir's Observations from Mountaineer Thalos.",
            id = "accept-420-senir-s-observations",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 420, state = "activeOrCompleted" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 282 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 550,
            route = {
                { y = 0.7224, mapID = 1426, label = "Hands Springsprocket", offMapText = "Travel to Hands Springsprocket in Dun Morogh.", x = 0.3385 },
            },
            text = "Accept Supplies to Tannok from Hands Springsprocket.",
            id = "accept-2160-supplies-to-tannok",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2160, state = "activeOrCompleted" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            text = "Turn in Senir's Observations to Senir Whitebeard.",
            route = {
                { mapID = 1426, x = 0.4673, y = 0.5383, label = "Senir Whitebeard", offMapText = "Travel to Senir Whitebeard in Dun Morogh." },
            },
            dependsOn = { "accept-420-senir-s-observations" },
            id = "turnin-420-senir-s-observations",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 420, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 282 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-384-beer-basted-boar-ribs",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 384,
            priority = 570,
        },
        {
            priority = 580,
            route = {
                { y = 0.5236, mapID = 1426, label = "Ragnar Thunderbrew", offMapText = "Travel to Ragnar Thunderbrew in Dun Morogh.", x = 0.4683 },
            },
            text = "Accept Beer Basted Boar Ribs from Ragnar Thunderbrew.",
            id = "accept-384-beer-basted-boar-ribs",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 384, state = "activeOrCompleted" },
            },
            sourceStep = 70,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            text = "Turn in Supplies to Tannok to Tannok Frosthammer.",
            route = {
                { y = 0.5219, mapID = 1426, label = "Tannok Frosthammer", offMapText = "Travel to Tannok Frosthammer in Dun Morogh.", x = 0.4722 },
            },
            dependsOn = { "accept-2160-supplies-to-tannok" },
            id = "turnin-2160-supplies-to-tannok",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2160, state = "completed" },
            },
            sourceStep = 71,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5625-accept-garments-of-the-light",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5625,
            priority = 600,
        },
        {
            priority = 610,
            route = {
                { y = 0.5219, mapID = 1426, label = "Maxan Anvol", offMapText = "Travel to Maxan Anvol in Dun Morogh.", x = 0.4734 },
            },
            text = "Accept Accept Garments of the Light from Maxan Anvol.",
            id = "accept-5625-accept-garments-of-the-light",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 5625, state = "activeOrCompleted" },
            },
            sourceStep = 72,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 620,
            id = "objective-5625-quest-work",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            sourceStep = 74,
            useClientPin = true,
            dependsOn = { "accept-5625-accept-garments-of-the-light" },
            classAction = "objective-5625-quest-work",
        },
        {
            priority = 630,
            text = "Turn in Accept Garments of the Light to Maxan Anvol.",
            route = {
                { y = 0.5219, mapID = 1426, label = "Maxan Anvol", offMapText = "Travel to Maxan Anvol in Dun Morogh.", x = 0.4734 },
            },
            dependsOn = { "accept-5625-accept-garments-of-the-light", "objective-5625-quest-work" },
            id = "turnin-5625-accept-garments-of-the-light",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 5625, state = "completed" },
            },
            sourceStep = 74,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            route = {
                { y = 0.5168, mapID = 1426, label = "Tharek Blackstone", offMapText = "Travel to Tharek Blackstone in Dun Morogh.", x = 0.4602 },
            },
            text = "Accept Tools for Steelgrill from Tharek Blackstone.",
            id = "accept-400-tools-for-steelgrill",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 400, state = "activeOrCompleted" },
            },
            sourceStep = 75,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 650,
            route = {
                { y = 0.4841, mapID = 1426, label = "Pilot Bellowfiz", offMapText = "Travel to Pilot Bellowfiz in Dun Morogh.", x = 0.4943 },
            },
            text = "Accept Stocking Jetsteam from Pilot Bellowfiz.",
            id = "accept-317-stocking-jetsteam",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 317, state = "activeOrCompleted" },
            },
            sourceStep = 79,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            route = {
                { y = 0.4861, mapID = 1426, label = "Pilot Stonegear", offMapText = "Travel to Pilot Stonegear in Dun Morogh.", x = 0.4962 },
            },
            text = "Accept The Grizzled Den from Pilot Stonegear.",
            id = "accept-313-the-grizzled-den",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 313, state = "activeOrCompleted" },
            },
            sourceStep = 80,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 670,
            text = "Turn in Tools for Steelgrill to Beldin Steelgrill.",
            route = {
                { y = 0.4909, mapID = 1426, label = "Beldin Steelgrill", offMapText = "Travel to Beldin Steelgrill in Dun Morogh.", x = 0.5044 },
            },
            dependsOn = { "accept-400-tools-for-steelgrill" },
            id = "turnin-400-tools-for-steelgrill",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 400, state = "completed" },
            },
            sourceStep = 81,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            route = {
                { y = 0.4942, mapID = 1426, label = "Loslor Rudge", offMapText = "Travel to Loslor Rudge in Dun Morogh.", x = 0.5008 },
            },
            text = "Accept Ammo for Rumbleshot from Loslor Rudge.",
            id = "accept-5541-ammo-for-rumbleshot",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5541, state = "activeOrCompleted" },
            },
            sourceStep = 82,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5541-1-rumbleshot-s-ammo",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Rumbleshot's Ammo.",
            complete = {
                questObjective = { id = 5541, index = 1, text = "Rumbleshot's Ammo", count = 1 },
            },
            route = {
                { mapID = 1426, x = 0.4414, y = 0.5694, label = "Rumbleshot's Ammo", offMapText = "Travel to Rumbleshot's Ammo." },
            },
            sourceStep = 84,
            priority = 690,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5541-ammo-for-rumbleshot" },
        },
        {
            priority = 700,
            text = "Collect 8 Wendigo Mane.",
            route = {
                { y = 0.5403, mapID = 1426, label = "Young Wendigo", offMapText = "Travel to Young Wendigo.", x = 0.4233 },
            },
            dependsOn = { "accept-313-the-grizzled-den" },
            id = "objective-313-1-young-wendigo",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 313, text = "Young Wendigo", index = 1, count = 8 },
            },
            sourceStep = 85,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            text = "Turn in Ammo for Rumbleshot to Hegnar Rumbleshot.",
            route = {
                { mapID = 1426, x = 0.4068, y = 0.6513, label = "Hegnar Rumbleshot", offMapText = "Travel to Hegnar Rumbleshot in Dun Morogh." },
            },
            dependsOn = { "accept-5541-ammo-for-rumbleshot", "objective-5541-1-rumbleshot-s-ammo" },
            id = "turnin-5541-ammo-for-rumbleshot",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5541, state = "completed" },
            },
            sourceStep = 87,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-317-2-thick-bear-fur",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 2 Thick Bear Fur.",
            complete = {
                questObjective = { id = 317, index = 2, text = "Thick Bear Fur", count = 2 },
            },
            route = {
                { mapID = 1426, x = 0.414, y = 0.5920000000000001, label = "Thick Bear Fur", offMapText = "Travel to Thick Bear Fur." },
            },
            sourceStep = 88,
            priority = 720,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-317-stocking-jetsteam" },
        },
        {
            id = "objective-317-1-chunk-of-boar-meat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 4 Chunk of Boar Meat.",
            complete = {
                questObjective = { id = 317, index = 1, text = "Chunk of Boar Meat", count = 4 },
            },
            route = {
                { mapID = 1426, x = 0.426, y = 0.602, label = "Chunk of Boar Meat", offMapText = "Travel to Chunk of Boar Meat." },
            },
            sourceStep = 89,
            priority = 730,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-317-stocking-jetsteam" },
        },
        {
            id = "objective-384-1-crag-boar-rib",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 6 Crag Boar Rib.",
            complete = {
                questObjective = { id = 384, index = 1, text = "Crag Boar Rib", count = 6 },
            },
            route = {
                { mapID = 1426, x = 0.426, y = 0.602, label = "Crag Boar Rib", offMapText = "Travel to Crag Boar Rib." },
            },
            sourceStep = 89,
            priority = 740,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-384-beer-basted-boar-ribs" },
        },
        {
            id = "level-before-accept-287-frostmane-hold",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 7 },
            },
            requiredLevel = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 287,
            priority = 750,
        },
        {
            priority = 760,
            route = {
                { y = 0.5383, mapID = 1426, label = "Senir Whitebeard", offMapText = "Travel to Senir Whitebeard in Dun Morogh.", x = 0.4673 },
            },
            text = "Accept Frostmane Hold from Senir Whitebeard.",
            id = "accept-287-frostmane-hold",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 287, state = "activeOrCompleted" },
            },
            sourceStep = 90,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-384-reviewed-2",
            kind = "objective",
            text = "Buy 1 Rhapsody Malt from Innkeeper Belm inside the Kharanos inn. Keep it for Ragnar Thunderbrew.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            requiredQuests = {},
            complete = {
                questObjective = { id = 384, index = 2, count = 1 },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1426, x = 0.4738, y = 0.5252, label = "Innkeeper Belm", offMapText = "Travel to Innkeeper Belm." },
            },
            sourceStep = 91,
            dependsOn = { "accept-384-beer-basted-boar-ribs" },
            priority = 770,
        },
        {
            priority = 780,
            text = "Turn in Beer Basted Boar Ribs to Ragnar Thunderbrew.",
            route = {
                { y = 0.5236, mapID = 1426, label = "Ragnar Thunderbrew", offMapText = "Travel to Ragnar Thunderbrew in Dun Morogh.", x = 0.4683 },
            },
            dependsOn = { "accept-384-beer-basted-boar-ribs", "objective-384-1-crag-boar-rib", "objective-384-reviewed-2" },
            id = "turnin-384-beer-basted-boar-ribs",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 384, state = "completed" },
            },
            sourceStep = 92,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 790,
            text = "Turn in Stocking Jetsteam to Pilot Bellowfiz.",
            route = {
                { y = 0.4841, mapID = 1426, label = "Pilot Bellowfiz", offMapText = "Travel to Pilot Bellowfiz in Dun Morogh.", x = 0.4943 },
            },
            dependsOn = { "accept-317-stocking-jetsteam", "objective-317-2-thick-bear-fur", "objective-317-1-chunk-of-boar-meat" },
            id = "turnin-317-stocking-jetsteam",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 317, state = "completed" },
            },
            sourceStep = 93,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 800,
            route = {
                { y = 0.4841, mapID = 1426, label = "Pilot Bellowfiz", offMapText = "Travel to Pilot Bellowfiz in Dun Morogh.", x = 0.4943 },
            },
            text = "Accept Evershine from Pilot Bellowfiz.",
            id = "accept-318-evershine",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 318, state = "activeOrCompleted" },
            },
            sourceStep = 93,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 317 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 810,
            text = "Turn in The Grizzled Den to Pilot Stonegear.",
            route = {
                { y = 0.4861, mapID = 1426, label = "Pilot Stonegear", offMapText = "Travel to Pilot Stonegear in Dun Morogh.", x = 0.4962 },
            },
            dependsOn = { "accept-313-the-grizzled-den", "objective-313-1-young-wendigo" },
            id = "turnin-313-the-grizzled-den",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 313, state = "completed" },
            },
            sourceStep = 94,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 820,
            route = {
                { y = 0.4937, mapID = 1426, label = "Razzle Sprysprocket", offMapText = "Travel to Razzle Sprysprocket in Dun Morogh.", x = 0.4585 },
            },
            text = "Accept Operation Recombobulation from Razzle Sprysprocket.",
            id = "accept-412-operation-recombobulation",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 412, state = "activeOrCompleted" },
            },
            sourceStep = 106,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 830,
            route = {
                { mapID = 1426, x = 0.3457, y = 0.5165, label = "Tundra MacGrann", offMapText = "Travel to Tundra MacGrann in Dun Morogh." },
            },
            text = "Accept Tundra MacGrann's Stolen Stash from Tundra MacGrann.",
            id = "accept-312-tundra-macgrann-s-stolen-stash",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 312, state = "activeOrCompleted" },
            },
            sourceStep = 107,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-312-1-macgrann-s-dried-meats",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 MacGrann's Dried Meats.",
            complete = {
                questObjective = { id = 312, index = 1, text = "MacGrann's Dried Meats", count = 1 },
            },
            route = {
                { mapID = 1426, x = 0.3851, y = 0.5393, label = "MacGrann's Dried Meats", offMapText = "Travel to MacGrann's Dried Meats." },
            },
            sourceStep = 108,
            priority = 840,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-312-tundra-macgrann-s-stolen-stash" },
        },
        {
            priority = 850,
            text = "Turn in Tundra MacGrann's Stolen Stash to Tundra MacGrann.",
            route = {
                { y = 0.5165, mapID = 1426, label = "Tundra MacGrann", offMapText = "Travel to Tundra MacGrann in Dun Morogh.", x = 0.3457 },
            },
            dependsOn = { "accept-312-tundra-macgrann-s-stolen-stash", "objective-312-1-macgrann-s-dried-meats" },
            id = "turnin-312-tundra-macgrann-s-stolen-stash",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 312, state = "completed" },
            },
            sourceStep = 109,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 860,
            text = "Turn in Evershine to Rejold Barleybrew.",
            route = {
                { y = 0.4573, mapID = 1426, label = "Rejold Barleybrew", offMapText = "Travel to Rejold Barleybrew in Dun Morogh.", x = 0.3019 },
            },
            dependsOn = { "accept-318-evershine" },
            id = "turnin-318-evershine",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 318, state = "completed" },
            },
            sourceStep = 110,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 317 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 870,
            route = {
                { y = 0.4573, mapID = 1426, label = "Rejold Barleybrew", offMapText = "Travel to Rejold Barleybrew in Dun Morogh.", x = 0.3019 },
            },
            text = "Accept A Favor for Evershine from Rejold Barleybrew.",
            id = "accept-319-a-favor-for-evershine",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 319, state = "activeOrCompleted" },
            },
            sourceStep = 110,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 318 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 880,
            route = {
                { y = 0.4573, mapID = 1426, label = "Rejold Barleybrew", offMapText = "Travel to Rejold Barleybrew in Dun Morogh.", x = 0.3019 },
            },
            text = "Accept The Perfect Stout from Rejold Barleybrew.",
            id = "accept-315-the-perfect-stout",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 315, state = "activeOrCompleted" },
            },
            sourceStep = 110,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 890,
            route = {
                { y = 0.4553, mapID = 1426, label = "Marleth Barleybrew", offMapText = "Travel to Marleth Barleybrew in Dun Morogh.", x = 0.3019 },
            },
            text = "Accept Bitter Rivals from Marleth Barleybrew.",
            id = "accept-310-bitter-rivals",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 310, state = "activeOrCompleted" },
            },
            sourceStep = 111,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 900,
            text = "Collect 6 Shimmerweed.",
            route = {
                { y = 0.424, mapID = 1426, label = "Frostmane Seer", offMapText = "Travel to Frostmane Seer.", x = 0.4 },
            },
            dependsOn = { "accept-315-the-perfect-stout" },
            id = "objective-315-1-frostmane-seer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 315, text = "Frostmane Seer", index = 1, count = 6 },
            },
            sourceStep = 112,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 910,
            text = "Kill 6 Ice Claw Bear.",
            route = {
                { y = 0.422, mapID = 1426, label = "Ice Claw Bear", offMapText = "Travel to Ice Claw Bear.", x = 0.304 },
            },
            dependsOn = { "accept-319-a-favor-for-evershine" },
            id = "objective-319-1-ice-claw-bear",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 319, text = "Ice Claw Bear", index = 1, count = 6 },
            },
            sourceStep = 113,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 318 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 920,
            text = "Kill 8 Elder Crag Boar.",
            route = {
                { y = 0.422, mapID = 1426, label = "Elder Crag Boar", offMapText = "Travel to Elder Crag Boar.", x = 0.304 },
            },
            dependsOn = { "accept-319-a-favor-for-evershine" },
            id = "objective-319-2-elder-crag-boar",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 319, text = "Elder Crag Boar", index = 2, count = 8 },
            },
            sourceStep = 113,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 318 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 930,
            text = "Kill 8 Snow Leopard.",
            route = {
                { y = 0.422, mapID = 1426, label = "Snow Leopard", offMapText = "Travel to Snow Leopard.", x = 0.304 },
            },
            dependsOn = { "accept-319-a-favor-for-evershine" },
            id = "objective-319-3-snow-leopard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 319, text = "Snow Leopard", index = 3, count = 8 },
            },
            sourceStep = 113,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 318 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 940,
            route = {
                { y = 0.5266, mapID = 1426, label = "Jarven Thunderbrew", offMapText = "Travel to Jarven Thunderbrew in Dun Morogh.", x = 0.4764 },
            },
            text = "Accept Distracting Jarven from Jarven Thunderbrew.",
            id = "accept-308-distracting-jarven",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 308, state = "activeOrCompleted" },
            },
            sourceStep = 118,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 950,
            text = "Turn in Bitter Rivals.",
            route = {
                { y = 0.5269, mapID = 1426, label = "Bitter Rivals", offMapText = "Travel to Bitter Rivals.", x = 0.477 },
            },
            dependsOn = { "accept-310-bitter-rivals" },
            id = "turnin-310-bitter-rivals",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 310, state = "completed" },
            },
            sourceStep = 119,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 960,
            route = {
                { y = 0.5269, mapID = 1426, label = "Return to Marleth", offMapText = "Travel to Marleth.", x = 0.477 },
            },
            text = "Accept Return to Marleth.",
            id = "accept-311-return-to-marleth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 311, state = "activeOrCompleted" },
            },
            sourceStep = 119,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 310 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 970,
            text = "Turn in Return to Marleth to Marleth Barleybrew.",
            route = {
                { mapID = 1426, x = 0.3019, y = 0.45530000000000004, label = "Marleth Barleybrew", offMapText = "Travel to Marleth Barleybrew in Dun Morogh." },
            },
            dependsOn = { "accept-311-return-to-marleth" },
            id = "turnin-311-return-to-marleth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 311, state = "completed" },
            },
            sourceStep = 120,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 310 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 980,
            text = "Turn in A Favor for Evershine to Rejold Barleybrew.",
            route = {
                { y = 0.4573, mapID = 1426, label = "Rejold Barleybrew", offMapText = "Travel to Rejold Barleybrew in Dun Morogh.", x = 0.3019 },
            },
            dependsOn = {
                "accept-319-a-favor-for-evershine",
                "objective-319-1-ice-claw-bear",
                "objective-319-2-elder-crag-boar",
                "objective-319-3-snow-leopard",
            },
            id = "turnin-319-a-favor-for-evershine",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 319, state = "completed" },
            },
            sourceStep = 121,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 318 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 990,
            route = {
                { y = 0.4573, mapID = 1426, label = "Rejold Barleybrew", offMapText = "Travel to Rejold Barleybrew in Dun Morogh.", x = 0.3019 },
            },
            text = "Accept Return to Bellowfiz from Rejold Barleybrew.",
            id = "accept-320-return-to-bellowfiz",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 320, state = "activeOrCompleted" },
            },
            sourceStep = 121,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 319 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1000,
            text = "Turn in The Perfect Stout to Rejold Barleybrew.",
            route = {
                { y = 0.4573, mapID = 1426, label = "Rejold Barleybrew", offMapText = "Travel to Rejold Barleybrew in Dun Morogh.", x = 0.3019 },
            },
            dependsOn = { "accept-315-the-perfect-stout", "objective-315-1-frostmane-seer" },
            id = "turnin-315-the-perfect-stout",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 315, state = "completed" },
            },
            sourceStep = 121,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-413-shimmer-stout",
            kind = "note",
            text = "Reach level 8 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 8 },
            },
            requiredLevel = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 413,
            priority = 1010,
        },
        {
            priority = 1020,
            route = {
                { y = 0.4573, mapID = 1426, label = "Rejold Barleybrew", offMapText = "Travel to Rejold Barleybrew in Dun Morogh.", x = 0.3019 },
            },
            text = "Accept Shimmer Stout from Rejold Barleybrew.",
            id = "accept-413-shimmer-stout",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 413, state = "activeOrCompleted" },
            },
            sourceStep = 121,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 315 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-287-1-frostmane-headhunter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 5 Frostmane Headhunter.",
            complete = {
                questObjective = { id = 287, index = 1, text = "Frostmane Headhunter", count = 5 },
            },
            route = {
                { mapID = 1426, x = 0.2487, y = 0.509, label = "Frostmane Headhunter", offMapText = "Travel to Frostmane Headhunter." },
            },
            sourceStep = 124,
            priority = 1030,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-287-frostmane-hold" },
        },
        {
            priority = 1040,
            text = "Collect 8 Restabilization Cog.",
            route = {
                { mapID = 1426, x = 0.244, y = 0.43, label = "Restabilization Cog", offMapText = "Travel to Restabilization Cog." },
            },
            dependsOn = { "accept-412-operation-recombobulation" },
            id = "objective-412-1-leper-gnome",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 412, text = "Leper Gnome", index = 1, count = 8 },
            },
            sourceStep = 125,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1050,
            text = "Collect 8 Gyromechanic Gear.",
            route = {
                { mapID = 1426, x = 0.244, y = 0.43, label = "Gyromechanic Gear", offMapText = "Travel to Gyromechanic Gear." },
            },
            dependsOn = { "accept-412-operation-recombobulation" },
            id = "objective-412-2-gyromechanic-gear",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 412, text = "Gyromechanic Gear", index = 2, count = 8 },
            },
            sourceStep = 125,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1060,
            text = "Turn in Frostmane Hold to Senir Whitebeard.",
            route = {
                { y = 0.5382, mapID = 1426, label = "Senir Whitebeard", offMapText = "Travel to Senir Whitebeard in Dun Morogh.", x = 0.4673 },
            },
            dependsOn = { "accept-287-frostmane-hold", "objective-287-1-frostmane-headhunter" },
            id = "turnin-287-frostmane-hold",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 287, state = "completed" },
            },
            sourceStep = 130,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1070,
            route = {
                { y = 0.5382, mapID = 1426, label = "Senir Whitebeard", offMapText = "Travel to Senir Whitebeard in Dun Morogh.", x = 0.4673 },
            },
            text = "Accept The Reports from Senir Whitebeard.",
            id = "accept-291-the-reports",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 291, state = "activeOrCompleted" },
            },
            sourceStep = 130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 287 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1080,
            text = "Turn in Operation Recombobulation to Razzle Sprysprocket.",
            route = {
                { y = 0.4937, mapID = 1426, label = "Razzle Sprysprocket", offMapText = "Travel to Razzle Sprysprocket in Dun Morogh.", x = 0.4585 },
            },
            dependsOn = { "accept-412-operation-recombobulation", "objective-412-1-leper-gnome", "objective-412-2-gyromechanic-gear" },
            id = "turnin-412-operation-recombobulation",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 412, state = "completed" },
            },
            sourceStep = 131,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1090,
            text = "Turn in Return to Bellowfiz to Pilot Bellowfiz.",
            route = {
                { y = 0.4841, mapID = 1426, label = "Pilot Bellowfiz", offMapText = "Travel to Pilot Bellowfiz in Dun Morogh.", x = 0.4943 },
            },
            dependsOn = { "accept-320-return-to-bellowfiz" },
            id = "turnin-320-return-to-bellowfiz",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 320, state = "completed" },
            },
            sourceStep = 132,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 319 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5637-desperate-prayer",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5637,
            alternativeQuests = { 5634, 5635, 5636, 5638, 5639, 5640 },
            priority = 1100,
        },
        {
            priority = 1110,
            route = {
                { y = 0.5219, mapID = 1426, label = "Maxan Anvol", offMapText = "Travel to Maxan Anvol in Dun Morogh.", x = 0.4734 },
            },
            text = "Accept Desperate Prayer from Maxan Anvol.",
            id = "accept-5637-desperate-prayer",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 5637, state = "activeOrCompleted" },
            },
            sourceStep = 138,
            requiredQuests = {},
            alternativeQuests = { 5634, 5635, 5636, 5638, 5639, 5640 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-6064-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6064,
            priority = 1120,
        },
        {
            priority = 1130,
            route = {
                { y = 0.5303, mapID = 1426, label = "Grif Wildheart", offMapText = "Travel to Grif Wildheart in Dun Morogh.", x = 0.4581 },
            },
            text = "Accept Taming the Beast from Grif Wildheart.",
            id = "accept-6064-taming-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 6064, state = "activeOrCompleted" },
            },
            sourceStep = 143,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-6064-1-taming-rod",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6064,
            priority = 1140,
        },
        {
            priority = 1150,
            route = {
                { y = 0.534, mapID = 1426, label = "Taming Rod", offMapText = "Travel to Taming Rod.", x = 0.498 },
            },
            dependsOn = { "accept-6064-taming-the-beast" },
            id = "objective-6064-1-taming-rod",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-6064-quest-work",
        },
        {
            priority = 1160,
            text = "Turn in Taming the Beast to Grif Wildheart.",
            route = {
                { y = 0.5304, mapID = 1426, label = "Grif Wildheart", offMapText = "Travel to Grif Wildheart in Dun Morogh.", x = 0.4581 },
            },
            dependsOn = { "accept-6064-taming-the-beast", "objective-6064-1-taming-rod" },
            id = "turnin-6064-taming-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 6064, state = "completed" },
            },
            sourceStep = 145,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1170,
            route = {
                { y = 0.5304, mapID = 1426, label = "Grif Wildheart", offMapText = "Travel to Grif Wildheart in Dun Morogh.", x = 0.4581 },
            },
            text = "Accept Taming the Beast from Grif Wildheart.",
            id = "accept-6084-taming-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 6084, state = "activeOrCompleted" },
            },
            sourceStep = 145,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6064 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1180,
            route = {
                { y = 0.574, mapID = 1426, label = "Taming Rod", offMapText = "Travel to Taming Rod.", x = 0.482 },
            },
            dependsOn = { "accept-6084-taming-the-beast" },
            id = "objective-6084-1-taming-rod",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-6084-quest-work",
        },
        {
            priority = 1190,
            text = "Turn in Taming the Beast to Grif Wildheart.",
            route = {
                { y = 0.5304, mapID = 1426, label = "Grif Wildheart", offMapText = "Travel to Grif Wildheart in Dun Morogh.", x = 0.4581 },
            },
            dependsOn = { "accept-6084-taming-the-beast", "objective-6084-1-taming-rod" },
            id = "turnin-6084-taming-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 6084, state = "completed" },
            },
            sourceStep = 147,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6064 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1200,
            route = {
                { y = 0.5304, mapID = 1426, label = "Grif Wildheart", offMapText = "Travel to Grif Wildheart in Dun Morogh.", x = 0.4581 },
            },
            text = "Accept Taming the Beast from Grif Wildheart.",
            id = "accept-6085-taming-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 6085, state = "activeOrCompleted" },
            },
            sourceStep = 147,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6084 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1210,
            route = {
                { y = 0.53, mapID = 1426, label = "Taming Rod", offMapText = "Travel to Taming Rod.", x = 0.502 },
            },
            dependsOn = { "accept-6085-taming-the-beast" },
            id = "objective-6085-1-taming-rod",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-6085-quest-work",
        },
        {
            priority = 1220,
            text = "Turn in Taming the Beast to Grif Wildheart.",
            route = {
                { y = 0.5304, mapID = 1426, label = "Grif Wildheart", offMapText = "Travel to Grif Wildheart in Dun Morogh.", x = 0.4581 },
            },
            dependsOn = { "accept-6085-taming-the-beast", "objective-6085-1-taming-rod" },
            id = "turnin-6085-taming-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 6085, state = "completed" },
            },
            sourceStep = 149,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6084 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1230,
            route = {
                { y = 0.5304, mapID = 1426, label = "Grif Wildheart", offMapText = "Travel to Grif Wildheart in Dun Morogh.", x = 0.4581 },
            },
            text = "Accept Training the Beast from Grif Wildheart.",
            id = "accept-6086-training-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 6086, state = "activeOrCompleted" },
            },
            sourceStep = 149,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6085 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1240,
            text = "Turn in Training the Beast to Belia Thundergranite.",
            route = {
                { y = 0.858, mapID = 1455, label = "Belia Thundergranite", offMapText = "Travel to Belia Thundergranite in Ironforge.", x = 0.7087 },
            },
            dependsOn = { "accept-6086-training-the-beast" },
            id = "turnin-6086-training-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 6086, state = "completed" },
            },
            sourceStep = 150,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6085 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1250,
            route = {
                { y = 0.5597, mapID = 1426, label = "Senator Mehr Stonehallow", offMapText = "Travel to Senator Mehr Stonehallow in Dun Morogh.", x = 0.6867 },
            },
            text = "Accept The Public Servant from Senator Mehr Stonehallow.",
            id = "accept-433-the-public-servant",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 433, state = "activeOrCompleted" },
            },
            sourceStep = 155,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1260,
            route = {
                { y = 0.5633, mapID = 1426, label = "Foreman Stonebrow", offMapText = "Travel to Foreman Stonebrow in Dun Morogh.", x = 0.6908 },
            },
            text = "Accept Those Blasted Troggs! from Foreman Stonebrow.",
            id = "accept-432-those-blasted-troggs",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 432, state = "activeOrCompleted" },
            },
            sourceStep = 156,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1270,
            text = "Kill 10 Rockjaw Bonesnapper.",
            route = {
                { y = 0.5649, mapID = 1426, label = "Rockjaw Bonesnapper", offMapText = "Travel to Rockjaw Bonesnapper.", x = 0.707 },
            },
            dependsOn = { "accept-433-the-public-servant" },
            id = "objective-433-1-rockjaw-bonesnapper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 433, text = "Rockjaw Bonesnapper", index = 1, count = 10 },
            },
            sourceStep = 157,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-432-1-rockjaw-skullthumper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 6 Rockjaw Skullthumper.",
            complete = {
                questObjective = { id = 432, index = 1, text = "Rockjaw Skullthumper", count = 6 },
            },
            route = {
                { mapID = 1426, x = 0.7070000000000001, y = 0.5649000000000001, label = "Rockjaw Skullthumper", offMapText = "Travel to Rockjaw Skullthumper." },
            },
            sourceStep = 158,
            priority = 1280,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-432-those-blasted-troggs" },
        },
        {
            priority = 1290,
            text = "Turn in The Public Servant to Senator Mehr Stonehallow.",
            route = {
                { mapID = 1426, x = 0.6867, y = 0.5597, label = "Senator Mehr Stonehallow", offMapText = "Travel to Senator Mehr Stonehallow in Dun Morogh." },
            },
            dependsOn = { "accept-433-the-public-servant", "objective-433-1-rockjaw-bonesnapper" },
            id = "turnin-433-the-public-servant",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 433, state = "completed" },
            },
            sourceStep = 160,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1300,
            text = "Turn in Those Blasted Troggs! to Foreman Stonebrow.",
            route = {
                { y = 0.5633, mapID = 1426, label = "Foreman Stonebrow", offMapText = "Travel to Foreman Stonebrow in Dun Morogh.", x = 0.6908 },
            },
            dependsOn = { "accept-432-those-blasted-troggs", "objective-432-1-rockjaw-skullthumper" },
            id = "turnin-432-those-blasted-troggs",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 432, state = "completed" },
            },
            sourceStep = 161,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1310,
            route = {
                { y = 0.3919, mapID = 1426, label = "Pilot Hammerfoot", offMapText = "Travel to Pilot Hammerfoot in Dun Morogh.", x = 0.8389 },
            },
            text = "Accept The Lost Pilot from Pilot Hammerfoot.",
            id = "accept-419-the-lost-pilot",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 419, state = "activeOrCompleted" },
            },
            sourceStep = 163,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1320,
            text = "Turn in The Lost Pilot.",
            route = {
                { y = 0.3617, mapID = 1426, label = "The Lost Pilot", offMapText = "Travel to The Lost Pilot.", x = 0.7967 },
            },
            dependsOn = { "accept-419-the-lost-pilot" },
            id = "turnin-419-the-lost-pilot",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 419, state = "completed" },
            },
            sourceStep = 164,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1330,
            route = {
                { y = 0.3617, mapID = 1426, label = "A Pilot's Revenge", offMapText = "Travel to A Pilot's Revenge.", x = 0.7967 },
            },
            text = "Accept A Pilot's Revenge.",
            id = "accept-417-a-pilot-s-revenge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 417, state = "activeOrCompleted" },
            },
            sourceStep = 164,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 419 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1340,
            text = "Collect 1 Mangy Claw.",
            route = {
                { y = 0.3702, mapID = 1426, label = "Mangeclaw", offMapText = "Travel to Mangeclaw.", x = 0.7897 },
            },
            dependsOn = { "accept-417-a-pilot-s-revenge" },
            id = "objective-417-1-mangeclaw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 417, text = "Mangeclaw", index = 1, count = 1 },
            },
            sourceStep = 165,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 419 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1350,
            text = "Turn in A Pilot's Revenge to Pilot Hammerfoot.",
            route = {
                { y = 0.3919, mapID = 1426, label = "Pilot Hammerfoot", offMapText = "Travel to Pilot Hammerfoot in Dun Morogh.", x = 0.8389 },
            },
            dependsOn = { "accept-417-a-pilot-s-revenge", "objective-417-1-mangeclaw" },
            id = "turnin-417-a-pilot-s-revenge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 417, state = "completed" },
            },
            sourceStep = 166,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 419 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1360,
            text = "Turn in Shimmer Stout to Mountaineer Barleybrew.",
            route = {
                { y = 0.4881, mapID = 1426, label = "Mountaineer Barleybrew", offMapText = "Travel to Mountaineer Barleybrew in Dun Morogh.", x = 0.8628 },
            },
            dependsOn = { "accept-413-shimmer-stout" },
            id = "turnin-413-shimmer-stout",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 413, state = "completed" },
            },
            sourceStep = 167,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 315 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1370,
            route = {
                { y = 0.4881, mapID = 1426, label = "Mountaineer Barleybrew", offMapText = "Travel to Mountaineer Barleybrew in Dun Morogh.", x = 0.8628 },
            },
            text = "Accept Stout to Kadrell from Mountaineer Barleybrew.",
            id = "accept-414-stout-to-kadrell",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 414, state = "activeOrCompleted" },
            },
            sourceStep = 167,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 413 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-224-in-defense-of-the-king-s-lands",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 224,
            priority = 1380,
        },
        {
            priority = 1390,
            route = {
                { y = 0.7312, mapID = 1432, label = "Mountaineer Cobbleflint", offMapText = "Travel to Mountaineer Cobbleflint in Loch Modan.", x = 0.2207 },
            },
            text = "Accept In Defense of the King's Lands from Mountaineer Cobbleflint.",
            id = "accept-224-in-defense-of-the-king-s-lands",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 224, state = "activeOrCompleted" },
            },
            sourceStep = 168,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1400,
            route = {
                { y = 0.7367, mapID = 1432, label = "Captain Rugelfuss", offMapText = "Travel to Captain Rugelfuss in Loch Modan.", x = 0.2323 },
            },
            text = "Accept The Trogg Threat from Captain Rugelfuss.",
            id = "accept-267-the-trogg-threat",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 267, state = "activeOrCompleted" },
            },
            sourceStep = 169,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-414-stout-to-kadrell" },
            id = "turnin-414-stout-to-kadrell",
            text = "Turn in Stout to Kadrell to Mountaineer Kadrell.",
            useClientPin = true,
            complete = {
                quest = { id = 414, state = "completed" },
            },
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            priority = 1410,
            sourceStep = 171,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 413 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            priority = 1420,
            text = "Accept Mountaineer Stormpike's Task from Mountaineer Kadrell.",
            id = "accept-1339-mountaineer-stormpike-s-task",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1339, state = "activeOrCompleted" },
            },
            sourceStep = 171,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 1430,
            text = "Turn in Mountaineer Stormpike's Task to Mountaineer Stormpike.",
            route = {
                { y = 0.184, mapID = 1432, label = "Mountaineer Stormpike", offMapText = "Travel to Mountaineer Stormpike in Loch Modan.", x = 0.2476 },
            },
            dependsOn = { "accept-1339-mountaineer-stormpike-s-task" },
            id = "turnin-1339-mountaineer-stormpike-s-task",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1339, state = "completed" },
            },
            sourceStep = 172,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1440,
            route = {
                { y = 0.184, mapID = 1432, label = "Mountaineer Stormpike", offMapText = "Travel to Mountaineer Stormpike in Loch Modan.", x = 0.2476 },
            },
            text = "Accept Stormpike's Order from Mountaineer Stormpike.",
            id = "accept-1338-stormpike-s-order",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1338, state = "activeOrCompleted" },
            },
            sourceStep = 172,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-6387-honor-students",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6387,
            priority = 1450,
        },
        {
            priority = 1460,
            route = {
                { y = 0.4781, mapID = 1432, label = "Brock Stoneseeker", offMapText = "Travel to Brock Stoneseeker in Loch Modan.", x = 0.3702 },
            },
            text = "Accept Honor Students from Brock Stoneseeker.",
            id = "accept-6387-honor-students",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 6387, state = "activeOrCompleted" },
            },
            sourceStep = 176,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1470,
            text = "Turn in Honor Students to Thorgrum Borrelson.",
            route = {
                { y = 0.5095, mapID = 1432, label = "Thorgrum Borrelson", offMapText = "Travel to Thorgrum Borrelson in Loch Modan.", x = 0.3394 },
            },
            dependsOn = { "accept-6387-honor-students" },
            id = "turnin-6387-honor-students",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 6387, state = "completed" },
            },
            sourceStep = 177,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1480,
            route = {
                { y = 0.5095, mapID = 1432, label = "Thorgrum Borrelson", offMapText = "Travel to Thorgrum Borrelson in Loch Modan.", x = 0.3394 },
            },
            text = "Accept Ride to Ironforge from Thorgrum Borrelson.",
            id = "accept-6391-ride-to-ironforge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 6391, state = "activeOrCompleted" },
            },
            sourceStep = 177,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6387 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1490,
            text = "Turn in The Reports to Senator Barin Redstone.",
            route = {
                { mapID = 1455, x = 0.39549999999999996, y = 0.5749, label = "Senator Barin Redstone", offMapText = "Travel to Senator Barin Redstone in Ironforge." },
            },
            dependsOn = { "accept-291-the-reports" },
            id = "turnin-291-the-reports",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 291, state = "completed" },
            },
            sourceStep = 180,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 287 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1500,
            text = "Turn in Ride to Ironforge to Golnir Bouldertoe.",
            route = {
                { y = 0.263, mapID = 1455, label = "Golnir Bouldertoe", offMapText = "Travel to Golnir Bouldertoe in Ironforge.", x = 0.5152 },
            },
            dependsOn = { "accept-6391-ride-to-ironforge" },
            id = "turnin-6391-ride-to-ironforge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 6391, state = "completed" },
            },
            sourceStep = 181,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6387 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1510,
            route = {
                { y = 0.263, mapID = 1455, label = "Golnir Bouldertoe", offMapText = "Travel to Golnir Bouldertoe in Ironforge.", x = 0.5152 },
            },
            text = "Accept Gryth Thurden from Golnir Bouldertoe.",
            id = "accept-6388-gryth-thurden",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 6388, state = "activeOrCompleted" },
            },
            sourceStep = 181,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6391 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1715-the-slaughtered-lamb",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1715,
            alternativeQuests = { 1688 },
            priority = 1520,
        },
        {
            priority = 1530,
            route = {
                { y = 0.0926, mapID = 1455, label = "Lago Blackwrench", offMapText = "Travel to Lago Blackwrench in Ironforge.", x = 0.4763 },
            },
            text = "Accept The Slaughtered Lamb from Lago Blackwrench.",
            id = "accept-1715-the-slaughtered-lamb",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1715, state = "activeOrCompleted" },
            },
            sourceStep = 182,
            requiredQuests = {},
            alternativeQuests = { 1688 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1540,
            text = "Turn in Gryth Thurden to Gryth Thurden.",
            route = {
                { y = 0.4774, mapID = 1455, label = "Gryth Thurden", offMapText = "Travel to Gryth Thurden in Ironforge.", x = 0.5551 },
            },
            dependsOn = { "accept-6388-gryth-thurden" },
            id = "turnin-6388-gryth-thurden",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 6388, state = "completed" },
            },
            sourceStep = 183,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6391 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1550,
            route = {
                { y = 0.4774, mapID = 1455, label = "Gryth Thurden", offMapText = "Travel to Gryth Thurden in Ironforge.", x = 0.5551 },
            },
            text = "Accept Return to Brock from Gryth Thurden.",
            id = "accept-6392-return-to-brock",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 6392, state = "activeOrCompleted" },
            },
            sourceStep = 183,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6388 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1560,
            text = "Accept Deeprun Rat Roundup from Monty.",
            id = "accept-6661-deeprun-rat-roundup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6661, state = "activeOrCompleted" },
            },
            sourceStep = 185,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-6661-deeprun-rat-roundup" },
            id = "objective-6661-1-rat-catcher-s-flute",
            text = "In the Deeprun Tram tunnels, use the Rat Catcher's Flute on Deeprun Rats until five are captured.",
            useClientPin = true,
            complete = {
                questObjective = { id = 6661, text = "Rat Catcher's Flute", index = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            priority = 1570,
            requiredQuests = {},
            useClientText = false,
        },
        {
            dependsOn = { "accept-6661-deeprun-rat-roundup", "objective-6661-1-rat-catcher-s-flute" },
            id = "turnin-6661-deeprun-rat-roundup",
            text = "Turn in Deeprun Rat Roundup to Monty.",
            useClientPin = true,
            complete = {
                quest = { id = 6661, state = "completed" },
            },
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            priority = 1580,
            sourceStep = 187,
            requiredQuests = {},
            useClientText = false,
        },
        {
            priority = 1590,
            text = "Accept Me Brother, Nipsy from Monty.",
            id = "accept-6662-me-brother-nipsy",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6662, state = "activeOrCompleted" },
            },
            sourceStep = 187,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6661 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-6662-me-brother-nipsy" },
            id = "turnin-6662-me-brother-nipsy",
            text = "Turn in Me Brother, Nipsy to Nipsy.",
            useClientPin = true,
            complete = {
                quest = { id = 6662, state = "completed" },
            },
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            priority = 1600,
            sourceStep = 188,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6661 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            priority = 1610,
            route = {
                { y = 0.1207, mapID = 1453, label = "Grimand Elmore", offMapText = "Travel to Grimand Elmore in Stormwind City.", x = 0.5176 },
            },
            text = "Accept Stormpike's Delivery from Grimand Elmore.",
            id = "accept-353-stormpike-s-delivery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 353, state = "activeOrCompleted" },
            },
            sourceStep = 190,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1620,
            text = "Turn in Stormpike's Order to Furen Longbeard.",
            route = {
                { y = 0.1655, mapID = 1453, label = "Furen Longbeard", offMapText = "Travel to Furen Longbeard in Stormwind City.", x = 0.5809 },
            },
            dependsOn = { "accept-1338-stormpike-s-order" },
            id = "turnin-1338-stormpike-s-order",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1338, state = "completed" },
            },
            sourceStep = 191,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1638-a-warrior-s-training",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1638,
            alternativeQuests = { 1678, 1683, 1639 },
            priority = 1630,
        },
        {
            priority = 1640,
            route = {
                { y = 0.4571, mapID = 1453, label = "Ilsa Corbin", offMapText = "Travel to Ilsa Corbin in Stormwind City.", x = 0.785 },
            },
            id = "accept-1638-a-warrior-s-training",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 192,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1638-a-warriors-training",
        },
        {
            priority = 1650,
            text = "Turn in A Warrior's Training to Harry Burlguard.",
            route = {
                { y = 0.3726, mapID = 1453, label = "Harry Burlguard", offMapText = "Travel to Harry Burlguard in Stormwind City.", x = 0.7425 },
            },
            dependsOn = { "accept-1638-a-warrior-s-training" },
            id = "turnin-1638-a-warrior-s-training",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1638, state = "completed" },
            },
            sourceStep = 193,
            requiredQuests = {},
            alternativeQuests = { 1678, 1683, 1639 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1660,
            route = {
                { y = 0.3726, mapID = 1453, label = "Harry Burlguard", offMapText = "Travel to Harry Burlguard in Stormwind City.", x = 0.7425 },
            },
            text = "Accept Bartleby the Drunk from Harry Burlguard.",
            id = "accept-1639-bartleby-the-drunk",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1639, state = "activeOrCompleted" },
            },
            sourceStep = 193,
            requiredQuests = {},
            alternativeQuests = { 1678, 1683 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1670,
            text = "Turn in Bartleby the Drunk to Bartleby.",
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby in Stormwind City.", x = 0.7383 },
            },
            dependsOn = { "accept-1639-bartleby-the-drunk" },
            id = "turnin-1639-bartleby-the-drunk",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1639, state = "completed" },
            },
            sourceStep = 194,
            requiredQuests = {},
            alternativeQuests = { 1678, 1683 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1680,
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby in Stormwind City.", x = 0.7383 },
            },
            text = "Accept Beat Bartleby from Bartleby.",
            id = "accept-1640-beat-bartleby",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1640, state = "activeOrCompleted" },
            },
            sourceStep = 194,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1639, 1678, 1683 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1640-1-bartleby",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1640,
            priority = 1690,
        },
        {
            priority = 1700,
            text = "Kill Bartleby.",
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby.", x = 0.7383 },
            },
            dependsOn = { "accept-1640-beat-bartleby" },
            id = "objective-1640-1-bartleby",
            kind = "objective",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1640, text = "Bartleby", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1639, 1678, 1683 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1710,
            text = "Turn in Beat Bartleby to Bartleby.",
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby in Stormwind City.", x = 0.7383 },
            },
            dependsOn = { "accept-1640-beat-bartleby", "objective-1640-1-bartleby" },
            id = "turnin-1640-beat-bartleby",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1640, state = "completed" },
            },
            sourceStep = 196,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1639, 1678, 1683 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1720,
            route = {
                { y = 0.3717, mapID = 1453, label = "Bartleby", offMapText = "Travel to Bartleby in Stormwind City.", x = 0.7383 },
            },
            text = "Accept Bartleby's Mug from Bartleby.",
            id = "accept-1665-bartleby-s-mug",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1665, state = "activeOrCompleted" },
            },
            sourceStep = 196,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1640 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1730,
            text = "Turn in Bartleby's Mug to Harry Burlguard.",
            route = {
                { y = 0.3726, mapID = 1453, label = "Harry Burlguard", offMapText = "Travel to Harry Burlguard in Stormwind City.", x = 0.7425 },
            },
            dependsOn = { "accept-1665-bartleby-s-mug" },
            id = "turnin-1665-bartleby-s-mug",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1665, state = "completed" },
            },
            sourceStep = 197,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1640 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1740,
            text = "Turn in Desperate Prayer to High Priestess Laurena.",
            route = {
                { mapID = 1453, x = 0.3858, y = 0.2606, label = "High Priestess Laurena", offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-5637-desperate-prayer" },
            id = "turnin-5637-desperate-prayer",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 5637, state = "completed" },
            },
            sourceStep = 198,
            requiredQuests = {},
            alternativeQuests = { 5634, 5635, 5636, 5638, 5639, 5640 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-turnin-1715-the-slaughtered-lamb",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1715,
            alternativeQuests = { 1688 },
            priority = 1750,
        },
        {
            priority = 1760,
            text = "Turn in The Slaughtered Lamb to Gakin the Darkbinder.",
            route = {
                { mapID = 1453, x = 0.2526, y = 0.7856000000000001, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "accept-1715-the-slaughtered-lamb" },
            id = "turnin-1715-the-slaughtered-lamb",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1715, state = "completed" },
            },
            sourceStep = 199,
            requiredQuests = {},
            alternativeQuests = { 1688 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1770,
            route = {
                { mapID = 1453, x = 0.2526, y = 0.7856000000000001, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            text = "Accept Surena Caledon from Gakin the Darkbinder.",
            id = "accept-1688-surena-caledon",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1688, state = "activeOrCompleted" },
            },
            sourceStep = 199,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1780,
            route = {
                { y = 0.6726, mapID = 1429, label = "Remy \"Two Times\"", offMapText = "Travel to Remy \"Two Times\" in Elwynn Forest.", x = 0.4214 },
            },
            text = "Accept A Fishy Peril from Remy \"Two Times\".",
            id = "accept-40-a-fishy-peril",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 40, state = "activeOrCompleted" },
            },
            sourceStep = 202,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1790,
            text = "Turn in A Fishy Peril to Marshal Dughan.",
            route = {
                { y = 0.6593, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan in Elwynn Forest.", x = 0.4211 },
            },
            dependsOn = { "accept-40-a-fishy-peril" },
            id = "turnin-40-a-fishy-peril",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 40, state = "completed" },
            },
            sourceStep = 203,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1800,
            route = {
                { y = 0.6593, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan in Elwynn Forest.", x = 0.4211 },
            },
            text = "Accept Further Concerns from Marshal Dughan.",
            id = "accept-35-further-concerns",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 35, state = "activeOrCompleted" },
            },
            sourceStep = 203,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 40 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1810,
            text = "Turn in Further Concerns to Guard Thomas.",
            route = {
                { y = 0.7218, mapID = 1429, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest.", x = 0.7397 },
            },
            dependsOn = { "accept-35-further-concerns" },
            id = "turnin-35-further-concerns",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 35, state = "completed" },
            },
            sourceStep = 204,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 40 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1820,
            route = {
                { y = 0.7218, mapID = 1429, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest.", x = 0.7397 },
            },
            text = "Accept Find the Lost Guards from Guard Thomas.",
            id = "accept-37-find-the-lost-guards",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 37, state = "activeOrCompleted" },
            },
            sourceStep = 204,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 35 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1830,
            route = {
                { y = 0.7218, mapID = 1429, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest.", x = 0.7397 },
            },
            text = "Accept Protect the Frontier from Guard Thomas.",
            id = "accept-52-protect-the-frontier",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 52, state = "activeOrCompleted" },
            },
            sourceStep = 204,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1840,
            text = "Turn in Find the Lost Guards.",
            route = {
                { y = 0.6033, mapID = 1429, label = "Find the Lost Guards", offMapText = "Travel to Find the Lost Guards.", x = 0.7265 },
            },
            dependsOn = { "accept-37-find-the-lost-guards" },
            id = "turnin-37-find-the-lost-guards",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 37, state = "completed" },
            },
            sourceStep = 205,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 35 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1850,
            route = {
                { y = 0.6033, mapID = 1429, label = "Discover Rolf's Fate", offMapText = "Travel to Discover Rolf's Fate.", x = 0.7265 },
            },
            text = "Accept Discover Rolf's Fate.",
            id = "accept-45-discover-rolf-s-fate",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 45, state = "activeOrCompleted" },
            },
            sourceStep = 205,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 37 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1860,
            route = {
                { y = 0.6611, mapID = 1429, label = "Supervisor Raelen", offMapText = "Travel to Supervisor Raelen in Elwynn Forest.", x = 0.8138 },
            },
            text = "Accept A Bundle of Trouble from Supervisor Raelen.",
            id = "accept-5545-a-bundle-of-trouble",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5545, state = "activeOrCompleted" },
            },
            sourceStep = 206,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1870,
            text = "Turn in Discover Rolf's Fate.",
            route = {
                { y = 0.5552, mapID = 1429, label = "Discover Rolf's Fate", offMapText = "Travel to Discover Rolf's Fate.", x = 0.798 },
            },
            dependsOn = { "accept-45-discover-rolf-s-fate" },
            id = "turnin-45-discover-rolf-s-fate",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 45, state = "completed" },
            },
            sourceStep = 207,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 37 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1880,
            route = {
                { y = 0.5552, mapID = 1429, label = "Report to Thomas", offMapText = "Travel to Report to Thomas.", x = 0.798 },
            },
            text = "Accept Report to Thomas.",
            id = "accept-71-report-to-thomas",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 71, state = "activeOrCompleted" },
            },
            sourceStep = 207,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 45 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5545-1-bundle-of-wood",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 8 Bundle of Wood.",
            complete = {
                questObjective = { id = 5545, index = 1, text = "Bundle of Wood", count = 8 },
            },
            route = {
                { mapID = 1429, x = 0.7909999999999999, y = 0.594, label = "Bundle of Wood", offMapText = "Travel to Bundle of Wood." },
            },
            sourceStep = 208,
            priority = 1890,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5545-a-bundle-of-trouble" },
        },
        {
            id = "objective-52-2-young-forest-bear",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 5 Young Forest Bear.",
            complete = {
                questObjective = { id = 52, index = 2, text = "Young Forest Bear", count = 5 },
            },
            route = {
                { mapID = 1429, x = 0.8140000000000001, y = 0.588, label = "Young Forest Bear", offMapText = "Travel to Young Forest Bear." },
            },
            sourceStep = 209,
            priority = 1900,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-52-protect-the-frontier" },
        },
        {
            id = "objective-52-1-prowler",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 8 Prowler.",
            complete = {
                questObjective = { id = 52, index = 1, text = "Prowler", count = 8 },
            },
            route = {
                { mapID = 1429, x = 0.8, y = 0.5920000000000001, label = "Prowler", offMapText = "Travel to Prowler." },
            },
            sourceStep = 210,
            priority = 1910,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-52-protect-the-frontier" },
        },
        {
            priority = 1920,
            text = "Turn in A Bundle of Trouble to Supervisor Raelen.",
            route = {
                { y = 0.6612, mapID = 1429, label = "Supervisor Raelen", offMapText = "Travel to Supervisor Raelen in Elwynn Forest.", x = 0.8138 },
            },
            dependsOn = { "accept-5545-a-bundle-of-trouble", "objective-5545-1-bundle-of-wood" },
            id = "turnin-5545-a-bundle-of-trouble",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5545, state = "completed" },
            },
            sourceStep = 211,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1930,
            route = {
                { y = 0.6878, mapID = 1429, label = "Sara Timberlain", offMapText = "Travel to Sara Timberlain in Elwynn Forest.", x = 0.7946 },
            },
            text = "Accept Red Linen Goods from Sara Timberlain.",
            id = "accept-83-red-linen-goods",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 83, state = "activeOrCompleted" },
            },
            sourceStep = 212,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1940,
            text = "Turn in Protect the Frontier to Guard Thomas.",
            route = {
                { y = 0.7218, mapID = 1429, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest.", x = 0.7397 },
            },
            dependsOn = { "accept-52-protect-the-frontier", "objective-52-2-young-forest-bear", "objective-52-1-prowler" },
            id = "turnin-52-protect-the-frontier",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 52, state = "completed" },
            },
            sourceStep = 213,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1950,
            text = "Turn in Report to Thomas to Guard Thomas.",
            route = {
                { y = 0.7218, mapID = 1429, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest.", x = 0.7397 },
            },
            dependsOn = { "accept-71-report-to-thomas" },
            id = "turnin-71-report-to-thomas",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 71, state = "completed" },
            },
            sourceStep = 213,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 45 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1960,
            route = {
                { y = 0.7218, mapID = 1429, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest.", x = 0.7397 },
            },
            text = "Accept Deliver Thomas' Report from Guard Thomas.",
            id = "accept-39-deliver-thomas-report",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 39, state = "activeOrCompleted" },
            },
            sourceStep = 213,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 71 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1970,
            route = {
                { y = 0.7218, mapID = 1429, label = "Guard Thomas", offMapText = "Travel to Guard Thomas in Elwynn Forest.", x = 0.7397 },
            },
            text = "Accept Report to Gryan Stoutmantle from Guard Thomas.",
            id = "accept-109-report-to-gryan-stoutmantle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 109, state = "activeOrCompleted" },
            },
            sourceStep = 213,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1688-1-surena-s-choker",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1688,
            priority = 1980,
        },
        {
            id = "objective-1688-1-surena-s-choker",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            text = "Collect 1 Surena's Choker.",
            complete = {
                questObjective = { id = 1688, index = 1, text = "Surena's Choker", count = 1 },
            },
            route = {
                { mapID = 1429, x = 0.7101999999999999, y = 0.8078, label = "Surena's Choker", offMapText = "Travel to Surena's Choker." },
            },
            sourceStep = 214,
            priority = 1990,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1688-surena-caledon" },
        },
        {
            id = "objective-83-1-red-linen-bandana",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 6 Red Linen Bandana.",
            complete = {
                questObjective = { id = 83, index = 1, text = "Red Linen Bandana", count = 6 },
            },
            route = {
                { mapID = 1429, x = 0.7020000000000001, y = 0.764, label = "Red Linen Bandana", offMapText = "Travel to Red Linen Bandana." },
            },
            sourceStep = 215,
            priority = 2000,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-83-red-linen-goods" },
        },
        {
            id = "loot-starter-before-accept-184-furlbrow-s-deed",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Loot Westfall Deed from Defias Bandit, Defias Rogue Wizard, Surena Caledon. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Westfall Deed", minCount = 1 },
                    },
                    {
                        quest = { id = 184, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1429, x = 0.3406, y = 0.5559000000000001, label = "Defias Bandit", offMapText = "Travel to Defias Bandit." },
            },
            dependsOn = {},
            priority = 2010,
        },
        {
            priority = 2020,
            text = "Use the Westfall Deed to accept Furlbrow's Deed.",
            id = "accept-184-furlbrow-s-deed",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 184, state = "activeOrCompleted" },
            },
            sourceStep = 216,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2030,
            text = "Turn in Red Linen Goods to Sara Timberlain.",
            route = {
                { y = 0.6879, mapID = 1429, label = "Sara Timberlain", offMapText = "Travel to Sara Timberlain in Elwynn Forest.", x = 0.7946 },
            },
            dependsOn = { "accept-83-red-linen-goods", "objective-83-1-red-linen-bandana" },
            id = "turnin-83-red-linen-goods",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 83, state = "completed" },
            },
            sourceStep = 217,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-244-encroaching-gnolls",
            kind = "note",
            text = "Reach level 11 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 11 },
            },
            requiredLevel = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 244,
            priority = 2040,
        },
        {
            priority = 2050,
            route = {
                { y = 0.7145, mapID = 1433, label = "Guard Parker", offMapText = "Travel to Guard Parker in Redridge Mountains.", x = 0.1527 },
            },
            text = "Accept Encroaching Gnolls from Guard Parker.",
            id = "accept-244-encroaching-gnolls",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 244, state = "activeOrCompleted" },
            },
            sourceStep = 219,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2060,
            text = "Turn in Encroaching Gnolls to Deputy Feldon.",
            route = {
                { y = 0.6, mapID = 1433, label = "Deputy Feldon", offMapText = "Travel to Deputy Feldon in Redridge Mountains.", x = 0.3074 },
            },
            dependsOn = { "accept-244-encroaching-gnolls" },
            id = "turnin-244-encroaching-gnolls",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 11 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 244, state = "completed" },
            },
            sourceStep = 220,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2070,
            text = "Turn in Surena Caledon to Gakin the Darkbinder.",
            route = {
                { y = 0.7856, mapID = 1453, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City.", x = 0.2526 },
            },
            dependsOn = { "accept-1688-surena-caledon", "objective-1688-1-surena-s-choker" },
            id = "turnin-1688-surena-caledon",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1688, state = "completed" },
            },
            sourceStep = 223,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2080,
            route = {
                { y = 0.7856, mapID = 1453, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City.", x = 0.2526 },
            },
            text = "Accept The Binding from Gakin the Darkbinder.",
            id = "accept-1689-the-binding",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1689, state = "activeOrCompleted" },
            },
            sourceStep = 223,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1688 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2090,
            text = "Kill Summoned Voidwalker.",
            route = {
                { y = 0.7746, mapID = 1453, label = "Bloodstone Choker", offMapText = "Travel to Bloodstone Choker.", x = 0.2511 },
            },
            dependsOn = { "accept-1689-the-binding" },
            id = "objective-1689-1-bloodstone-choker",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1689, text = "Bloodstone Choker", index = 1 },
            },
            sourceStep = 224,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1688 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2100,
            text = "Turn in The Binding to Gakin the Darkbinder.",
            route = {
                { y = 0.7853, mapID = 1453, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City.", x = 0.2525 },
            },
            dependsOn = { "accept-1689-the-binding", "objective-1689-1-bloodstone-choker" },
            id = "turnin-1689-the-binding",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 1689, state = "completed" },
            },
            sourceStep = 225,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1688 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-2999-tome-of-divinity",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                level = { min = 12 },
            },
            requiredLevel = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2999,
            alternativeQuests = { 2997, 3000 },
            priority = 2110,
        },
        {
            priority = 2120,
            route = {
                { y = 0.0614, mapID = 1455, label = "Brandur Ironhammer", offMapText = "Travel to Brandur Ironhammer in Ironforge.", x = 0.2312 },
            },
            text = "Accept Tome of Divinity from Brandur Ironhammer.",
            id = "accept-2999-tome-of-divinity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 2999, state = "activeOrCompleted" },
            },
            sourceStep = 234,
            requiredQuests = {},
            alternativeQuests = { 2997, 3000 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2130,
            text = "Turn in Tome of Divinity to Tiza Battleforge.",
            route = {
                { y = 0.1219, mapID = 1455, label = "Tiza Battleforge", offMapText = "Travel to Tiza Battleforge in Ironforge.", x = 0.2764 },
            },
            dependsOn = { "accept-2999-tome-of-divinity" },
            id = "turnin-2999-tome-of-divinity",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 2999, state = "completed" },
            },
            sourceStep = 235,
            requiredQuests = {},
            alternativeQuests = { 2997, 3000 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2140,
            route = {
                { y = 0.1219, mapID = 1455, label = "Tiza Battleforge", offMapText = "Travel to Tiza Battleforge in Ironforge.", x = 0.2764 },
            },
            text = "Accept The Tome of Divinity from Tiza Battleforge.",
            id = "accept-1645-the-tome-of-divinity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1645, state = "activeOrCompleted" },
            },
            sourceStep = 235,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-1646-the-tome-of-divinity",
            instructionOnly = true,
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 2150,
            classAction = "loot-starter-before-accept-1646-the-tome-of-divinity",
        },
        {
            priority = 2160,
            id = "accept-1646-the-tome-of-divinity",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            sourceStep = 236,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1646-the-tome-of-divinity",
        },
        {
            priority = 2170,
            text = "Turn in The Tome of Divinity to Tiza Battleforge.",
            route = {
                { y = 0.1219, mapID = 1455, label = "Tiza Battleforge", offMapText = "Travel to Tiza Battleforge in Ironforge.", x = 0.2764 },
            },
            dependsOn = { "accept-1646-the-tome-of-divinity" },
            id = "turnin-1646-the-tome-of-divinity",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1646, state = "completed" },
            },
            sourceStep = 237,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2180,
            route = {
                { y = 0.1219, mapID = 1455, label = "Tiza Battleforge", offMapText = "Travel to Tiza Battleforge in Ironforge.", x = 0.2764 },
            },
            text = "Accept The Tome of Divinity from Tiza Battleforge.",
            id = "accept-1647-the-tome-of-divinity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1647, state = "activeOrCompleted" },
            },
            sourceStep = 237,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1646 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-1647-the-tome-of-divinity" },
            id = "turnin-1647-the-tome-of-divinity",
            text = "Turn in The Tome of Divinity to John Turner.",
            useClientPin = true,
            complete = {
                quest = { id = 1647, state = "completed" },
            },
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            priority = 2190,
            sourceStep = 238,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1646 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            priority = 2200,
            text = "Accept The Tome of Divinity from John Turner.",
            id = "accept-1648-the-tome-of-divinity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1648, state = "activeOrCompleted" },
            },
            sourceStep = 238,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1647 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            id = "objective-1648-quest-work",
            text = "For The Tome of Divinity: Bring 10 Linen Cloth to John Turner in Ironforge.",
            useClientPin = true,
            complete = {
                quest = { id = 1648, state = "complete" },
            },
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            priority = 2210,
            sourceStep = 239,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1647 },
                    conditions = {},
                },
            },
            useClientText = false,
            dependsOn = { "accept-1648-the-tome-of-divinity" },
        },
        {
            dependsOn = { "accept-1648-the-tome-of-divinity", "objective-1648-quest-work" },
            id = "turnin-1648-the-tome-of-divinity",
            text = "Turn in The Tome of Divinity to John Turner.",
            useClientPin = true,
            complete = {
                quest = { id = 1648, state = "completed" },
            },
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            priority = 2220,
            sourceStep = 239,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1647 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            priority = 2230,
            text = "Accept The Tome of Divinity from John Turner.",
            id = "accept-1778-the-tome-of-divinity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1778, state = "activeOrCompleted" },
            },
            sourceStep = 239,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1648 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 2240,
            text = "Turn in The Tome of Divinity to Tiza Battleforge.",
            route = {
                { y = 0.1219, mapID = 1455, label = "Tiza Battleforge", offMapText = "Travel to Tiza Battleforge in Ironforge.", x = 0.2764 },
            },
            dependsOn = { "accept-1778-the-tome-of-divinity" },
            id = "turnin-1778-the-tome-of-divinity",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1778, state = "completed" },
            },
            sourceStep = 240,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1648 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2250,
            route = {
                { y = 0.1219, mapID = 1455, label = "Tiza Battleforge", offMapText = "Travel to Tiza Battleforge in Ironforge.", x = 0.2764 },
            },
            text = "Accept The Tome of Divinity from Tiza Battleforge.",
            id = "accept-1779-the-tome-of-divinity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1779, state = "activeOrCompleted" },
            },
            sourceStep = 240,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1778 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2260,
            text = "Turn in The Tome of Divinity to Muiredon Battleforge.",
            route = {
                { y = 0.0829, mapID = 1455, label = "Muiredon Battleforge", offMapText = "Travel to Muiredon Battleforge in Ironforge.", x = 0.2353 },
            },
            dependsOn = { "accept-1779-the-tome-of-divinity" },
            id = "turnin-1779-the-tome-of-divinity",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1779, state = "completed" },
            },
            sourceStep = 241,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1778 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2270,
            route = {
                { y = 0.0829, mapID = 1455, label = "Muiredon Battleforge", offMapText = "Travel to Muiredon Battleforge in Ironforge.", x = 0.2353 },
            },
            text = "Accept The Tome of Divinity from Muiredon Battleforge.",
            id = "accept-1783-the-tome-of-divinity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1783, state = "activeOrCompleted" },
            },
            sourceStep = 241,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1779 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2280,
            route = {
                { y = 0.4928, mapID = 1432, label = "Vidra Hearthstove", offMapText = "Travel to Vidra Hearthstove in Loch Modan.", x = 0.3483 },
            },
            text = "Accept Thelsamar Blood Sausages from Vidra Hearthstove.",
            id = "accept-418-thelsamar-blood-sausages",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 418, state = "activeOrCompleted" },
            },
            sourceStep = 242,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2290,
            text = "Accept Rat Catching from Mountaineer Kadrell.",
            id = "accept-416-rat-catching",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 416, state = "activeOrCompleted" },
            },
            sourceStep = 243,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 2300,
            text = "Turn in Return to Brock to Brock Stoneseeker.",
            route = {
                { y = 0.4781, mapID = 1432, label = "Brock Stoneseeker", offMapText = "Travel to Brock Stoneseeker in Loch Modan.", x = 0.3702 },
            },
            dependsOn = { "accept-6392-return-to-brock" },
            id = "turnin-6392-return-to-brock",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                quest = { id = 6392, state = "completed" },
            },
            sourceStep = 244,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6388 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2310,
            text = "Collect 12 Tunnel Rat Ear.",
            route = {
                { y = 0.45, mapID = 1432, label = "Tunnel Rat Scout", offMapText = "Travel to Tunnel Rat Scout.", x = 0.284 },
            },
            dependsOn = { "accept-416-rat-catching" },
            id = "objective-416-1-tunnel-rat-scout",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 416, text = "Tunnel Rat Scout", index = 1, count = 12 },
            },
            sourceStep = 245,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2320,
            text = "Turn in Stormpike's Delivery to Mountaineer Stormpike.",
            route = {
                { y = 0.184, mapID = 1432, label = "Mountaineer Stormpike", offMapText = "Travel to Mountaineer Stormpike in Loch Modan.", x = 0.2476 },
            },
            dependsOn = { "accept-353-stormpike-s-delivery" },
            id = "turnin-353-stormpike-s-delivery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 353, state = "completed" },
            },
            sourceStep = 246,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            dependsOn = { "accept-416-rat-catching", "objective-416-1-tunnel-rat-scout" },
            id = "turnin-416-rat-catching",
            text = "Turn in Rat Catching to Mountaineer Kadrell.",
            useClientPin = true,
            complete = {
                quest = { id = 416, state = "completed" },
            },
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            priority = 2330,
            sourceStep = 250,
            requiredQuests = {},
            useClientText = false,
        },
        {
            priority = 2340,
            text = "For Thelsamar Blood Sausages: Bring 3 pieces of Bear Meat, 3 Boar Intestines, and 3 Spider Ichor to Vidra Hearthstove in Thelsamar.",
            id = "objective-418-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 418, state = "complete" },
            },
            sourceStep = 251,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-418-thelsamar-blood-sausages" },
        },
        {
            priority = 2350,
            text = "Turn in Thelsamar Blood Sausages to Vidra Hearthstove.",
            route = {
                { y = 0.4928, mapID = 1432, label = "Vidra Hearthstove", offMapText = "Travel to Vidra Hearthstove in Loch Modan.", x = 0.3483 },
            },
            dependsOn = { "accept-418-thelsamar-blood-sausages", "objective-418-quest-work" },
            id = "turnin-418-thelsamar-blood-sausages",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 418, state = "completed" },
            },
            sourceStep = 251,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-224-1-stonesplinter-trogg",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 10 Stonesplinter Trogg.",
            complete = {
                questObjective = { id = 224, index = 1, text = "Stonesplinter Trogg", count = 10 },
            },
            route = {
                { mapID = 1432, x = 0.326, y = 0.726, label = "Stonesplinter Trogg", offMapText = "Travel to Stonesplinter Trogg." },
            },
            sourceStep = 253,
            priority = 2360,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-224-in-defense-of-the-king-s-lands" },
        },
        {
            id = "objective-224-2-stonesplinter-scout",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 10 Stonesplinter Scout.",
            complete = {
                questObjective = { id = 224, index = 2, text = "Stonesplinter Scout", count = 10 },
            },
            route = {
                { mapID = 1432, x = 0.326, y = 0.726, label = "Stonesplinter Scout", offMapText = "Travel to Stonesplinter Scout." },
            },
            sourceStep = 253,
            priority = 2370,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-224-in-defense-of-the-king-s-lands" },
        },
        {
            priority = 2380,
            text = "Turn in In Defense of the King's Lands to Mountaineer Cobbleflint.",
            route = {
                { mapID = 1432, x = 0.2207, y = 0.7313, label = "Mountaineer Cobbleflint", offMapText = "Travel to Mountaineer Cobbleflint in Loch Modan." },
            },
            dependsOn = {
                "accept-224-in-defense-of-the-king-s-lands",
                "objective-224-1-stonesplinter-trogg",
                "objective-224-2-stonesplinter-scout",
            },
            id = "turnin-224-in-defense-of-the-king-s-lands",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 224, state = "completed" },
            },
            sourceStep = 254,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2390,
            text = "For The Trogg Threat: Bring 8 Trogg Stone Teeth to Captain Rugelfuss in the southern guard tower.",
            id = "objective-267-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 267, state = "complete" },
            },
            sourceStep = 255,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-267-the-trogg-threat" },
        },
        {
            priority = 2400,
            text = "Turn in The Trogg Threat to Captain Rugelfuss.",
            route = {
                { y = 0.7367, mapID = 1432, label = "Captain Rugelfuss", offMapText = "Travel to Captain Rugelfuss in Loch Modan.", x = 0.2323 },
            },
            dependsOn = { "accept-267-the-trogg-threat", "objective-267-quest-work" },
            id = "turnin-267-the-trogg-threat",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 267, state = "completed" },
            },
            sourceStep = 255,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2410,
            id = "objective-1783-quest-work",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            sourceStep = 256,
            useClientPin = true,
            dependsOn = { "accept-1783-the-tome-of-divinity" },
            classAction = "objective-1783-quest-work",
        },
        {
            priority = 2420,
            text = "Turn in The Tome of Divinity to Narm Faulk.",
            route = {
                { y = 0.5809, mapID = 1426, label = "Narm Faulk", offMapText = "Travel to Narm Faulk in Dun Morogh.", x = 0.7832 },
            },
            dependsOn = { "accept-1783-the-tome-of-divinity", "objective-1783-quest-work" },
            id = "turnin-1783-the-tome-of-divinity",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1783, state = "completed" },
            },
            sourceStep = 256,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1779 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2430,
            route = {
                { y = 0.5809, mapID = 1426, label = "Narm Faulk", offMapText = "Travel to Narm Faulk in Dun Morogh.", x = 0.7832 },
            },
            text = "Accept The Tome of Divinity from Narm Faulk.",
            id = "accept-1784-the-tome-of-divinity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1784, state = "activeOrCompleted" },
            },
            sourceStep = 256,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2440,
            text = "Collect 1 Dark Iron Script.",
            route = {
                { y = 0.59, mapID = 1426, label = "Dark Iron Spy", offMapText = "Travel to Dark Iron Spy.", x = 0.776 },
            },
            dependsOn = { "accept-1784-the-tome-of-divinity" },
            id = "objective-1784-1-dark-iron-spy",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1784, text = "Dark Iron Spy", index = 1, count = 1 },
            },
            sourceStep = 257,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2450,
            text = "Turn in The Tome of Divinity to Muiredon Battleforge.",
            route = {
                { y = 0.0829, mapID = 1455, label = "Muiredon Battleforge", offMapText = "Travel to Muiredon Battleforge in Ironforge.", x = 0.2353 },
            },
            dependsOn = { "accept-1784-the-tome-of-divinity", "objective-1784-1-dark-iron-spy" },
            id = "turnin-1784-the-tome-of-divinity",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1784, state = "completed" },
            },
            sourceStep = 258,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1783 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2460,
            route = {
                { y = 0.0829, mapID = 1455, label = "Muiredon Battleforge", offMapText = "Travel to Muiredon Battleforge in Ironforge.", x = 0.2353 },
            },
            text = "Accept The Tome of Divinity from Muiredon Battleforge.",
            id = "accept-1785-the-tome-of-divinity",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1785, state = "activeOrCompleted" },
            },
            sourceStep = 258,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1784 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2470,
            text = "Turn in The Tome of Divinity to Tiza Battleforge.",
            route = {
                { y = 0.1219, mapID = 1455, label = "Tiza Battleforge", offMapText = "Travel to Tiza Battleforge in Ironforge.", x = 0.2764 },
            },
            dependsOn = { "accept-1785-the-tome-of-divinity" },
            id = "turnin-1785-the-tome-of-divinity",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1785, state = "completed" },
            },
            sourceStep = 259,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1784 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2480,
            text = "Turn in Deliver Thomas' Report to Marshal Dughan.",
            route = {
                { y = 0.6593, mapID = 1429, label = "Marshal Dughan", offMapText = "Travel to Marshal Dughan in Elwynn Forest.", x = 0.4211 },
            },
            dependsOn = { "accept-39-deliver-thomas-report" },
            id = "turnin-39-deliver-thomas-report",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 39, state = "completed" },
            },
            sourceStep = 260,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 71 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2490,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm.", x = 0.298 },
            },
            text = "Accept Hallowed Memorandum from Sten Stoutarm in Coldridge Valley.",
            id = "woven-accept-98574-hallowed-memorandum",
            kind = "accept",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 98574, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2500,
            route = {
                { y = 0.664, mapID = 1426, label = "Branstock Khalder", offMapText = "Travel to Branstock Khalder.", x = 0.286 },
            },
            text = "Read Hallowed Memorandum in your bags. Turn in Hallowed Memorandum to Branstock Khalder in Coldridge Valley.",
            id = "woven-turnin-98574-hallowed-memorandum",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 98574, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98574-hallowed-memorandum" },
        },
        {
            priority = 2510,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm.", x = 0.298 },
            },
            text = "Accept Archaic Rune from Sten Stoutarm in Coldridge Valley.",
            id = "woven-accept-98581-archaic-rune",
            kind = "accept",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 98581, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2520,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", offMapText = "Travel to Teo Hammerstorm.", x = 0.288 },
            },
            text = "Read Archaic Rune in your bags. Turn in Archaic Rune to Teo Hammerstorm in Coldridge Valley.",
            id = "woven-turnin-98581-archaic-rune",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            complete = {
                quest = { id = 98581, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98581-archaic-rune" },
        },
        {
            id = "level-before-woven-accept-94373-call-of-earth",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94373,
            priority = 2530,
        },
        {
            priority = 2540,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", offMapText = "Travel to Teo Hammerstorm.", x = 0.288 },
            },
            text = "Accept Call of Earth from Teo Hammerstorm in Coldridge Valley.",
            id = "woven-accept-94373-call-of-earth",
            kind = "accept",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94373, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2550,
            id = "woven-objective-94373-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-accept-94373-call-of-earth" },
            classAction = "objective-94373-call-of-earth",
        },
        {
            priority = 2560,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", offMapText = "Travel to Teo Hammerstorm.", x = 0.288 },
            },
            text = "Turn in Call of Earth to Teo Hammerstorm in Coldridge Valley.",
            id = "woven-turnin-94373-call-of-earth",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94373, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-94373-call-of-earth", "woven-objective-94373-call-of-earth" },
        },
        {
            priority = 2570,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", offMapText = "Travel to Teo Hammerstorm.", x = 0.288 },
            },
            text = "Accept Call of Earth from Teo Hammerstorm in Coldridge Valley.",
            id = "woven-accept-94374-call-of-earth-shrine",
            kind = "accept",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94374, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94373 },
                    conditions = {
                        all = {
                            { faction = "Alliance" },
                            { class = 7 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2580,
            id = "objective-94374-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-accept-94374-call-of-earth-shrine" },
            classAction = "objective-94374-reviewed-mechanics",
        },
        {
            priority = 2590,
            id = "woven-turnin-94374-call-of-earth-shrine",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-accept-94374-call-of-earth-shrine", "objective-94374-reviewed-mechanics" },
            classAction = "turnin-94374-call-of-earth",
        },
        {
            priority = 2600,
            id = "woven-accept-94375-call-of-earth-return",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = {},
            classAction = "accept-94375-call-of-earth",
        },
        {
            priority = 2610,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", offMapText = "Travel to Teo Hammerstorm.", x = 0.288 },
            },
            text = "Turn in Call of Earth to Teo Hammerstorm in Coldridge Valley.",
            id = "woven-turnin-94375-call-of-earth-return",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94375, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94374 },
                    conditions = {
                        all = {
                            { faction = "Alliance" },
                            { class = 7 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-94375-call-of-earth-return" },
        },
        {
            priority = 2620,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", offMapText = "Travel to Teo Hammerstorm.", x = 0.288 },
            },
            text = "Accept Earth Sapta from Teo Hammerstorm in Coldridge Valley.",
            id = "woven-accept-94472-earth-sapta",
            kind = "accept",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94472, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            priority = 2630,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", offMapText = "Travel to Teo Hammerstorm.", x = 0.288 },
            },
            text = "Bring Teo Hammerstorm the Earth Sapta he asks for. The guide follows the pin in your quest log.",
            id = "woven-objective-94472-earth-sapta",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 94472, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-94472-earth-sapta" },
        },
        {
            priority = 2640,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", offMapText = "Travel to Teo Hammerstorm.", x = 0.288 },
            },
            text = "Turn in Earth Sapta to Teo Hammerstorm in Coldridge Valley.",
            id = "woven-turnin-94472-earth-sapta",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94472, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-94472-earth-sapta", "woven-objective-94472-earth-sapta" },
        },
        {
            id = "level-before-woven-accept-97277-grund-and-gozwin",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 97277,
            priority = 2650,
        },
        {
            priority = 2660,
            route = {
                { y = 0.674, mapID = 1426, label = "Grund Drokda", offMapText = "Travel to Grund Drokda.", x = 0.286 },
            },
            text = "Accept Grund and Gozwin from Grund Drokda in Anvilmar.",
            id = "woven-accept-97277-grund-and-gozwin",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 97277, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2670,
            route = {
                { y = 0.674, mapID = 1426, label = "Grund Drokda", offMapText = "Travel to Grund Drokda.", x = 0.286 },
            },
            text = "Find Grund and Gozwin's camp in the hills northwest of Anvilmar. Recover Gozwin's Mechanic's Log and kill the Snow Leopard Prowler.",
            id = "woven-objective-97277-grund-and-gozwin",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 97277, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97277-grund-and-gozwin" },
        },
        {
            priority = 2680,
            route = {
                { y = 0.674, mapID = 1426, label = "Grund Drokda", offMapText = "Travel to Grund Drokda.", x = 0.286 },
            },
            text = "Turn in Grund and Gozwin to Grund Drokda in Anvilmar.",
            id = "woven-turnin-97277-grund-and-gozwin",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 97277, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97277-grund-and-gozwin", "woven-objective-97277-grund-and-gozwin" },
        },
        {
            priority = 2690,
            route = {
                { y = 0.718, mapID = 1426, label = "Mountaineer Thalos", offMapText = "Travel to Mountaineer Thalos.", x = 0.334 },
            },
            text = "Accept The Adventurer from Mountaineer Thalos in Coldridge Pass.",
            id = "woven-accept-96628-the-adventurer",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 96628, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 96627, 96630, 96638, 96652, 96656, 96659 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2700,
            route = {
                { y = 0.538, mapID = 1426, label = "Eric Brighthammer", offMapText = "Travel to Eric Brighthammer.", x = 0.466 },
            },
            text = "Turn in The Adventurer to Eric Brighthammer in Kharanos.",
            id = "woven-turnin-96628-the-adventurer",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 96628, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 96627, 96630, 96638, 96652, 96656, 96659 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96628-the-adventurer" },
        },
        {
            priority = 2710,
            route = {
                { mapID = 1426, x = 0.4669, y = 0.5392, label = "Eric Brighthammer", offMapText = "Travel to Eric Brighthammer." },
            },
            text = "Accept The Great Outdoors from Eric Brighthammer.",
            id = "woven-accept-96101-the-great-outdoors",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 96608, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96101, 96604, 96605, 96606, 96607 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2720,
            text = "Type /sit beside Eric Brighthammer's Basic Campfire and wait until you receive the Boosted Rest buff.",
            id = "woven-objective-96101-the-great-outdoors",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 96608, state = "complete" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96101, 96604, 96605, 96606, 96607 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96101-the-great-outdoors" },
            route = {
                { mapID = 1426, x = 0.4669, y = 0.5392, label = "Eric Brighthammer", offMapText = "Travel to Eric Brighthammer." },
            },
        },
        {
            priority = 2730,
            route = {
                { mapID = 1426, x = 0.4669, y = 0.5392, label = "Eric Brighthammer", offMapText = "Travel to Eric Brighthammer." },
            },
            text = "Turn in The Great Outdoors to Eric Brighthammer.",
            id = "woven-turnin-96101-the-great-outdoors",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 96608, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96101, 96604, 96605, 96606, 96607 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96101-the-great-outdoors", "woven-objective-96101-the-great-outdoors" },
        },
        {
            priority = 2740,
            route = {
                { y = 0.52, mapID = 1426, label = "Tognus Flintfire", offMapText = "Travel to Tognus Flintfire.", x = 0.452 },
            },
            text = "Accept Flintfire's Shipment from Tognus Flintfire in Kharanos.",
            id = "woven-accept-98321-flintfires-shipment",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98321, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2750,
            route = {
                { y = 0.57, mapID = 1426, label = "Mountaineer Gretchen", offMapText = "Travel to Mountaineer Gretchen.", x = 0.44 },
            },
            text = "Accept Secure the Mountain from Mountaineer Gretchen.",
            id = "woven-accept-98319-secure-the-mountain",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98319, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2760,
            route = {
                { y = 0.54, mapID = 1426, label = "Grizzled Den", offMapText = "Travel to Grizzled Den.", x = 0.42 },
            },
            text = "Find Mountaineer Cornelius in the Grizzled Den.",
            id = "woven-objective-98319-secure-the-mountain",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98319, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98319-secure-the-mountain" },
        },
        {
            priority = 2770,
            route = {
                { y = 0.57, mapID = 1426, label = "Mountaineer Gretchen", offMapText = "Travel to Mountaineer Gretchen.", x = 0.44 },
            },
            text = "Turn in Secure the Mountain to Mountaineer Gretchen.",
            id = "woven-turnin-98319-secure-the-mountain",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98319, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98319-secure-the-mountain", "woven-objective-98319-secure-the-mountain" },
        },
        {
            priority = 2780,
            route = {
                { y = 0.57, mapID = 1426, label = "Mountaineer Gretchen", offMapText = "Travel to Mountaineer Gretchen.", x = 0.44 },
            },
            text = "Accept Secure the Mountain from Mountaineer Gretchen.",
            id = "woven-accept-98323-secure-the-mountain",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98323, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2790,
            route = {
                { y = 0.54, mapID = 1426, label = "Grizzled Den", offMapText = "Travel to Grizzled Den.", x = 0.42 },
            },
            text = "Collect 8 Flintfire Shipments in the Grizzled Den.",
            id = "woven-objective-98321-flintfires-shipment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98321, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98321-flintfires-shipment" },
        },
        {
            priority = 2800,
            route = {
                { y = 0.538, mapID = 1426, label = "Senir Whitebeard", offMapText = "Travel to Senir Whitebeard.", x = 0.466 },
            },
            text = "Accept Secure the Mountain from Senir Whitebeard in Kharanos.",
            id = "woven-accept-98322-secure-the-mountain",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98322, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2810,
            route = {
                { y = 0.57, mapID = 1426, label = "Mountaineer Gretchen", offMapText = "Travel to Mountaineer Gretchen.", x = 0.44 },
            },
            text = "Turn in Secure the Mountain to Mountaineer Gretchen, west of Kharanos.",
            id = "woven-turnin-98322-secure-the-mountain",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98322, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98322-secure-the-mountain" },
        },
        {
            priority = 2820,
            route = {
                { y = 0.538, mapID = 1426, label = "Senir Whitebeard", offMapText = "Travel to Senir Whitebeard.", x = 0.466 },
            },
            text = "Turn in Secure the Mountain to Senir Whitebeard in Kharanos.",
            id = "woven-turnin-98323-secure-the-mountain",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98323, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98323-secure-the-mountain" },
        },
        {
            priority = 2830,
            route = {
                { y = 0.52, mapID = 1426, label = "Tognus Flintfire", offMapText = "Travel to Tognus Flintfire.", x = 0.452 },
            },
            text = "Turn in Flintfire's Shipment to Tognus Flintfire in Kharanos.",
            id = "woven-turnin-98321-flintfires-shipment",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98321, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98321-flintfires-shipment", "woven-objective-98321-flintfires-shipment" },
        },
        {
            id = "level-before-woven-accept-99158-dawn-in-the-mountains",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 99158,
            priority = 2840,
        },
        {
            priority = 2850,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", offMapText = "Travel to Maxan Anvol.", x = 0.472 },
            },
            text = "Accept Dawn in the Mountains from Maxan Anvol in Kharanos.",
            id = "woven-accept-99158-dawn-in-the-mountains",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99158, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-accept-94824-confounding-flash",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94824,
            priority = 2860,
        },
        {
            priority = 2870,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", offMapText = "Travel to Maxan Anvol.", x = 0.472 },
            },
            text = "Accept Confounding Flash from Maxan Anvol in Kharanos.",
            id = "woven-accept-94824-confounding-flash",
            kind = "accept",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 94824, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2880,
            route = {
                { y = 0.1, mapID = 1455, label = "High Priestess Mims", offMapText = "Travel to High Priestess Mims.", x = 0.248 },
            },
            text = "Turn in Confounding Flash to High Priestess Mims in Ironforge.",
            id = "woven-turnin-94824-confounding-flash",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 94824, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-94824-confounding-flash" },
        },
        {
            priority = 2890,
            route = {
                { y = 0.1, mapID = 1455, label = "High Priestess Mims", offMapText = "Travel to High Priestess Mims.", x = 0.248 },
            },
            text = "Accept Confounding Flash from High Priestess Mims in Ironforge.",
            id = "woven-accept-94817-confounding-flash-mims",
            kind = "accept",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            complete = {
                quest = { id = 94817, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94824 },
                    conditions = {
                        all = {
                            { faction = "Alliance" },
                            { race = 7 },
                            { class = 5 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2900,
            route = {
                { y = 0.1, mapID = 1455, label = "High Priestess Mims", offMapText = "Travel to High Priestess Mims.", x = 0.248 },
            },
            id = "woven-turnin-94817-confounding-flash-mims",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "woven-accept-94817-confounding-flash-mims" },
            classAction = "turnin-94817-confounding-flash",
        },
        {
            priority = 2910,
            route = {
                { y = 0.448, mapID = 1426, label = "Father Gavin", offMapText = "Travel to Father Gavin.", x = 0.576 },
            },
            text = "Turn in Dawn in the Mountains to Father Gavin.",
            id = "woven-turnin-99158-dawn-in-the-mountains",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99158, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99158-dawn-in-the-mountains" },
        },
        {
            priority = 2920,
            route = {
                { y = 0.448, mapID = 1426, label = "Father Gavin", offMapText = "Travel to Father Gavin.", x = 0.576 },
            },
            text = "Accept Finding Warmth from Father Gavin.",
            id = "woven-accept-99159-finding-warmth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99159, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2930,
            route = {
                { y = 0.448, mapID = 1426, label = "Father Gavin", offMapText = "Travel to Father Gavin.", x = 0.576 },
            },
            text = "Accept Rime's Wrath from Father Gavin.",
            id = "woven-accept-99160-rimes-wrath",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99160, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2940,
            route = {
                { y = 0.448, mapID = 1426, label = "Father Gavin", offMapText = "Travel to Father Gavin.", x = 0.576 },
            },
            text = "Accept Treacherous Cold from Father Gavin.",
            id = "woven-accept-99162-treacherous-cold",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99162, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2950,
            route = {
                { y = 0.448, mapID = 1426, label = "Father Gavin", offMapText = "Travel to Father Gavin.", x = 0.576 },
            },
            text = "Collect 14 pieces of Mostly Dry Firewood.",
            id = "woven-objective-99159-finding-warmth",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99159, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99159-finding-warmth" },
        },
        {
            priority = 2960,
            route = {
                { y = 0.452, mapID = 1426, label = "Minor Ice Elemental", offMapText = "Travel to Minor Ice Elemental.", x = 0.57 },
            },
            text = "Destroy 10 minor ice elementals.",
            id = "woven-objective-99160-rimes-wrath",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99160, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99160-rimes-wrath" },
        },
        {
            priority = 2970,
            route = {
                { y = 0.448, mapID = 1426, label = "Father Gavin", offMapText = "Travel to Father Gavin.", x = 0.576 },
            },
            text = "Collect Stoneanvil's Rifle, Sunhammer's Rifle, and Coalbeard's Rifle.",
            id = "woven-objective-99162-treacherous-cold",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99162, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99162-treacherous-cold" },
        },
        {
            priority = 2980,
            route = {
                { y = 0.448, mapID = 1426, label = "Father Gavin", offMapText = "Travel to Father Gavin.", x = 0.576 },
            },
            text = "Turn in Finding Warmth to Father Gavin.",
            id = "woven-turnin-99159-finding-warmth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99159, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99159-finding-warmth", "woven-objective-99159-finding-warmth" },
        },
        {
            priority = 2990,
            route = {
                { y = 0.448, mapID = 1426, label = "Father Gavin", offMapText = "Travel to Father Gavin.", x = 0.576 },
            },
            text = "Turn in Rime's Wrath to Father Gavin.",
            id = "woven-turnin-99160-rimes-wrath",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99160, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99160-rimes-wrath", "woven-objective-99160-rimes-wrath" },
        },
        {
            priority = 3000,
            route = {
                { y = 0.448, mapID = 1426, label = "Father Gavin", offMapText = "Travel to Father Gavin.", x = 0.576 },
            },
            text = "Accept the next Rime's Wrath from Father Gavin.",
            id = "woven-accept-99161-rimes-wrath",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99161, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3010,
            route = {
                { y = 0.42, mapID = 1426, label = "Avala", offMapText = "Travel to Avala.", x = 0.582 },
            },
            text = "Kill Avala and take Avala's Core.",
            id = "woven-objective-99161-rimes-wrath",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99161, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99161-rimes-wrath" },
        },
        {
            priority = 3020,
            route = {
                { y = 0.448, mapID = 1426, label = "Father Gavin", offMapText = "Travel to Father Gavin.", x = 0.576 },
            },
            text = "Turn in Rime's Wrath to Father Gavin.",
            id = "woven-turnin-99161-rimes-wrath",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99161, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99161-rimes-wrath", "woven-objective-99161-rimes-wrath" },
        },
        {
            priority = 3030,
            route = {
                { y = 0.448, mapID = 1426, label = "Father Gavin", offMapText = "Travel to Father Gavin.", x = 0.576 },
            },
            text = "Turn in Treacherous Cold to Father Gavin.",
            id = "woven-turnin-99162-treacherous-cold",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 99162, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99162-treacherous-cold", "woven-objective-99162-treacherous-cold" },
        },
        {
            priority = 3040,
            route = {
                { y = 0.446, mapID = 1426, label = "Gretta Ganter", offMapText = "Travel to Gretta Ganter.", x = 0.314 },
            },
            text = "Accept Frosthowl from Gretta Ganter in Brewnall Village.",
            id = "woven-accept-98326-frosthowl",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98326, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3050,
            route = {
                { y = 0.446, mapID = 1426, label = "Frosthowl", offMapText = "Travel to Frosthowl.", x = 0.314 },
            },
            text = "Slay Frosthowl and take the Sack of Fish.",
            id = "woven-objective-98326-frosthowl",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98326, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98326-frosthowl" },
        },
        {
            priority = 3060,
            route = {
                { y = 0.446, mapID = 1426, label = "Gretta Ganter", offMapText = "Travel to Gretta Ganter.", x = 0.314 },
            },
            text = "Turn in Frosthowl to Gretta Ganter.",
            id = "woven-turnin-98326-frosthowl",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98326, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98326-frosthowl", "woven-objective-98326-frosthowl" },
        },
        {
            id = "level-before-woven-accept-95212-never-saddle-on-quality",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 7 },
            },
            requiredLevel = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 95212,
            priority = 3070,
        },
        {
            priority = 3080,
            route = {
                { y = 0.498, mapID = 1426, label = "Rudra Amberstill", offMapText = "Travel to Rudra Amberstill.", x = 0.63 },
            },
            text = "Accept Never Saddle on Quality from Rudra Amberstill.",
            id = "woven-accept-95212-never-saddle-on-quality",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95212, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3090,
            route = {
                { y = 0.62, mapID = 1426, label = "Elder Snow Leopard", offMapText = "Travel to Elder Snow Leopard.", x = 0.714 },
            },
            text = "Collect 6 Pristine Leopard Pelts from Elder Snow Leopards.",
            id = "woven-objective-95212-never-saddle-on-quality",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95212, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95212-never-saddle-on-quality" },
        },
        {
            priority = 3100,
            route = {
                { y = 0.498, mapID = 1426, label = "Rudra Amberstill", offMapText = "Travel to Rudra Amberstill.", x = 0.63 },
            },
            text = "Turn in Never Saddle on Quality to Rudra Amberstill.",
            id = "woven-turnin-95212-never-saddle-on-quality",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95212, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95212-never-saddle-on-quality", "woven-objective-95212-never-saddle-on-quality" },
        },
        {
            id = "loot-starter-before-accept-95213-verified-pickup",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Loot Empty Powder Keg. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Empty Powder Keg", minCount = 1 },
                    },
                    {
                        quest = { id = 95213, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 3110,
        },
        {
            priority = 3120,
            text = "Use the Empty Powder Keg to accept Stolen Blasting Powder.",
            id = "accept-95213-verified-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95213, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3130,
            text = "For Stolen Blasting Powder: Bring the Empty Powder Keg to Quarrymaster Thesten at Gol'Bolar Quarry.",
            id = "objective-95213-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95213, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-95213-verified-pickup" },
        },
        {
            priority = 3140,
            route = {
                { y = 0.548, mapID = 1426, label = "Quarrymaster Thesten", offMapText = "Travel to Quarrymaster Thesten.", x = 0.69 },
            },
            text = "Use the Empty Powder Keg if a trogg drops it, then turn in Stolen Blasting Powder to Quarrymaster Thesten.",
            id = "woven-turnin-95213-stolen-blasting-powder",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95213, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-95213-quest-work", "accept-95213-verified-pickup" },
        },
        {
            priority = 3150,
            route = {
                { y = 0.548, mapID = 1426, label = "Quarrymaster Thesten", offMapText = "Travel to Quarrymaster Thesten.", x = 0.69 },
            },
            text = "Accept Stolen Blasting Powder from Quarrymaster Thesten.",
            id = "woven-accept-95214-stolen-blasting-powder",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95214, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3160,
            route = {
                { y = 0.512, mapID = 1426, label = "Rockjaw Ambusher", offMapText = "Travel to Rockjaw Ambusher.", x = 0.738 },
            },
            text = "Collect 16 Stolen Blasting Powder from the troggs east of Gol'Bolar Quarry.",
            id = "woven-objective-95214-stolen-blasting-powder",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95214, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95214-stolen-blasting-powder" },
        },
        {
            priority = 3170,
            route = {
                { y = 0.548, mapID = 1426, label = "Quarrymaster Thesten", offMapText = "Travel to Quarrymaster Thesten.", x = 0.69 },
            },
            text = "Turn in Stolen Blasting Powder to Quarrymaster Thesten.",
            id = "woven-turnin-95214-stolen-blasting-powder",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 95214, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95214-stolen-blasting-powder", "woven-objective-95214-stolen-blasting-powder" },
        },
        {
            priority = 3180,
            route = {
                { mapID = 1455, x = 0.7216, y = 0.4888, label = "Misplaced Packages", offMapText = "Travel to Misplaced Packages." },
            },
            text = "Read Misplaced Packages to accept Your Package Has Arrived.",
            id = "accept-97263-verified-pickup",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 97263, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3190,
            route = {
                { y = 0.136, mapID = 1455, label = "Eldrun Stormbreaker", offMapText = "Travel to Eldrun Stormbreaker.", x = 0.474 },
            },
            text = "Turn in Your Package Has Arrived to Eldrun Stormbreaker in Ironforge if you are carrying Eldrun's package.",
            id = "woven-turnin-97263-your-package-has-arrived",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 97263, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-97263-verified-pickup" },
        },
        {
            id = "level-before-woven-accept-94449-call-of-fire",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94449,
            priority = 3200,
        },
        {
            priority = 3210,
            route = {
                { y = 0.52, mapID = 1426, label = "Ingrid Dunwald", offMapText = "Travel to Ingrid Dunwald.", x = 0.474 },
            },
            text = "Accept Call of Fire from Ingrid Dunwald in Kharanos.",
            id = "woven-accept-94449-call-of-fire",
            kind = "accept",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94449, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3220,
            route = {
                { y = 0.436, mapID = 1426, label = "Bruegs Kindleborn", offMapText = "Travel to Bruegs Kindleborn.", x = 0.876 },
            },
            text = "Turn in Call of Fire to Bruegs Kindleborn.",
            id = "woven-turnin-94449-call-of-fire",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94449, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-94449-call-of-fire" },
        },
        {
            priority = 3230,
            route = {
                { y = 0.436, mapID = 1426, label = "Bruegs Kindleborn", offMapText = "Travel to Bruegs Kindleborn.", x = 0.876 },
            },
            text = "Accept Call of Fire from Bruegs Kindleborn.",
            id = "woven-accept-94465-call-of-fire-loch",
            kind = "accept",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94465, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94449 },
                    conditions = {
                        all = {
                            { faction = "Alliance" },
                            { class = 7 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3240,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", offMapText = "Travel to Braldir Ashmantle.", x = 0.32 },
            },
            id = "woven-turnin-94465-call-of-fire-loch",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "woven-accept-94465-call-of-fire-loch" },
            classAction = "turnin-94465-call-of-fire",
        },
    },
    casualSpine = true,
    routeMode = "ordered",
    nextGuide = { Alliance = "leveling-casual-alliance" },
})
