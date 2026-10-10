local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Redridge & Westfall",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-redridge-and-westfall",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 19 },
            },
        },
    },
    goals = {
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
            priority = 10,
        },
        {
            priority = 20,
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
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
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
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-125-the-lost-tools",
            kind = "note",
            text = "Reach level 15 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 15 },
            },
            requiredLevel = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 125,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.4864, mapID = 1433, label = "Foreman Oslow", offMapText = "Travel to Foreman Oslow in Redridge Mountains.", x = 0.3214 },
            },
            text = "Accept The Lost Tools from Foreman Oslow.",
            id = "accept-125-the-lost-tools",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 125, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { y = 0.4728, mapID = 1433, label = "Verner Osgood", offMapText = "Travel to Verner Osgood in Redridge Mountains.", x = 0.3098 },
            },
            text = "Accept The Price of Shoes from Verner Osgood.",
            id = "accept-118-the-price-of-shoes",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 118, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.4445, mapID = 1433, label = "Magistrate Solomon", offMapText = "Travel to Magistrate Solomon in Redridge Mountains.", x = 0.2999 },
            },
            text = "Accept Messenger to Stormwind from Magistrate Solomon.",
            id = "accept-120-messenger-to-stormwind",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 120, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.4435, mapID = 1433, label = "Darcy", offMapText = "Travel to Darcy in Redridge Mountains.", x = 0.2675 },
            },
            text = "Accept A Free Lunch from Darcy.",
            id = "accept-129-a-free-lunch",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 129, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { y = 0.4535, mapID = 1433, label = "Wiley the Black", offMapText = "Travel to Wiley the Black in Redridge Mountains.", x = 0.2648 },
            },
            text = "Turn in The Defias Brotherhood to Wiley the Black.",
            id = "turnin-65-the-defias-brotherhood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 65, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            route = {
                { y = 0.4535, mapID = 1433, label = "Wiley the Black", offMapText = "Travel to Wiley the Black in Redridge Mountains.", x = 0.2648 },
            },
            text = "Accept The Defias Brotherhood from Wiley the Black.",
            id = "accept-132-the-defias-brotherhood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 132, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 65 },
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
                { y = 0.4384, mapID = 1433, label = "Chef Breanna", offMapText = "Travel to Chef Breanna in Redridge Mountains.", x = 0.2268 },
            },
            text = "Accept Redridge Goulash from Chef Breanna.",
            id = "accept-92-redridge-goulash",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-3741-hilary-s-necklace",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 12 },
            },
            requiredLevel = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3741,
            priority = 120,
        },
        {
            priority = 130,
            route = {
                { y = 0.5363, mapID = 1433, label = "Shawn", offMapText = "Travel to Shawn in Redridge Mountains.", x = 0.2932 },
            },
            text = "Accept Hilary's Necklace from Shawn.",
            id = "accept-3741-hilary-s-necklace",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                },
            },
            complete = {
                quest = { id = 3741, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            text = "Collect 1 Hilary's Necklace.",
            route = {
                { y = 0.541, mapID = 1433, label = "Glinting Mud", offMapText = "Travel to Glinting Mud.", x = 0.259 },
            },
            dependsOn = { "accept-3741-hilary-s-necklace" },
            id = "objective-3741-1-glinting-mud",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3741, text = "Glinting Mud", index = 1, count = 1 },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            text = "Turn in Hilary's Necklace to Hilary.",
            route = {
                { y = 0.5363, mapID = 1433, label = "Hilary", offMapText = "Travel to Hilary in Redridge Mountains.", x = 0.2924 },
            },
            dependsOn = { "accept-3741-hilary-s-necklace", "objective-3741-1-glinting-mud" },
            id = "turnin-3741-hilary-s-necklace",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                },
            },
            complete = {
                quest = { id = 3741, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            text = "Turn in The Defias Brotherhood to Gryan Stoutmantle.",
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            dependsOn = { "accept-132-the-defias-brotherhood" },
            id = "turnin-132-the-defias-brotherhood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 132, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 65 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            text = "Accept The Defias Brotherhood from Gryan Stoutmantle.",
            id = "accept-135-the-defias-brotherhood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 135, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 132 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "Turn in Messenger to Stormwind to General Marcus Jonathan.",
            route = {
                { y = 0.7532, mapID = 1453, label = "General Marcus Jonathan", offMapText = "Travel to General Marcus Jonathan in Stormwind City.", x = 0.6397 },
            },
            dependsOn = { "accept-120-messenger-to-stormwind" },
            id = "turnin-120-messenger-to-stormwind",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 120, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            route = {
                { y = 0.7532, mapID = 1453, label = "General Marcus Jonathan", offMapText = "Travel to General Marcus Jonathan in Stormwind City.", x = 0.6397 },
            },
            text = "Accept Messenger to Stormwind from General Marcus Jonathan.",
            id = "accept-121-messenger-to-stormwind",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 121, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 120 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            text = "Turn in The Defias Brotherhood to Master Mathias Shaw.",
            route = {
                { y = 0.5984, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.7578 },
            },
            dependsOn = { "accept-135-the-defias-brotherhood" },
            id = "turnin-135-the-defias-brotherhood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 135, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 132 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            route = {
                { y = 0.5984, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.7578 },
            },
            text = "Accept The Defias Brotherhood from Master Mathias Shaw.",
            id = "accept-141-the-defias-brotherhood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 141, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 135 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            text = "Turn in The Defias Brotherhood to Gryan Stoutmantle.",
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            dependsOn = { "accept-141-the-defias-brotherhood" },
            id = "turnin-141-the-defias-brotherhood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 141, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 135 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            text = "Accept The Defias Brotherhood from Gryan Stoutmantle.",
            id = "accept-142-the-defias-brotherhood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 142, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 141 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 240,
            route = {
                { y = 0.346, mapID = 1436, label = "Harvest Watcher", offMapText = "Travel to Harvest Watcher.", x = 0.534 },
            },
            text = "Kill Harvest Watcher. Keep the required materials for the quest.",
            id = "objective-103-1-harvest-watcher",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                quest = { id = 103, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-142-the-defias-brotherhood" },
            id = "objective-142-1-defias-messenger",
            text = "Collect 1 A Mysterious Message.",
            useClientPin = true,
            complete = {
                questObjective = { id = 142, text = "Defias Messenger", index = 1, count = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            priority = 250,
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 141 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            priority = 260,
            route = {
                { y = 0.8602, mapID = 1436, label = "Captain Grayson", offMapText = "Travel to Captain Grayson in Westfall.", x = 0.3001 },
            },
            text = "Accept Keeper of the Flame from Captain Grayson.",
            id = "accept-103-keeper-of-the-flame",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                quest = { id = 103, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-104-the-coastal-menace",
            kind = "note",
            text = "Reach level 15 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 15 },
            },
            requiredLevel = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 104,
            priority = 270,
        },
        {
            priority = 280,
            route = {
                { y = 0.8602, mapID = 1436, label = "Captain Grayson", offMapText = "Travel to Captain Grayson in Westfall.", x = 0.3001 },
            },
            text = "Accept The Coastal Menace from Captain Grayson.",
            id = "accept-104-the-coastal-menace",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                },
            },
            complete = {
                quest = { id = 104, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            text = "Turn in Keeper of the Flame to Captain Grayson.",
            route = {
                { y = 0.8602, mapID = 1436, label = "Captain Grayson", offMapText = "Travel to Captain Grayson in Westfall.", x = 0.3001 },
            },
            dependsOn = { "accept-103-keeper-of-the-flame" },
            id = "turnin-103-keeper-of-the-flame",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                },
            },
            complete = {
                quest = { id = 103, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            text = "Collect 1 Scale of Old Murk-Eye.",
            route = {
                { y = 0.826, mapID = 1436, label = "Old Murk-Eye", offMapText = "Travel to Old Murk-Eye.", x = 0.324 },
            },
            dependsOn = { "accept-104-the-coastal-menace" },
            id = "objective-104-1-old-murk-eye",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                },
            },
            complete = {
                questObjective = { id = 104, text = "Old Murk-Eye", index = 1, count = 1 },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            text = "Turn in The Coastal Menace to Captain Grayson.",
            route = {
                { y = 0.8602, mapID = 1436, label = "Captain Grayson", offMapText = "Travel to Captain Grayson in Westfall.", x = 0.3001 },
            },
            dependsOn = { "accept-104-the-coastal-menace", "objective-104-1-old-murk-eye" },
            id = "turnin-104-the-coastal-menace",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                },
            },
            complete = {
                quest = { id = 104, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Turn in The Defias Brotherhood to Gryan Stoutmantle.",
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            dependsOn = { "accept-142-the-defias-brotherhood", "objective-142-1-defias-messenger" },
            id = "turnin-142-the-defias-brotherhood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 142, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 141 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            route = {
                { y = 0.475, mapID = 1436, label = "The Defias Traitor", offMapText = "Travel to The Defias Traitor in Westfall.", x = 0.5568 },
            },
            text = "Accept The Defias Brotherhood from The Defias Traitor.",
            id = "accept-155-the-defias-brotherhood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 155, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 142 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-155-reviewed-escort",
            kind = "objective",
            text = "Follow and protect the Defias Traitor until he reveals the entrance to the Deadmines.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 142 },
                    conditions = {},
                },
            },
            complete = {
                quest = { id = 155, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1436, x = 0.4255, y = 0.7156999999999999, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 26,
            dependsOn = { "accept-155-the-defias-brotherhood" },
            priority = 340,
        },
        {
            priority = 350,
            text = "Turn in The Defias Brotherhood to Gryan Stoutmantle.",
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            dependsOn = { "accept-155-the-defias-brotherhood", "objective-155-reviewed-escort" },
            id = "turnin-155-the-defias-brotherhood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 155, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 142 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            route = {
                { y = 0.6, mapID = 1433, label = "Deputy Feldon", offMapText = "Travel to Deputy Feldon in Redridge Mountains.", x = 0.3074 },
            },
            text = "Accept Assessing the Threat from Deputy Feldon.",
            id = "accept-246-assessing-the-threat",
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
                quest = { id = 246, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            text = "Turn in A Free Lunch to Guard Parker.",
            route = {
                { y = 0.7145, mapID = 1433, label = "Guard Parker", offMapText = "Travel to Guard Parker in Redridge Mountains.", x = 0.1527 },
            },
            dependsOn = { "accept-129-a-free-lunch" },
            id = "turnin-129-a-free-lunch",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 129, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            route = {
                { y = 0.7145, mapID = 1433, label = "Guard Parker", offMapText = "Travel to Guard Parker in Redridge Mountains.", x = 0.1527 },
            },
            text = "Accept Visit the Herbalist from Guard Parker.",
            id = "accept-130-visit-the-herbalist",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 130, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 129 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 390,
            text = "Kill 6 Redridge Poacher.",
            route = {
                { y = 0.784, mapID = 1433, label = "Redridge Poacher", offMapText = "Travel to Redridge Poacher.", x = 0.294 },
            },
            dependsOn = { "accept-246-assessing-the-threat" },
            id = "objective-246-2-redridge-poacher",
            kind = "objective",
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
                questObjective = { id = 246, text = "Redridge Poacher", index = 2, count = 6 },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-246-1-redridge-mongrel",
            kind = "objective",
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
            text = "Kill 10 Redridge Mongrel.",
            complete = {
                questObjective = { id = 246, index = 1, text = "Redridge Mongrel", count = 10 },
            },
            route = {
                { mapID = 1433, x = 0.294, y = 0.784, label = "Redridge Mongrel", offMapText = "Travel to Redridge Mongrel." },
            },
            sourceStep = 31,
            priority = 400,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-246-assessing-the-threat" },
        },
        {
            id = "objective-92-3-crisp-spider-meat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 5 Crisp Spider Meat.",
            complete = {
                questObjective = { id = 92, index = 3, text = "Crisp Spider Meat", count = 5 },
            },
            route = {
                { mapID = 1433, x = 0.22, y = 0.74, label = "Crisp Spider Meat", offMapText = "Travel to Crisp Spider Meat." },
            },
            sourceStep = 32,
            priority = 410,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-92-redridge-goulash" },
        },
        {
            priority = 420,
            text = "Turn in Assessing the Threat to Deputy Feldon.",
            route = {
                { y = 0.6, mapID = 1433, label = "Deputy Feldon", offMapText = "Travel to Deputy Feldon in Redridge Mountains.", x = 0.3074 },
            },
            dependsOn = { "accept-246-assessing-the-threat", "objective-246-2-redridge-poacher", "objective-246-1-redridge-mongrel" },
            id = "turnin-246-assessing-the-threat",
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
                quest = { id = 246, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-2360-mathias-and-the-defias",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2360,
            priority = 430,
        },
        {
            priority = 440,
            route = {
                { y = 0.5985, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.7578 },
            },
            text = "Accept Mathias and the Defias from Master Mathias Shaw.",
            id = "accept-2360-mathias-and-the-defias",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2360, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 450,
            route = {
                { y = 0.6036, mapID = 1453, label = "Renzik \"The Shiv\"", offMapText = "Travel to Renzik \"The Shiv\" in Stormwind City.", x = 0.7576 },
            },
            text = "Accept Redridge Rendezvous from Renzik \"The Shiv\".",
            id = "accept-2281-redridge-rendezvous",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2281, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1793-the-tome-of-valor",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1793,
            priority = 460,
        },
        {
            priority = 470,
            route = {
                { mapID = 1453, x = 0.3981, y = 0.298, label = "Duthorian Rall", offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            text = "Accept The Tome of Valor from Duthorian Rall.",
            id = "accept-1793-the-tome-of-valor",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1793, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-1649-the-tome-of-valor",
            instructionOnly = true,
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 480,
            classAction = "loot-starter-before-accept-1649-the-tome-of-valor",
        },
        {
            priority = 490,
            id = "accept-1649-the-tome-of-valor",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            sourceStep = 44,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1649-the-tome-of-valor",
        },
        {
            priority = 500,
            text = "Turn in The Tome of Valor to Duthorian Rall.",
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", offMapText = "Travel to Duthorian Rall in Stormwind City.", x = 0.3981 },
            },
            dependsOn = { "accept-1649-the-tome-of-valor" },
            id = "turnin-1649-the-tome-of-valor",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            complete = {
                quest = { id = 1649, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1716-devourer-of-souls",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1716,
            priority = 510,
        },
        {
            priority = 520,
            route = {
                { mapID = 1453, x = 0.2526, y = 0.7856000000000001, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            text = "Accept Devourer of Souls from Gakin the Darkbinder.",
            id = "accept-1716-devourer-of-souls",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1716, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-3765-the-corruption-abroad",
            kind = "note",
            text = "Reach level 18 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 18 },
            },
            requiredLevel = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3765,
            priority = 530,
        },
        {
            priority = 540,
            route = {
                { y = 0.558, mapID = 1453, label = "Argos Nightwhisper", offMapText = "Travel to Argos Nightwhisper in Stormwind City.", x = 0.214 },
            },
            text = "Accept The Corruption Abroad from Argos Nightwhisper.",
            id = "accept-3765-the-corruption-abroad",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3765, state = "activeOrCompleted" },
            },
            sourceStep = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 550,
            text = "Turn in The Price of Shoes to Smith Argus.",
            route = {
                { y = 0.6555, mapID = 1429, label = "Smith Argus", offMapText = "Travel to Smith Argus in Elwynn Forest.", x = 0.4171 },
            },
            dependsOn = { "accept-118-the-price-of-shoes" },
            id = "turnin-118-the-price-of-shoes",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 118, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            route = {
                { y = 0.6555, mapID = 1429, label = "Smith Argus", offMapText = "Travel to Smith Argus in Elwynn Forest.", x = 0.4171 },
            },
            text = "Accept Return to Verner from Smith Argus.",
            id = "accept-119-return-to-verner",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 119, state = "activeOrCompleted" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 118 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-94-a-watchful-eye",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94,
            priority = 570,
        },
        {
            priority = 580,
            route = {
                { y = 0.6971, mapID = 1429, label = "Theocritus", offMapText = "Travel to Theocritus in Elwynn Forest.", x = 0.6522 },
            },
            text = "Accept A Watchful Eye from Theocritus.",
            id = "accept-94-a-watchful-eye",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94, state = "activeOrCompleted" },
            },
            sourceStep = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            text = "Collect 1 Oslow's Toolbox.",
            route = {
                { y = 0.5467, mapID = 1433, label = "Sunken Chest", offMapText = "Travel to Sunken Chest.", x = 0.4153 },
            },
            dependsOn = { "accept-125-the-lost-tools" },
            id = "objective-125-1-sunken-chest",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 125, text = "Sunken Chest", index = 1, count = 1 },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            text = "Turn in The Lost Tools to Foreman Oslow.",
            route = {
                { y = 0.4864, mapID = 1433, label = "Foreman Oslow", offMapText = "Travel to Foreman Oslow in Redridge Mountains.", x = 0.3214 },
            },
            dependsOn = { "accept-125-the-lost-tools", "objective-125-1-sunken-chest" },
            id = "turnin-125-the-lost-tools",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 125, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            route = {
                { y = 0.4864, mapID = 1433, label = "Foreman Oslow", offMapText = "Travel to Foreman Oslow in Redridge Mountains.", x = 0.3214 },
            },
            text = "Accept The Everstill Bridge from Foreman Oslow.",
            id = "accept-89-the-everstill-bridge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 89, state = "activeOrCompleted" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 125 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 620,
            text = "Turn in Return to Verner to Verner Osgood.",
            route = {
                { y = 0.4727, mapID = 1433, label = "Verner Osgood", offMapText = "Travel to Verner Osgood in Redridge Mountains.", x = 0.3097 },
            },
            dependsOn = { "accept-119-return-to-verner" },
            id = "turnin-119-return-to-verner",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 119, state = "completed" },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 118 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            route = {
                { y = 0.4727, mapID = 1433, label = "Verner Osgood", offMapText = "Travel to Verner Osgood in Redridge Mountains.", x = 0.3097 },
            },
            text = "Accept Underbelly Scales from Verner Osgood.",
            id = "accept-122-underbelly-scales",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 122, state = "activeOrCompleted" },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 119 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 640,
            route = {
                { y = 0.4727, mapID = 1433, label = "Verner Osgood", offMapText = "Travel to Verner Osgood in Redridge Mountains.", x = 0.3097 },
            },
            text = "Accept A Baying of Gnolls from Verner Osgood.",
            id = "accept-124-a-baying-of-gnolls",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 124, state = "activeOrCompleted" },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 119 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-92-2-tough-condor-meat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 5 Tough Condor Meat.",
            complete = {
                questObjective = { id = 92, index = 2, text = "Tough Condor Meat", count = 5 },
            },
            route = {
                { mapID = 1433, x = 0.452, y = 0.7759999999999999, label = "Tough Condor Meat", offMapText = "Travel to Tough Condor Meat." },
            },
            sourceStep = 60,
            priority = 650,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-92-redridge-goulash" },
        },
        {
            id = "objective-122-1-underbelly-whelp-scale",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 6 Underbelly Whelp Scale.",
            complete = {
                questObjective = { id = 122, index = 1, text = "Underbelly Whelp Scale", count = 6 },
            },
            route = {
                { mapID = 1433, x = 0.364, y = 0.746, label = "Underbelly Whelp Scale", offMapText = "Travel to Underbelly Whelp Scale." },
            },
            sourceStep = 61,
            priority = 660,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 119 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-122-underbelly-scales" },
        },
        {
            id = "objective-92-1-great-goretusk-snout",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 5 Great Goretusk Snout.",
            complete = {
                questObjective = { id = 92, index = 1, text = "Great Goretusk Snout", count = 5 },
            },
            route = {
                { mapID = 1433, x = 0.304, y = 0.7040000000000001, label = "Great Goretusk Snout", offMapText = "Travel to Great Goretusk Snout." },
            },
            sourceStep = 62,
            priority = 670,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-92-redridge-goulash" },
        },
        {
            priority = 680,
            text = "Turn in Underbelly Scales to Verner Osgood.",
            route = {
                { y = 0.4727, mapID = 1433, label = "Verner Osgood", offMapText = "Travel to Verner Osgood in Redridge Mountains.", x = 0.3097 },
            },
            dependsOn = { "accept-122-underbelly-scales", "objective-122-1-underbelly-whelp-scale" },
            id = "turnin-122-underbelly-scales",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 122, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 119 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            text = "Turn in Messenger to Stormwind to Magistrate Solomon.",
            route = {
                { y = 0.4445, mapID = 1433, label = "Magistrate Solomon", offMapText = "Travel to Magistrate Solomon in Redridge Mountains.", x = 0.2999 },
            },
            dependsOn = { "accept-121-messenger-to-stormwind" },
            id = "turnin-121-messenger-to-stormwind",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 121, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 120 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 700,
            text = "Turn in Redridge Goulash to Chef Breanna.",
            route = {
                { y = 0.4384, mapID = 1433, label = "Chef Breanna", offMapText = "Travel to Chef Breanna in Redridge Mountains.", x = 0.2268 },
            },
            dependsOn = {
                "accept-92-redridge-goulash",
                "objective-92-3-crisp-spider-meat",
                "objective-92-2-tough-condor-meat",
                "objective-92-1-great-goretusk-snout",
            },
            id = "turnin-92-redridge-goulash",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92, state = "completed" },
            },
            sourceStep = 66,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            text = "Turn in Visit the Herbalist to Martie Jainrose.",
            route = {
                { y = 0.4633, mapID = 1433, label = "Martie Jainrose", offMapText = "Travel to Martie Jainrose in Redridge Mountains.", x = 0.2186 },
            },
            dependsOn = { "accept-130-visit-the-herbalist" },
            id = "turnin-130-visit-the-herbalist",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 130, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 129 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 720,
            route = {
                { y = 0.4633, mapID = 1433, label = "Martie Jainrose", offMapText = "Travel to Martie Jainrose in Redridge Mountains.", x = 0.2186 },
            },
            text = "Accept Delivering Daffodils from Martie Jainrose.",
            id = "accept-131-delivering-daffodils",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 131, state = "activeOrCompleted" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 130 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 730,
            text = "Turn in Delivering Daffodils to Darcy.",
            route = {
                { y = 0.4434, mapID = 1433, label = "Darcy", offMapText = "Travel to Darcy in Redridge Mountains.", x = 0.2675 },
            },
            dependsOn = { "accept-131-delivering-daffodils" },
            id = "turnin-131-delivering-daffodils",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 131, state = "completed" },
            },
            sourceStep = 68,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 130 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 740,
            text = "Collect 5 Iron Pike.",
            route = {
                { y = 0.384, mapID = 1433, label = "Redridge Mystic", offMapText = "Travel to Redridge Mystic.", x = 0.212 },
            },
            dependsOn = { "accept-89-the-everstill-bridge" },
            id = "objective-89-1-redridge-mystic",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 89, text = "Redridge Mystic", index = 1, count = 5 },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 125 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            text = "Collect 5 Iron Rivet.",
            route = {
                { y = 0.384, mapID = 1433, label = "Iron Rivet", offMapText = "Travel to Iron Rivet.", x = 0.212 },
            },
            dependsOn = { "accept-89-the-everstill-bridge" },
            id = "objective-89-2-iron-rivet",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 89, text = "Iron Rivet", index = 2, count = 5 },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 125 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-124-2-redridge-mystic",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 8 Redridge Mystic.",
            complete = {
                questObjective = { id = 124, index = 2, text = "Redridge Mystic", count = 8 },
            },
            route = {
                { mapID = 1433, x = 0.212, y = 0.384, label = "Redridge Mystic", offMapText = "Travel to Redridge Mystic." },
            },
            sourceStep = 70,
            priority = 760,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 119 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-124-a-baying-of-gnolls" },
        },
        {
            id = "objective-124-1-redridge-brute",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 10 Redridge Brute.",
            complete = {
                questObjective = { id = 124, index = 1, text = "Redridge Brute", count = 10 },
            },
            route = {
                { mapID = 1433, x = 0.212, y = 0.384, label = "Redridge Brute", offMapText = "Travel to Redridge Brute." },
            },
            sourceStep = 70,
            priority = 770,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 119 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-124-a-baying-of-gnolls" },
        },
        {
            priority = 780,
            text = "Turn in Redridge Rendezvous to Lucius.",
            route = {
                { y = 0.5204, mapID = 1433, label = "Lucius", offMapText = "Travel to Lucius in Redridge Mountains.", x = 0.2806 },
            },
            dependsOn = { "accept-2281-redridge-rendezvous" },
            id = "turnin-2281-redridge-rendezvous",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2281, state = "completed" },
            },
            sourceStep = 71,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 790,
            route = {
                { y = 0.5204, mapID = 1433, label = "Lucius", offMapText = "Travel to Lucius in Redridge Mountains.", x = 0.2806 },
            },
            text = "Accept Alther's Mill from Lucius.",
            id = "accept-2282-alther-s-mill",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2282, state = "activeOrCompleted" },
            },
            sourceStep = 71,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2281 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-2282-1-token-of-thievery",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Token of Thievery.",
            complete = {
                questObjective = { id = 2282, index = 1, text = "Token of Thievery", count = 1 },
            },
            route = {
                { mapID = 1433, x = 0.5204, y = 0.44689999999999996, label = "Token of Thievery", offMapText = "Travel to Token of Thievery." },
            },
            sourceStep = 73,
            priority = 800,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2281 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2282-alther-s-mill" },
        },
        {
            priority = 810,
            text = "Turn in A Baying of Gnolls to Verner Osgood.",
            route = {
                { y = 0.4727, mapID = 1433, label = "Verner Osgood", offMapText = "Travel to Verner Osgood in Redridge Mountains.", x = 0.3097 },
            },
            dependsOn = { "accept-124-a-baying-of-gnolls", "objective-124-2-redridge-mystic", "objective-124-1-redridge-brute" },
            id = "turnin-124-a-baying-of-gnolls",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 124, state = "completed" },
            },
            sourceStep = 74,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 119 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 820,
            text = "Turn in The Everstill Bridge to Foreman Oslow.",
            route = {
                { y = 0.4864, mapID = 1433, label = "Foreman Oslow", offMapText = "Travel to Foreman Oslow in Redridge Mountains.", x = 0.3214 },
            },
            dependsOn = { "accept-89-the-everstill-bridge", "objective-89-1-redridge-mystic", "objective-89-2-iron-rivet" },
            id = "turnin-89-the-everstill-bridge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 89, state = "completed" },
            },
            sourceStep = 75,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 125 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 830,
            text = "Turn in Alther's Mill to Lucius.",
            route = {
                { y = 0.5204, mapID = 1433, label = "Lucius", offMapText = "Travel to Lucius in Redridge Mountains.", x = 0.2806 },
            },
            dependsOn = { "accept-2282-alther-s-mill", "objective-2282-1-token-of-thievery" },
            id = "turnin-2282-alther-s-mill",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 2282, state = "completed" },
            },
            sourceStep = 76,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2281 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-373-the-unsent-letter",
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
            text = "Loot An Unsent Letter from Edwin Vancleef. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "An Unsent Letter", minCount = 1 },
                    },
                    {
                        quest = { id = 373, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 840,
        },
        {
            priority = 850,
            text = "Use the An Unsent Letter to accept The Unsent Letter.",
            id = "accept-373-the-unsent-letter",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 373, state = "activeOrCompleted" },
            },
            sourceStep = 90,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 860,
            text = "Turn in The Unsent Letter to Baros Alexston.",
            route = {
                { y = 0.3028, mapID = 1453, label = "Baros Alexston", offMapText = "Travel to Baros Alexston in Stormwind City.", x = 0.4919 },
            },
            dependsOn = { "accept-373-the-unsent-letter" },
            id = "turnin-373-the-unsent-letter",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 373, state = "completed" },
            },
            sourceStep = 91,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-98407-show-of-force",
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
            checkpointQuest = 98407,
            priority = 870,
        },
        {
            priority = 880,
            route = {
                { y = 0.6, mapID = 1433, label = "Deputy Feldon", offMapText = "Travel to Deputy Feldon.", x = 0.308 },
            },
            text = "Accept Show of Force from Deputy Feldon.",
            id = "woven-accept-98407-show-of-force",
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
                quest = { id = 98407, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 890,
            route = {
                { y = 0.812, mapID = 1433, label = "Redridge Thrasher", offMapText = "Travel to Redridge Thrasher.", x = 0.3 },
            },
            text = "Show of Force: collect 5 Spiked Collars from Redridge Thrashers.",
            id = "woven-objective-98407-show-of-force",
            kind = "objective",
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
                quest = { id = 98407, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98407-show-of-force" },
        },
        {
            priority = 900,
            route = {
                { y = 0.6, mapID = 1433, label = "Deputy Feldon", offMapText = "Travel to Deputy Feldon.", x = 0.308 },
            },
            text = "Turn in Show of Force to Deputy Feldon.",
            id = "woven-turnin-98407-show-of-force",
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
                quest = { id = 98407, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98407-show-of-force", "woven-objective-98407-show-of-force" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
