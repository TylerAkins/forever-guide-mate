local _, ns = ...

ns:RegisterGuide({
    revision = 8,
    title = "Zephras Isle",
    category = "Leveling Quest Guides",
    id = "leveling-zephras-isle",
    conditions = {
        all = {
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
            route = {
                { y = 0.234, mapID = 2521, label = "Ailee Farheart", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            priority = 10,
            id = "accept-coming-of-age",
            conditions = {
                all = {
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-coming-of-age",
        },
        {
            priority = 20,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "accept-coming-of-age" },
            id = "turnin-coming-of-age",
            conditions = {
                all = {
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-coming-of-age",
        },
        {
            priority = 30,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "turnin-coming-of-age" },
            id = "accept-harmony-in-balance",
            kind = "accept",
            text = "Accept Harmony in Balance from Rorian the Dayseeker.",
            complete = {
                quest = { id = 92461, state = "activeOrCompleted" },
            },
            conditions = {
                all = {
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92460 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Infestation Investigation from Elatrell Featherlight.",
            priority = 40,
            route = {
                { y = 0.248, mapID = 2521, label = "Elatrell Featherlight", offMapText = "Travel to Zephras Isle.", x = 0.434 },
            },
            dependsOn = { "turnin-coming-of-age" },
            id = "accept-infestation-investigation",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92462, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92460 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 50,
            route = {
                { y = 0.256, mapID = 2521, label = "Juvenile Vuldren", offMapText = "Travel to Zephras Isle.", x = 0.432 },
            },
            dependsOn = { "accept-harmony-in-balance" },
            id = "objective-harmony-in-balance",
            conditions = {
                all = {
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-92461-harmony-in-balance",
        },
        {
            text = "Slay 8 Pesky Cirrusflies in Thendal Grove.",
            priority = 60,
            route = {
                { y = 0.256, mapID = 2521, label = "Pesky Cirrusfly", offMapText = "Travel to Zephras Isle.", x = 0.45 },
            },
            dependsOn = { "accept-infestation-investigation" },
            id = "objective-infestation-investigation",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92462, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92460 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Infestation Investigation to Elatrell Featherlight.",
            priority = 70,
            route = {
                { y = 0.248, mapID = 2521, label = "Elatrell Featherlight", offMapText = "Travel to Zephras Isle.", x = 0.434 },
            },
            dependsOn = { "accept-infestation-investigation", "objective-infestation-investigation" },
            id = "turnin-infestation-investigation",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92462, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92460 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-the-cirrusfly-queen",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                race = { 95, 96 },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92463,
            priority = 80,
        },
        {
            text = "Accept The Cirrusfly Queen from Elatrell Featherlight.",
            priority = 90,
            route = {
                { y = 0.248, mapID = 2521, label = "Elatrell Featherlight", offMapText = "Travel to Zephras Isle.", x = 0.434 },
            },
            dependsOn = { "turnin-infestation-investigation" },
            id = "accept-the-cirrusfly-queen",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92463, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92462 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Anchors of Zephras from Halaan Hawk-Eye.",
            priority = 100,
            route = {
                { y = 0.24, mapID = 2521, label = "Halaan Hawk-Eye", offMapText = "Travel to Zephras Isle.", x = 0.438 },
            },
            dependsOn = { "accept-the-cirrusfly-queen" },
            id = "accept-the-anchors-of-zephras",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94414, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            text = "Ask Halaan Hawk-Eye to lend you his gift, then view the Anchor Pylon.",
            dependsOn = { "accept-the-anchors-of-zephras" },
            id = "gossip-the-anchors-of-zephras",
            kind = "gossip",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94414, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
        },
        {
            text = "Turn in The Anchors of Zephras to Halaan Hawk-Eye.",
            priority = 120,
            route = {
                { y = 0.24, mapID = 2521, label = "Halaan Hawk-Eye", offMapText = "Travel to Zephras Isle.", x = 0.438 },
            },
            dependsOn = { "accept-the-anchors-of-zephras", "gossip-the-anchors-of-zephras" },
            id = "turnin-the-anchors-of-zephras",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94414, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Falling With Style from Myriaal Mistwake.",
            priority = 130,
            route = {
                { y = 0.24, mapID = 2521, label = "Myriaal Mistwake", offMapText = "Travel to Zephras Isle.", x = 0.436 },
            },
            dependsOn = { "turnin-the-anchors-of-zephras" },
            id = "accept-falling-with-style",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92474, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 140,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "accept-harmony-in-balance", "objective-harmony-in-balance" },
            id = "turnin-92461-harmony-in-balance",
            kind = "turnin",
            text = "Turn in Harmony in Balance to Rorian the Dayseeker.",
            complete = {
                quest = { id = 92461, state = "completed" },
            },
            conditions = {
                all = {
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92460 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Jump from the Thendal Grove watchtower, use Walk on Air, and land near Rorian the Dayseeker.",
            priority = 150,
            route = {
                { y = 0.24, mapID = 2521, label = "Thendal Grove watchtower ledge", offMapText = "Travel to Zephras Isle.", x = 0.436 },
            },
            dependsOn = { "accept-falling-with-style" },
            id = "objective-falling-with-style",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92474, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Falling With Style to Rorian the Dayseeker.",
            priority = 160,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "accept-falling-with-style", "objective-falling-with-style" },
            id = "turnin-falling-with-style",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92474, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Elemental Unrest from Rorian the Dayseeker.",
            priority = 170,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-elemental-unrest",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92464, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-a-student-of-the-arcane",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92481,
            priority = 180,
        },
        {
            text = "Accept A Student of the Arcane from Rorian the Dayseeker.",
            priority = 190,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-a-student-of-the-arcane",
            kind = "accept",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92481, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-at-home-in-the-shadows",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92483,
            priority = 200,
        },
        {
            text = "Accept At Home in the Shadows from Rorian the Dayseeker.",
            priority = 210,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-at-home-in-the-shadows",
            kind = "accept",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92483, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-the-way-of-the-hunter",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92482,
            priority = 220,
        },
        {
            text = "Accept The Way of the Hunter from Rorian the Dayseeker.",
            priority = 230,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-the-way-of-the-hunter",
            kind = "accept",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92482, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-embracing-the-elements",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92484,
            priority = 240,
        },
        {
            text = "Accept Embracing the Elements from Rorian the Dayseeker.",
            priority = 250,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-embracing-the-elements",
            kind = "accept",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92484, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-the-warriors-path",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92532,
            priority = 260,
        },
        {
            text = "Accept The Warrior's Path from Rorian the Dayseeker.",
            priority = 270,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-the-warriors-path",
            kind = "accept",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92532, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-a-student-of-nature",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92485,
            priority = 280,
        },
        {
            text = "Accept A Student of Nature from Rorian the Dayseeker.",
            priority = 290,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-a-student-of-nature",
            kind = "accept",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92485, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Read Folded Parchment in your bags. Read the Folded Parchment then speak with Xyton Silverwind in Thendal Grove.",
            priority = 300,
            route = {
                { y = 0.234, mapID = 2521, label = "Xyton Silverwind", offMapText = "Travel to Zephras Isle.", x = 0.416 },
            },
            dependsOn = { "accept-a-student-of-nature" },
            id = "turnin-a-student-of-nature",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92485, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            dependsOn = { "accept-a-student-of-the-arcane" },
            id = "objective-92481-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-92481-reviewed-mechanics",
        },
        {
            text = "Examine the Glowing Recall Crystal, then speak with Dorii Brightwhisper in Thendal Grove.",
            priority = 320,
            route = {
                { y = 0.236, mapID = 2521, label = "Dorii Brightwhisper", offMapText = "Travel to Zephras Isle.", x = 0.416 },
            },
            dependsOn = { "accept-a-student-of-the-arcane", "objective-92481-reviewed-mechanics" },
            id = "turnin-a-student-of-the-arcane",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92481, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            dependsOn = { "accept-embracing-the-elements" },
            id = "objective-92484-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-92484-reviewed-mechanics",
        },
        {
            text = "Examine the Humming Recall Crystal then speak with Windshaper Boro in Thendal Grove.",
            priority = 340,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = { "accept-embracing-the-elements", "objective-92484-reviewed-mechanics" },
            id = "turnin-embracing-the-elements",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92484, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-call-of-earth",
            kind = "note",
            text = "Reach level 3 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 3 },
            },
            requiredLevel = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92466,
            alternativeQuests = { 1516, 1519 },
            priority = 350,
        },
        {
            priority = 360,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = { "accept-elemental-unrest" },
            id = "accept-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-call-of-earth",
        },
        {
            text = "Read Scribbled Note in your bags. Read the Scribbled Note and then speak with Tai'ree Farsight in Thendal Grove.",
            priority = 370,
            route = {
                { y = 0.236, mapID = 2521, label = "Tai'ree Farsight", offMapText = "Travel to Zephras Isle.", x = 0.424 },
            },
            dependsOn = { "accept-the-way-of-the-hunter" },
            id = "turnin-the-way-of-the-hunter",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92482, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-the-gift-of-skysight",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92598,
            priority = 380,
        },
        {
            text = "Accept The Gift of Skysight from Ventaari Brightwish.",
            priority = 390,
            route = {
                { y = 0.244, mapID = 2521, label = "Ventaari Brightwish", offMapText = "Travel to Zephras Isle.", x = 0.426 },
            },
            dependsOn = { "accept-elemental-unrest" },
            id = "accept-the-gift-of-skysight",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92598, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Harvesting Windstones from Dalia the Collector.",
            priority = 400,
            route = {
                { y = 0.24, mapID = 2521, label = "Dalia the Collector", offMapText = "Travel to Zephras Isle.", x = 0.432 },
            },
            dependsOn = { "accept-elemental-unrest" },
            id = "accept-harvesting-windstones",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93552, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-reading-the-ley-lines",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92597,
            priority = 410,
        },
        {
            text = "Accept Reading the Ley Lines from Falorne Fallwind.",
            priority = 420,
            route = {
                { y = 0.248, mapID = 2521, label = "Falorne Fallwind", offMapText = "Travel to Zephras Isle.", x = 0.432 },
            },
            dependsOn = { "accept-harvesting-windstones" },
            id = "accept-reading-the-ley-lines",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92597, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 15 Windstone Clusters from Raw Windstones scattered around Thendal Grove.",
            priority = 430,
            route = {
                { y = 0.248, mapID = 2521, label = "Raw Windstones around Thendal Grove", offMapText = "Travel to Zephras Isle.", x = 0.434 },
            },
            dependsOn = { "accept-harvesting-windstones" },
            id = "objective-harvesting-windstones",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93552, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Destroy the Cirrusfly Queen in Thendal Grove.",
            priority = 440,
            route = {
                { y = 0.282, mapID = 2521, label = "Cirrusfly Queen", offMapText = "Travel to Zephras Isle.", x = 0.484 },
            },
            dependsOn = { "accept-the-cirrusfly-queen" },
            id = "objective-the-cirrusfly-queen",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92463, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92462 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak to Yala Windwatcher in Thendal Grove.",
            priority = 450,
            route = {
                { y = 0.218, mapID = 2521, label = "Yala Windwatcher", offMapText = "Travel to Zephras Isle.", x = 0.472 },
            },
            dependsOn = { "accept-elemental-unrest" },
            id = "turnin-elemental-unrest",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92464, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Agitators from Yala Windwatcher.",
            priority = 460,
            route = {
                { y = 0.218, mapID = 2521, label = "Yala Windwatcher", offMapText = "Travel to Zephras Isle.", x = 0.472 },
            },
            dependsOn = { "turnin-elemental-unrest" },
            id = "accept-agitators",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92465, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 6 Roiling Winds in Thendal Grove.",
            priority = 470,
            route = {
                { mapID = 2521, x = 0.4447, y = 0.2147, label = "Roiling Winds", offMapText = "Travel to Roiling Winds." },
            },
            dependsOn = { "accept-agitators" },
            id = "objective-92465-authored-roiling-winds",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92465, text = "Roiling Winds", count = 6 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 7 Al'Aketh Converts in Thendal Grove.",
            priority = 480,
            route = {
                { mapID = 2521, x = 0.45289999999999997, y = 0.1935, label = "Al'Aketh Convert", offMapText = "Travel to Al'Aketh Convert." },
            },
            dependsOn = { "accept-agitators" },
            id = "objective-92465-authored-alaketh-convert",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92465, text = "Al'Aketh Convert", count = 7 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Use your Read Ley Line racial at the standing stones northeast of Thendal Village.",
            priority = 490,
            route = {
                { y = 0.218, mapID = 2521, label = "Standing stones northeast of Thendal Village", offMapText = "Travel to Zephras Isle.", x = 0.472 },
            },
            dependsOn = { "accept-reading-the-ley-lines" },
            id = "objective-reading-the-ley-lines",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92597, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Use your Skysight racial at the Elemental Convergence by the standing stones northeast of Thendal Village.",
            priority = 500,
            route = {
                { y = 0.218, mapID = 2521, label = "Elemental Convergence at the standing stones", offMapText = "Travel to Zephras Isle.", x = 0.472 },
            },
            dependsOn = { "accept-the-gift-of-skysight" },
            id = "objective-the-gift-of-skysight",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92598, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            route = {
                { y = 0.18, mapID = 2521, label = "Al'Aketh Converts at the standing stones", offMapText = "Travel to Zephras Isle.", x = 0.464 },
            },
            dependsOn = { "accept-call-of-earth" },
            id = "objective-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-call-of-earth",
        },
        {
            text = "Turn in Agitators to Yala Windwatcher.",
            priority = 520,
            route = {
                { y = 0.218, mapID = 2521, label = "Yala Windwatcher", offMapText = "Travel to Zephras Isle.", x = 0.472 },
            },
            dependsOn = { "accept-agitators", "objective-92465-authored-roiling-winds", "objective-92465-authored-alaketh-convert" },
            id = "turnin-agitators",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92465, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-return-to-rorian",
            kind = "note",
            text = "Reach level 3 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                race = { 95, 96 },
            },
            complete = {
                level = { min = 3 },
            },
            requiredLevel = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92469,
            priority = 530,
        },
        {
            text = "Accept Return to Rorian from Yala Windwatcher.",
            priority = 540,
            route = {
                { y = 0.218, mapID = 2521, label = "Yala Windwatcher", offMapText = "Travel to Zephras Isle.", x = 0.472 },
            },
            dependsOn = { "turnin-agitators" },
            id = "accept-return-to-rorian",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92469, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92465 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Harvesting Windstones to Dalia the Collector.",
            priority = 550,
            route = {
                { y = 0.24, mapID = 2521, label = "Dalia the Collector", offMapText = "Travel to Zephras Isle.", x = 0.432 },
            },
            dependsOn = { "accept-harvesting-windstones", "objective-harvesting-windstones" },
            id = "turnin-harvesting-windstones",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93552, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Reading the Ley Lines to Falorne Fallwind.",
            priority = 560,
            route = {
                { y = 0.248, mapID = 2521, label = "Falorne Fallwind", offMapText = "Travel to Zephras Isle.", x = 0.432 },
            },
            dependsOn = { "accept-reading-the-ley-lines", "objective-reading-the-ley-lines" },
            id = "turnin-reading-the-ley-lines",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92597, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Read Simple Note in your bags. Read the Simple Note then speak with Akeri Duskblade within the watchtower in Thendal Grove.",
            priority = 570,
            route = {
                { y = 0.242, mapID = 2521, label = "Akeri Duskblade", offMapText = "Travel to Zephras Isle.", x = 0.436 },
            },
            dependsOn = { "accept-at-home-in-the-shadows" },
            id = "turnin-at-home-in-the-shadows",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92483, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Cirrusfly Queen to Elatrell Featherlight.",
            priority = 580,
            route = {
                { y = 0.248, mapID = 2521, label = "Elatrell Featherlight", offMapText = "Travel to Zephras Isle.", x = 0.434 },
            },
            dependsOn = { "accept-the-cirrusfly-queen", "objective-the-cirrusfly-queen" },
            id = "turnin-the-cirrusfly-queen",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92463, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92462 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Read Crumpled Note you've been given in your bags. Read the Crumpled Note you've been given, then seek out Blademaster Ren inside the Thendal Village watchtower.",
            priority = 590,
            route = {
                { y = 0.242, mapID = 2521, label = "Blademaster Ren", offMapText = "Travel to Zephras Isle.", x = 0.436 },
            },
            dependsOn = { "accept-the-warriors-path" },
            id = "turnin-the-warriors-path",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92532, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Gift of Skysight to Ventaari Brightwish.",
            priority = 600,
            route = {
                { y = 0.244, mapID = 2521, label = "Ventaari Brightwish", offMapText = "Travel to Zephras Isle.", x = 0.426 },
            },
            dependsOn = { "accept-the-gift-of-skysight", "objective-the-gift-of-skysight" },
            id = "turnin-the-gift-of-skysight",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92598, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Bring word of the Al'Aketh to Rorian the Dayseeker in Thendal Grove.",
            priority = 610,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "accept-return-to-rorian" },
            id = "turnin-return-to-rorian",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92469, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92465 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-aetheen-of-the-gales",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                race = { 95, 96 },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92471,
            priority = 620,
        },
        {
            text = "Accept Aetheen of the Gales from Rorian the Dayseeker.",
            priority = 630,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "turnin-return-to-rorian" },
            id = "accept-aetheen-of-the-gales",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92471, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Aetheen of the Gales in Thendal Grove.",
            priority = 640,
            route = {
                { y = 0.236, mapID = 2521, label = "Aetheen of the Gales", offMapText = "Travel to Zephras Isle.", x = 0.426 },
            },
            dependsOn = { "accept-aetheen-of-the-gales" },
            id = "turnin-aetheen-of-the-gales",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92471, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Foul Matriarch from Aetheen of the Gales.",
            priority = 650,
            route = {
                { y = 0.236, mapID = 2521, label = "Aetheen of the Gales", offMapText = "Travel to Zephras Isle.", x = 0.426 },
            },
            dependsOn = { "turnin-aetheen-of-the-gales" },
            id = "accept-foul-matriarch",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92470, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92471 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = { "accept-call-of-earth", "objective-call-of-earth" },
            id = "turnin-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-call-of-earth",
        },
        {
            priority = 670,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = { "turnin-call-of-earth" },
            id = "accept-call-of-earth-92467",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-call-of-earth-92467",
        },
        {
            priority = 680,
            route = {
                { y = 0.24, mapID = 2521, label = "Minor Manifestation of Earth", offMapText = "Travel to Zephras Isle.", x = 0.496 },
            },
            id = "objective-92467-earth-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-call-of-earth-92467" },
            classAction = "objective-92467-earth-sapta",
        },
        {
            priority = 690,
            route = {
                { y = 0.24, mapID = 2521, label = "Minor Manifestation of Earth", offMapText = "Travel to Zephras Isle.", x = 0.496 },
            },
            dependsOn = { "accept-call-of-earth-92467", "objective-92467-earth-sapta" },
            id = "turnin-call-of-earth-92467",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-call-of-earth-92467",
        },
        {
            priority = 700,
            route = {
                { y = 0.24, mapID = 2521, label = "Minor Manifestation of Earth", offMapText = "Travel to Zephras Isle.", x = 0.496 },
            },
            dependsOn = { "turnin-call-of-earth-92467" },
            id = "accept-call-of-earth-92468",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-call-of-earth-92468",
        },
        {
            priority = 710,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = { "accept-call-of-earth-92468" },
            id = "turnin-call-of-earth-92468",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-call-of-earth-92468",
        },
        {
            text = "Accept Aggressive Encroachment from Valreaa Valewind.",
            priority = 720,
            route = {
                { y = 0.25, mapID = 2521, label = "Valreaa Valewind", offMapText = "Travel to Zephras Isle.", x = 0.424 },
            },
            dependsOn = { "turnin-aetheen-of-the-gales" },
            id = "accept-aggressive-encroachment",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92473, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92471 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 6 Scrawny Ursera Claws from Scrawny Ursera in Thendal Grove.",
            priority = 730,
            route = {
                { y = 0.246, mapID = 2521, label = "Scrawny Ursera", offMapText = "Travel to Zephras Isle.", x = 0.37 },
            },
            dependsOn = { "accept-aggressive-encroachment" },
            id = "objective-aggressive-encroachment",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92473, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92471 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 8 Ursera Scavengers in Thendal Grove.",
            priority = 740,
            route = {
                { mapID = 2521, x = 0.34950000000000003, y = 0.2489, label = "Ursera Scavenger", offMapText = "Travel to Ursera Scavenger." },
            },
            dependsOn = { "accept-foul-matriarch" },
            id = "objective-92470-authored-ursera-scavenger",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92470, text = "Ursera Scavenger", count = 8 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92471 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill Urs'anah, the den mother, and collect her head.",
            priority = 750,
            route = {
                { mapID = 2521, x = 0.3565, y = 0.2607, label = "Urs'anah", offMapText = "Travel to Urs'anah." },
            },
            dependsOn = { "accept-foul-matriarch" },
            id = "objective-92470-authored-ursanah",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92470, text = "Urs'anah" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92471 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Foul Matriarch to Aetheen of the Gales.",
            priority = 760,
            route = {
                { y = 0.236, mapID = 2521, label = "Aetheen of the Gales", offMapText = "Travel to Zephras Isle.", x = 0.426 },
            },
            dependsOn = { "accept-foul-matriarch", "objective-92470-authored-ursera-scavenger", "objective-92470-authored-ursanah" },
            id = "turnin-foul-matriarch",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92470, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92471 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Next Step from Aetheen of the Gales.",
            priority = 770,
            route = {
                { y = 0.236, mapID = 2521, label = "Aetheen of the Gales", offMapText = "Travel to Zephras Isle.", x = 0.426 },
            },
            dependsOn = { "turnin-foul-matriarch" },
            id = "accept-the-next-step",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92472, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92470 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Adventurer from Aetheen of the Gales.",
            priority = 780,
            route = {
                { y = 0.236, mapID = 2521, label = "Aetheen of the Gales", offMapText = "Travel to Zephras Isle.", x = 0.426 },
            },
            dependsOn = { "turnin-foul-matriarch" },
            id = "accept-the-adventurer",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96638, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92470 },
                    conditions = {},
                },
            },
            alternativeQuests = { 96627, 96628, 96630, 96652, 96656, 96659 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Aggressive Encroachment to Valreaa Valewind.",
            priority = 790,
            route = {
                { y = 0.25, mapID = 2521, label = "Valreaa Valewind", offMapText = "Travel to Zephras Isle.", x = 0.424 },
            },
            dependsOn = { "accept-aggressive-encroachment", "objective-aggressive-encroachment" },
            id = "turnin-aggressive-encroachment",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92473, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92471 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Al'Aketh Thugs from Hanaa Nightwind.",
            priority = 800,
            route = {
                { y = 0.302, mapID = 2521, label = "Hanaa Nightwind", offMapText = "Travel to Zephras Isle.", x = 0.382 },
            },
            dependsOn = { "accept-the-adventurer", "accept-the-next-step" },
            id = "accept-alaketh-thugs",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92544, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 6 Al'Aketh Brutes in Thendal Grove.",
            priority = 810,
            route = {
                { mapID = 2521, x = 0.3506, y = 0.33659999999999995, label = "Al'Aketh Brute", offMapText = "Travel to Al'Aketh Brute." },
            },
            dependsOn = { "accept-alaketh-thugs" },
            id = "objective-92544-authored-alaketh-brute",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92544, text = "Al'Aketh Brute", count = 6 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 4 Al'Aketh Neophytes in Thendal Grove.",
            priority = 820,
            route = {
                { mapID = 2521, x = 0.3505, y = 0.3371, label = "Al'Aketh Neophyte", offMapText = "Travel to Al'Aketh Neophyte." },
            },
            dependsOn = { "accept-alaketh-thugs" },
            id = "objective-92544-authored-alaketh-neophyte",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92544, text = "Al'Aketh Neophyte", count = 4 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay Malduko Cloudcrush in Thendal Grove.",
            priority = 830,
            route = {
                { mapID = 2521, x = 0.3605, y = 0.3353, label = "Malduko Cloudcrush", offMapText = "Travel to Malduko Cloudcrush." },
            },
            dependsOn = { "accept-alaketh-thugs" },
            id = "objective-92544-authored-malduko-cloudcrush",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92544, text = "Malduko Cloudcrush" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Al'Aketh Thugs to Hanaa Nightwind.",
            priority = 840,
            route = {
                { y = 0.302, mapID = 2521, label = "Hanaa Nightwind", offMapText = "Travel to Zephras Isle.", x = 0.382 },
            },
            dependsOn = {
                "accept-alaketh-thugs",
                "objective-92544-authored-alaketh-brute",
                "objective-92544-authored-alaketh-neophyte",
                "objective-92544-authored-malduko-cloudcrush",
            },
            id = "turnin-alaketh-thugs",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92544, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Report to Constable Aonda in Shen'dar Village.",
            priority = 850,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = { "accept-the-next-step" },
            id = "turnin-the-next-step",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92472, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92470 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-welcome-to-shendar-village-93461",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = 95 },
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
            checkpointQuest = 93461,
            priority = 860,
        },
        {
            text = "Accept Welcome to Shen'dar Village from Constable Aonda.",
            priority = 870,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = { "turnin-the-next-step" },
            id = "accept-welcome-to-shendar-village-93461",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93461, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-welcome-to-shendar-village",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 92514,
            priority = 880,
        },
        {
            text = "Accept Welcome to Shen'dar Village from Constable Aonda.",
            priority = 890,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = { "turnin-the-next-step" },
            id = "accept-welcome-to-shendar-village",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92514, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Rathiril Sunlance in Shen'dar Village and follow his welcome dialogue.",
            priority = 900,
            route = {
                { mapID = 2521, x = 0.4499, y = 0.4628, label = "Rathiril Sunlance", offMapText = "Travel to Rathiril Sunlance." },
            },
            dependsOn = { "accept-welcome-to-shendar-village-93461" },
            id = "objective-93461-authored-rathiril-sunlance",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93461, text = "Rathiril Sunlance" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Coriella Calmbreeze in Shen'dar Village and follow her welcome dialogue.",
            priority = 910,
            route = {
                { mapID = 2521, x = 0.4305, y = 0.433, label = "Coriella Calmbreeze", offMapText = "Travel to Coriella Calmbreeze." },
            },
            dependsOn = { "accept-welcome-to-shendar-village-93461" },
            id = "objective-93461-authored-coriella-calmbreeze",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93461, text = "Coriella Calmbreeze" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Illaya Amberwind in Shen'dar Village and follow her welcome dialogue.",
            priority = 920,
            route = {
                { mapID = 2521, x = 0.4353, y = 0.44780000000000003, label = "Illaya Amberwind", offMapText = "Travel to Illaya Amberwind." },
            },
            dependsOn = { "accept-welcome-to-shendar-village" },
            id = "objective-92514-authored-illaya-amberwind",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92514, text = "Illaya Amberwind" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Coriella Calmbreeze in Shen'dar Village and follow her welcome dialogue.",
            priority = 930,
            route = {
                { mapID = 2521, x = 0.4305, y = 0.433, label = "Coriella Calmbreeze", offMapText = "Travel to Coriella Calmbreeze." },
            },
            dependsOn = { "accept-welcome-to-shendar-village" },
            id = "objective-92514-authored-coriella-calmbreeze",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92514, text = "Coriella Calmbreeze" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Welcome to Shen'dar Village to Constable Aonda.",
            priority = 940,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = {
                "accept-welcome-to-shendar-village-93461",
                "objective-93461-authored-rathiril-sunlance",
                "objective-93461-authored-coriella-calmbreeze",
            },
            id = "turnin-93461-welcome-to-shendar-village",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93461, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The High Order from Rathiril Sunlance.",
            priority = 950,
            route = {
                { y = 0.464, mapID = 2521, label = "Rathiril Sunlance", offMapText = "Travel to Zephras Isle.", x = 0.45 },
            },
            dependsOn = { "turnin-93461-welcome-to-shendar-village" },
            id = "accept-the-high-order",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92596, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For The High Order: Have a seat and speak with Rathiril Sunlance.",
            priority = 960,
            id = "objective-92596-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92596, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-the-high-order" },
        },
        {
            text = "Have a seat and speak with Rathiril Sunlance.",
            priority = 970,
            route = {
                { y = 0.464, mapID = 2521, label = "Rathiril Sunlance", offMapText = "Travel to Zephras Isle.", x = 0.45 },
            },
            dependsOn = { "accept-the-high-order", "objective-92596-quest-work" },
            id = "turnin-the-high-order",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92596, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept A Magical Affront from Rathiril Sunlance.",
            priority = 980,
            route = {
                { y = 0.464, mapID = 2521, label = "Rathiril Sunlance", offMapText = "Travel to Zephras Isle.", x = 0.45 },
            },
            dependsOn = { "turnin-the-high-order" },
            id = "accept-a-magical-affront",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94413, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92596 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Welcome to Shen'dar Village to Constable Aonda.",
            priority = 990,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = {
                "accept-welcome-to-shendar-village",
                "objective-92514-authored-illaya-amberwind",
                "objective-92514-authored-coriella-calmbreeze",
            },
            id = "turnin-92514-welcome-to-shendar-village",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92514, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Windshapers from Illaya Amberwind.",
            priority = 1000,
            route = {
                { y = 0.448, mapID = 2521, label = "Illaya Amberwind", offMapText = "Travel to Zephras Isle.", x = 0.436 },
            },
            dependsOn = { "turnin-92514-welcome-to-shendar-village" },
            id = "accept-the-windshapers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92595, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For The Windshapers: Listen to what Illaya Amberwind has to say.",
            priority = 1010,
            id = "objective-92595-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92595, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-the-windshapers" },
        },
        {
            text = "Listen to what Illaya Amberwind has to say.",
            priority = 1020,
            route = {
                { y = 0.448, mapID = 2521, label = "Illaya Amberwind", offMapText = "Travel to Zephras Isle.", x = 0.436 },
            },
            dependsOn = { "accept-the-windshapers", "objective-92595-quest-work" },
            id = "turnin-the-windshapers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92595, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Meddlesome Mages from Illaya Amberwind.",
            priority = 1030,
            route = {
                { y = 0.448, mapID = 2521, label = "Illaya Amberwind", offMapText = "Travel to Zephras Isle.", x = 0.436 },
            },
            dependsOn = { "turnin-the-windshapers" },
            id = "accept-meddlesome-mages",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94411, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92595 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Criminal Element from Constable Aonda.",
            priority = 1040,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = { "turnin-92514-welcome-to-shendar-village", "turnin-93461-welcome-to-shendar-village" },
            id = "accept-the-criminal-element",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92517, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Pilfered Windstones from Teeri Wellwind.",
            priority = 1050,
            route = {
                { y = 0.45, mapID = 2521, label = "Teeri Wellwind", offMapText = "Travel to Zephras Isle.", x = 0.444 },
            },
            dependsOn = { "accept-the-criminal-element" },
            id = "accept-pilfered-windstones",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93319, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Hippogryph Harrassment from Teeri Wellwind.",
            priority = 1060,
            route = {
                { y = 0.45, mapID = 2521, label = "Teeri Wellwind", offMapText = "Travel to Zephras Isle.", x = 0.444 },
            },
            dependsOn = { "accept-pilfered-windstones" },
            id = "accept-hippogryph-harrassment",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92516, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Problem With Prideclaws from Indari Sunseam.",
            priority = 1070,
            route = {
                { y = 0.444, mapID = 2521, label = "Indari Sunseam", offMapText = "Travel to Zephras Isle.", x = 0.446 },
            },
            dependsOn = { "accept-hippogryph-harrassment" },
            id = "accept-the-problem-with-prideclaws",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92515, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept A Little Beauty from Taleen Shimmerthread.",
            priority = 1080,
            route = {
                { y = 0.442, mapID = 2521, label = "Taleen Shimmerthread", offMapText = "Travel to Zephras Isle.", x = 0.448 },
            },
            dependsOn = { "accept-the-problem-with-prideclaws" },
            id = "accept-a-little-beauty",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93951, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Restocking the Larders from Zerril Softbreeze.",
            priority = 1090,
            route = {
                { y = 0.438, mapID = 2521, label = "Zerril Softbreeze", offMapText = "Travel to Zephras Isle.", x = 0.438 },
            },
            dependsOn = { "accept-a-little-beauty" },
            id = "accept-restocking-the-larders",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92553, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 3 Small Eggs from Galestriders or hippogryphs in Shen'dar Highlands.",
            priority = 1100,
            route = {
                { mapID = 2521, x = 0.3577, y = 0.47859999999999997, label = "Small Egg", offMapText = "Travel to Small Egg." },
            },
            dependsOn = { "accept-restocking-the-larders" },
            id = "objective-92553-authored-small-egg",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92553, text = "Small Egg", count = 3 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill Galestriders in Shen'dar Highlands and collect 8 Strider Meat.",
            priority = 1110,
            route = {
                { mapID = 2521, x = 0.3577, y = 0.47859999999999997, label = "Strider Meat", offMapText = "Travel to Strider Meat." },
            },
            dependsOn = { "accept-restocking-the-larders" },
            id = "objective-92553-authored-strider-meat",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92553, text = "Strider Meat", count = 8 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 10 Prideclaw Pelts from the Prideclaws in Shen'dar Highlands.",
            priority = 1120,
            route = {
                { y = 0.456, mapID = 2521, label = "Prideclaw", offMapText = "Travel to Zephras Isle.", x = 0.412 },
            },
            dependsOn = { "accept-the-problem-with-prideclaws" },
            id = "objective-the-problem-with-prideclaws",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92515, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 6 High Order Apprentices in Shen'dar Highlands.",
            priority = 1130,
            route = {
                { y = 0.4, mapID = 2521, label = "High Order Apprentice", offMapText = "Travel to Zephras Isle.", x = 0.46 },
            },
            dependsOn = { "accept-meddlesome-mages" },
            id = "objective-meddlesome-mages",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94411, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92595 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill 10 Highlands Bandits in Shen'dar Highlands.",
            priority = 1140,
            route = {
                { mapID = 2521, x = 0.4673, y = 0.36619999999999997, label = "Highlands Bandit", offMapText = "Travel to Highlands Bandit." },
            },
            dependsOn = { "accept-the-criminal-element" },
            id = "objective-92517-authored-highlands-bandit",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92517, text = "Highlands Bandit", count = 10 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill \"Badwind\" Bennic, the bandit leader.",
            priority = 1150,
            route = {
                { mapID = 2521, x = 0.5062, y = 0.3427, label = "Bennic", offMapText = "Travel to Bennic." },
            },
            dependsOn = { "accept-the-criminal-element" },
            id = "objective-92517-authored-bennic",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92517, text = "Bennic" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 10 Pilfered Windstones from the Highlands Bandits in the Shen'dar Highlands.",
            priority = 1160,
            route = {
                { y = 0.464, mapID = 2521, label = "Captured Bandit", offMapText = "Travel to Zephras Isle.", x = 0.43 },
            },
            dependsOn = { "accept-pilfered-windstones" },
            id = "objective-pilfered-windstones",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93319, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Meddlesome Mages to Illaya Amberwind.",
            priority = 1170,
            route = {
                { y = 0.448, mapID = 2521, label = "Illaya Amberwind", offMapText = "Travel to Zephras Isle.", x = 0.436 },
            },
            dependsOn = { "accept-meddlesome-mages", "objective-meddlesome-mages" },
            id = "turnin-meddlesome-mages",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94411, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92595 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept WANTED: Vulgara the Insatiable from the notice in Shen'dar Village.",
            priority = 1180,
            route = {
                { y = 0.452, mapID = 2521, label = "Vulgara wanted notice in Shen'dar Village", offMapText = "Travel to Zephras Isle.", x = 0.452 },
            },
            dependsOn = { "objective-pilfered-windstones" },
            id = "accept-wanted-vulgara-the-insatiable",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93318, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak to Raan Wildwind near Shen'dar Village.",
            priority = 1190,
            route = {
                { y = 0.448, mapID = 2521, label = "Raan Wildwind", offMapText = "Travel to Zephras Isle.", x = 0.416 },
            },
            dependsOn = { "accept-the-adventurer" },
            id = "turnin-the-adventurer",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96638, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92470 },
                    conditions = {},
                },
            },
            alternativeQuests = { 96627, 96628, 96630, 96652, 96656, 96659 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Great Outdoors from Raan Wildwind.",
            priority = 1200,
            route = {
                { y = 0.448, mapID = 2521, label = "Raan Wildwind", offMapText = "Travel to Zephras Isle.", x = 0.416 },
            },
            dependsOn = { "turnin-the-adventurer" },
            id = "accept-the-great-outdoors",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96101, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1210,
            text = "Type /sit at Raan Wildwind's campfire and wait until you gain the Boosted Rest buff.",
            dependsOn = { "accept-the-great-outdoors" },
            id = "objective-the-great-outdoors",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96101, state = "complete" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = true,
        },
        {
            text = "Turn in The Great Outdoors to Raan Wildwind.",
            priority = 1220,
            route = {
                { y = 0.448, mapID = 2521, label = "Raan Wildwind", offMapText = "Travel to Zephras Isle.", x = 0.416 },
            },
            dependsOn = { "accept-the-great-outdoors", "objective-the-great-outdoors" },
            id = "turnin-the-great-outdoors",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96101, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Camping 101: Cooking from Raan Wildwind.",
            priority = 1230,
            route = {
                { y = 0.448, mapID = 2521, label = "Raan Wildwind", offMapText = "Travel to Zephras Isle.", x = 0.416 },
            },
            dependsOn = { "turnin-the-great-outdoors" },
            id = "accept-camping-101-cooking",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96646, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95998, 96101, 96604, 96605, 96606, 96607, 96608 },
                    conditions = {},
                },
            },
            alternativeQuests = { 96626, 96629, 96634, 96655, 96658, 96661 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 6 Windshaper Novice Seers in Shen'dar Highlands.",
            priority = 1240,
            route = {
                { y = 0.466, mapID = 2521, label = "Windshaper Novice Seer", offMapText = "Travel to Zephras Isle.", x = 0.398 },
            },
            dependsOn = { "accept-a-magical-affront" },
            id = "objective-a-magical-affront",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94413, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92596 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 8 Hippogryph Youths in Shen'dar Highlands.",
            priority = 1250,
            route = {
                { mapID = 2521, x = 0.35, y = 0.5719, label = "Hippogryph Youth", offMapText = "Travel to Hippogryph Youth." },
            },
            dependsOn = { "accept-hippogryph-harrassment" },
            id = "objective-92516-authored-hippogryph-youth",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92516, text = "Hippogryph Youth", count = 8 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 6 Hippogryph Protectors near their nests.",
            priority = 1260,
            route = {
                { mapID = 2521, x = 0.33049999999999996, y = 0.5590999999999999, label = "Hippogryph Protector", offMapText = "Travel to Hippogryph Protector." },
            },
            dependsOn = { "accept-hippogryph-harrassment" },
            id = "objective-92516-authored-hippogryph-protector",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92516, text = "Hippogryph Protector", count = 6 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay the Hippogryph Matriarch.",
            priority = 1270,
            route = {
                { mapID = 2521, x = 0.33039999999999997, y = 0.5463, label = "Hippogryph Matriarch", offMapText = "Travel to Hippogryph Matriarch." },
            },
            dependsOn = { "accept-hippogryph-harrassment" },
            id = "objective-92516-authored-hippogryph-matriarch",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92516, text = "Hippogryph Matriarch" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 8 Hippogryph Down feathers around the nesting grounds southwest of Shen'dar Village.",
            priority = 1280,
            route = {
                { y = 0.51, mapID = 2521, label = "Hippogryph nesting grounds", offMapText = "Travel to Zephras Isle.", x = 0.378 },
            },
            dependsOn = { "accept-a-little-beauty" },
            id = "objective-a-little-beauty",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93951, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill Vulgara the Insatiable in the Shen'dar Highlands and bring her head to Danarii Bellowveil.",
            priority = 1290,
            route = {
                { y = 0.452, mapID = 2521, label = "Vulgara wanted notice in Shen'dar Village", offMapText = "Travel to Zephras Isle.", x = 0.452 },
            },
            dependsOn = { "accept-wanted-vulgara-the-insatiable" },
            id = "objective-wanted-vulgara-the-insatiable",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93318, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Restocking the Larders to Zerril Softbreeze.",
            priority = 1300,
            route = {
                { y = 0.438, mapID = 2521, label = "Zerril Softbreeze", offMapText = "Travel to Zephras Isle.", x = 0.438 },
            },
            dependsOn = {
                "accept-restocking-the-larders",
                "objective-92553-authored-small-egg",
                "objective-92553-authored-strider-meat",
            },
            id = "turnin-restocking-the-larders",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92553, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For Camping 101: Cooking: Speak with Zerril Softbreeze in Shen'dar Village to learn to become a cook.",
            priority = 1310,
            id = "objective-96646-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96646, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95998, 96101, 96604, 96605, 96606, 96607, 96608 },
                    conditions = {},
                },
            },
            alternativeQuests = { 96626, 96629, 96634, 96655, 96658, 96661 },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-camping-101-cooking" },
        },
        {
            text = "Speak with Zerril Softbreeze in Shen'dar Village to learn to become a cook.",
            priority = 1320,
            route = {
                { y = 0.438, mapID = 2521, label = "Zerril Softbreeze", offMapText = "Travel to Zephras Isle.", x = 0.438 },
            },
            dependsOn = { "accept-camping-101-cooking", "objective-96646-quest-work" },
            id = "turnin-camping-101-cooking",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96646, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95998, 96101, 96604, 96605, 96606, 96607, 96608 },
                    conditions = {},
                },
            },
            alternativeQuests = { 96626, 96629, 96634, 96655, 96658, 96661 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in A Little Beauty to Taleen Shimmerthread.",
            priority = 1330,
            route = {
                { y = 0.442, mapID = 2521, label = "Taleen Shimmerthread", offMapText = "Travel to Zephras Isle.", x = 0.448 },
            },
            dependsOn = { "accept-a-little-beauty", "objective-a-little-beauty" },
            id = "turnin-a-little-beauty",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93951, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Problem With Prideclaws to Indari Sunseam. The reward is a Simple Leather Satchel.",
            priority = 1340,
            route = {
                { y = 0.444, mapID = 2521, label = "Indari Sunseam", offMapText = "Travel to Zephras Isle.", x = 0.446 },
            },
            dependsOn = { "accept-the-problem-with-prideclaws", "objective-the-problem-with-prideclaws" },
            id = "turnin-the-problem-with-prideclaws",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92515, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Hippogryph Harrassment to Teeri Wellwind.",
            priority = 1350,
            route = {
                { y = 0.45, mapID = 2521, label = "Teeri Wellwind", offMapText = "Travel to Zephras Isle.", x = 0.444 },
            },
            dependsOn = {
                "accept-hippogryph-harrassment",
                "objective-92516-authored-hippogryph-youth",
                "objective-92516-authored-hippogryph-protector",
                "objective-92516-authored-hippogryph-matriarch",
            },
            id = "turnin-hippogryph-harrassment",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92516, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Pilfered Windstones to Teeri Wellwind.",
            priority = 1360,
            route = {
                { y = 0.45, mapID = 2521, label = "Teeri Wellwind", offMapText = "Travel to Zephras Isle.", x = 0.444 },
            },
            dependsOn = { "accept-pilfered-windstones", "objective-pilfered-windstones" },
            id = "turnin-pilfered-windstones",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93319, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in WANTED: Vulgara the Insatiable to Danarii Bellowveil.",
            priority = 1370,
            route = {
                { y = 0.452, mapID = 2521, label = "Danarii Bellowveil", offMapText = "Travel to Zephras Isle.", x = 0.452 },
            },
            dependsOn = { "accept-wanted-vulgara-the-insatiable", "objective-wanted-vulgara-the-insatiable" },
            id = "turnin-wanted-vulgara-the-insatiable",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93318, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Criminal Element to Constable Aonda.",
            priority = 1380,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = { "accept-the-criminal-element", "objective-92517-authored-highlands-bandit", "objective-92517-authored-bennic" },
            id = "turnin-the-criminal-element",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92517, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92514, 93461 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-infiltrating-the-cult",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                race = { 95, 96 },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 93036,
            priority = 1390,
        },
        {
            text = "Accept Infiltrating the Cult from Constable Aonda.",
            priority = 1400,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = { "turnin-the-criminal-element" },
            id = "accept-infiltrating-the-cult",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93036, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92517 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Sania Silverstream in Shen'dar Village.",
            priority = 1410,
            route = {
                { y = 0.454, mapID = 2521, label = "Sania Silverstream", offMapText = "Travel to Zephras Isle.", x = 0.448 },
            },
            dependsOn = { "accept-infiltrating-the-cult" },
            id = "turnin-infiltrating-the-cult",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93036, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92517 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Falaath Village from Sania Silverstream.",
            priority = 1420,
            route = {
                { y = 0.454, mapID = 2521, label = "Sania Silverstream", offMapText = "Travel to Zephras Isle.", x = 0.448 },
            },
            dependsOn = { "turnin-infiltrating-the-cult" },
            id = "accept-falaath-village",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92529, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93036 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in A Magical Affront to Rathiril Sunlance.",
            priority = 1430,
            route = {
                { y = 0.464, mapID = 2521, label = "Rathiril Sunlance", offMapText = "Travel to Zephras Isle.", x = 0.45 },
            },
            dependsOn = { "accept-a-magical-affront", "objective-a-magical-affront" },
            id = "turnin-a-magical-affront",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94413, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92596 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Report to Missionary Jasaan near the entrance to Falaath Village.",
            priority = 1440,
            route = {
                { y = 0.562, mapID = 2521, label = "Missionary Jasaan", offMapText = "Travel to Zephras Isle.", x = 0.468 },
            },
            dependsOn = { "accept-falaath-village" },
            id = "turnin-falaath-village",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92529, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93036 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Among the Faithful from Missionary Jasaan.",
            priority = 1450,
            route = {
                { y = 0.562, mapID = 2521, label = "Missionary Jasaan", offMapText = "Travel to Zephras Isle.", x = 0.468 },
            },
            dependsOn = { "turnin-falaath-village" },
            id = "accept-among-the-faithful",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92528, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92529 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For Among the Faithful: Look around Falaath Village to learn about the cult's intentions in the Shen'dar Highlands.",
            priority = 1460,
            id = "objective-92528-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92528, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92529 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-among-the-faithful" },
        },
        {
            text = "Investigate Falaath Village, then return to Constable Aonda.",
            priority = 1470,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = { "accept-among-the-faithful", "objective-92528-quest-work" },
            id = "turnin-92528-among-the-faithful",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92528, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92529 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Havoc in the Highlands from Constable Aonda.",
            priority = 1480,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = { "turnin-92528-among-the-faithful" },
            id = "accept-havoc-in-the-highlands",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92550, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Stolen Supplies from Danarii Bellowveil.",
            priority = 1490,
            route = {
                { y = 0.452, mapID = 2521, label = "Danarii Bellowveil", offMapText = "Travel to Zephras Isle.", x = 0.452 },
            },
            dependsOn = { "accept-havoc-in-the-highlands" },
            id = "accept-stolen-supplies",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92551, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 6 Al'Aketh Stormcallers in the ruins of Falaath Village.",
            priority = 1500,
            route = {
                { mapID = 2521, x = 0.45409999999999995, y = 0.5474, label = "Al'Aketh Stormcaller", offMapText = "Travel to Al'Aketh Stormcaller." },
            },
            dependsOn = { "accept-havoc-in-the-highlands" },
            id = "objective-92550-authored-alaketh-stormcaller",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92550, text = "Al'Aketh Stormcaller", count = 6 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 4 Living Lightning in Falaath Village.",
            priority = 1510,
            route = {
                { mapID = 2521, x = 0.4672, y = 0.5616, label = "Living Lightning", offMapText = "Travel to Living Lightning." },
            },
            dependsOn = { "accept-havoc-in-the-highlands" },
            id = "objective-92550-authored-living-lightning",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92550, text = "Living Lightning", count = 4 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill Commander Cyclas and take his head.",
            priority = 1520,
            route = {
                { mapID = 2521, x = 0.5039, y = 0.5696, label = "Cyclas", offMapText = "Travel to Cyclas." },
            },
            dependsOn = { "accept-havoc-in-the-highlands" },
            id = "objective-92550-authored-cyclas",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92550, text = "Cyclas" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For Stolen Supplies: Collect 10 packs of Stolen Shen'dar Supplies from Falaath Village in the Shen'dar Highlands.",
            priority = 1530,
            id = "objective-92551-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92551, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-stolen-supplies" },
        },
        {
            text = "Collect 10 packs of Stolen Shen'dar Supplies from Falaath Village in the Shen'dar Highlands.",
            priority = 1540,
            route = {
                { y = 0.452, mapID = 2521, label = "Danarii Bellowveil", offMapText = "Travel to Zephras Isle.", x = 0.452 },
            },
            dependsOn = { "accept-stolen-supplies", "objective-92551-quest-work" },
            id = "turnin-stolen-supplies",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92551, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Havoc in the Highlands to Constable Aonda.",
            priority = 1550,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = {
                "accept-havoc-in-the-highlands",
                "objective-92550-authored-alaketh-stormcaller",
                "objective-92550-authored-living-lightning",
                "objective-92550-authored-cyclas",
            },
            id = "turnin-92550-havoc-in-the-highlands",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92550, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Western Watch from Constable Aonda.",
            priority = 1560,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = { "turnin-92550-havoc-in-the-highlands" },
            id = "accept-the-western-watch",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93926, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For The Western Watch: Find Peacekeeper Vaaniel at the western watchtower.",
            priority = 1570,
            id = "objective-93926-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93926, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-the-western-watch" },
        },
        {
            text = "Find Peacekeeper Vaaniel at the western watchtower.",
            priority = 1580,
            route = {
                { y = 0.62, mapID = 2521, label = "Peacekeeper Vaaniel", offMapText = "Travel to Zephras Isle.", x = 0.424 },
            },
            dependsOn = { "accept-the-western-watch", "objective-93926-quest-work" },
            id = "turnin-the-western-watch",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93926, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept A Last Request from Peacekeeper Vaaniel.",
            priority = 1590,
            route = {
                { y = 0.62, mapID = 2521, label = "Peacekeeper Vaaniel", offMapText = "Travel to Zephras Isle.", x = 0.424 },
            },
            dependsOn = { "turnin-the-western-watch" },
            id = "accept-93927-a-last-request",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93927, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93926 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect the Bloody Note beside the dead peacekeeper and read it.",
            priority = 1600,
            route = {
                { mapID = 2521, x = 0.42369999999999997, y = 0.6207, label = "Bloody Note", offMapText = "Travel to Bloody Note." },
            },
            dependsOn = { "accept-93927-a-last-request" },
            id = "objective-93927-authored-bloody-note",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93927, text = "Bloody Note", count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93926 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Enter the western watchtower and search Raani Windgazer's body for Raani's Lucky Feather.",
            priority = 1610,
            route = {
                { mapID = 2521, x = 0.4113, y = 0.6406999999999999, label = "Raani's Lucky Feather", offMapText = "Travel to Raani's Lucky Feather." },
            },
            dependsOn = { "accept-93927-a-last-request" },
            id = "objective-93927-authored-raanis-lucky-feather",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93927, text = "Raani's Lucky Feather", count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93926 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Search Arvensus Shadowsong's body in the western watchtower for the Shadowsong Family Signet.",
            priority = 1620,
            route = {
                { mapID = 2521, x = 0.40979999999999994, y = 0.6409, label = "Shadowsong Family Signet", offMapText = "Travel to Shadowsong Family Signet." },
            },
            dependsOn = { "accept-93927-a-last-request" },
            id = "objective-93927-authored-shadowsong-family-signet",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93927, text = "Shadowsong Family Signet", count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93926 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Climb to the top of the western watchtower and slay Skypriest Aanders.",
            priority = 1630,
            route = {
                { mapID = 2521, x = 0.409, y = 0.642, label = "Skypriest Aanders", offMapText = "Travel to Skypriest Aanders." },
            },
            dependsOn = { "accept-93927-a-last-request" },
            id = "objective-93927-authored-skypriest-aanders",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93927, text = "Skypriest Aanders", count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93926 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in A Last Request to Constable Aonda.",
            priority = 1640,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = {
                "accept-93927-a-last-request",
                "objective-93927-authored-bloody-note",
                "objective-93927-authored-raanis-lucky-feather",
                "objective-93927-authored-shadowsong-family-signet",
                "objective-93927-authored-skypriest-aanders",
            },
            id = "turnin-93927-a-last-request",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93927, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93926 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-to-valanaar-92701",
            kind = "note",
            text = "Reach level 6 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 6 },
            },
            requiredLevel = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92701,
            priority = 1650,
        },
        {
            text = "Accept To Valanaar from Constable Aonda.",
            priority = 1660,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = { "turnin-92550-havoc-in-the-highlands", "turnin-93927-a-last-request" },
            id = "accept-to-valanaar-92701",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92701, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 92550, 93927 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-to-valanaar",
            kind = "note",
            text = "Reach level 6 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 6 },
            },
            requiredLevel = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92579,
            priority = 1670,
        },
        {
            text = "Accept To Valanaar from Constable Aonda.",
            priority = 1680,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = { "turnin-92550-havoc-in-the-highlands" },
            id = "accept-to-valanaar",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92579, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 92550, 93927 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-deliver-the-signet",
            kind = "note",
            text = "Reach level 6 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                race = { 95, 96 },
            },
            complete = {
                level = { min = 6 },
            },
            requiredLevel = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 93948,
            priority = 1690,
        },
        {
            text = "Accept Deliver the Signet from Constable Aonda.",
            priority = 1700,
            route = {
                { y = 0.454, mapID = 2521, label = "Constable Aonda", offMapText = "Travel to Zephras Isle.", x = 0.456 },
            },
            dependsOn = { "turnin-92550-havoc-in-the-highlands", "turnin-93927-a-last-request" },
            id = "accept-deliver-the-signet",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93948, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 92550, 93927 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Crab Season from Nyalah Brightfire.",
            priority = 1710,
            route = {
                { y = 0.726, mapID = 2521, label = "Nyalah Brightfire", offMapText = "Travel to Zephras Isle.", x = 0.606 },
            },
            dependsOn = { "accept-deliver-the-signet" },
            id = "accept-crab-season",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93317, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Blood Tithe from Alvarion Windfield.",
            priority = 1720,
            route = {
                { y = 0.732, mapID = 2521, label = "Alvarion Windfield", offMapText = "Travel to Zephras Isle.", x = 0.62 },
            },
            dependsOn = { "accept-crab-season" },
            id = "accept-blood-tithe",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92679, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-unnerving-silence",
            kind = "note",
            text = "Reach level 8 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                race = { 95, 96 },
            },
            complete = {
                level = { min = 8 },
            },
            requiredLevel = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94484,
            alternativeQuests = { 94493 },
            priority = 1730,
        },
        {
            text = "Accept Unnerving Silence from Lotheluum Starbreeze.",
            priority = 1740,
            route = {
                { y = 0.75, mapID = 2521, label = "Lotheluum Starbreeze", offMapText = "Travel to Zephras Isle.", x = 0.64 },
            },
            dependsOn = { "accept-blood-tithe" },
            id = "accept-unnerving-silence",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94484, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 94493 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Aid For The Refugees from Ealaane Nimbuswalker.",
            priority = 1750,
            route = {
                { y = 0.744, mapID = 2521, label = "Ealaane Nimbuswalker", offMapText = "Travel to Zephras Isle.", x = 0.658 },
            },
            dependsOn = { "accept-unnerving-silence" },
            id = "accept-aid-for-the-refugees",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94896, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Deliver the Shadowsong Family Signet to Talaanis Shadowsong in Valanaar.",
            priority = 1760,
            route = {
                { y = 0.766, mapID = 2521, label = "Talaanis Shadowsong", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-deliver-the-signet" },
            id = "turnin-deliver-the-signet",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93948, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 92550, 93927 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Deliver Aonda's Written Report to Valennia Stormfist in Valanaar.",
            priority = 1770,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-to-valanaar-92701" },
            id = "turnin-92701-to-valanaar",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92701, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 92550, 93927 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Deliver Aonda's Written Report to Valennia Stormfist in Valanaar.",
            priority = 1780,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-to-valanaar" },
            id = "turnin-92579-to-valanaar",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92579, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 92550, 93927 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Supreme Magister from Valennia Stormfist.",
            priority = 1790,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "turnin-deliver-the-signet" },
            id = "accept-the-supreme-magister",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92699, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92701 },
                    conditions = { faction = "Alliance" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Grand Skyseer from Valennia Stormfist.",
            priority = 1800,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "turnin-deliver-the-signet" },
            id = "accept-the-grand-skyseer",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92700, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92579 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Bugged from Valennia Stormfist.",
            priority = 1810,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "turnin-deliver-the-signet" },
            id = "accept-bugged",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93949, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93948 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Exterminate 8 enchanted skyhoppers in the Gustberry Lowlands.",
            priority = 1820,
            route = {
                { y = 0.732, mapID = 2521, label = "Gustberry Lowlands outside Valanaar", offMapText = "Travel to Zephras Isle.", x = 0.62 },
            },
            dependsOn = { "accept-bugged" },
            id = "objective-bugged",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93949, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93948 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Find Elaadrin Evengale in Valanaar.",
            priority = 1830,
            route = {
                { y = 0.798, mapID = 2521, label = "Elaadrin Evengale", offMapText = "Travel to Zephras Isle.", x = 0.666 },
            },
            dependsOn = { "accept-the-supreme-magister" },
            id = "turnin-92699-the-supreme-magister",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92699, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92701 },
                    conditions = { faction = "Alliance" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-a-grand-adventure",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = 95 },
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
            checkpointQuest = 92709,
            priority = 1840,
        },
        {
            text = "Accept A Grand Adventure from Elaadrin Evengale.",
            priority = 1850,
            route = {
                { y = 0.798, mapID = 2521, label = "Elaadrin Evengale", offMapText = "Travel to Zephras Isle.", x = 0.666 },
            },
            dependsOn = { "objective-bugged" },
            id = "accept-a-grand-adventure",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92709, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92699 },
                    conditions = { faction = "Alliance" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Missing Scholar from Dondallion Whisperwind.",
            priority = 1860,
            route = {
                { y = 0.798, mapID = 2521, label = "Dondallion Whisperwind", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "objective-bugged" },
            id = "accept-the-missing-scholar",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92727, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92699 },
                    conditions = { faction = "Alliance" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-unwelcome-visitors",
            kind = "note",
            text = "Reach level 8 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = 95 },
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
            checkpointQuest = 92741,
            priority = 1870,
        },
        {
            text = "Accept Unwelcome Visitors from Iaadaria Bitterwind.",
            priority = 1880,
            route = {
                { y = 0.796, mapID = 2521, label = "Iaadaria Bitterwind", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "objective-bugged" },
            id = "accept-unwelcome-visitors",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92741, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92699 },
                    conditions = { faction = "Alliance" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For A Grand Adventure: Listen to what Elaadrin Evengale in Valanaar has to say.",
            priority = 1890,
            id = "objective-92709-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92709, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92699 },
                    conditions = { faction = "Alliance" },
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-a-grand-adventure" },
        },
        {
            text = "Listen to what Elaadrin Evengale in Valanaar has to say.",
            priority = 1900,
            route = {
                { y = 0.798, mapID = 2521, label = "Elaadrin Evengale", offMapText = "Travel to Zephras Isle.", x = 0.666 },
            },
            dependsOn = { "accept-a-grand-adventure", "objective-92709-quest-work" },
            id = "turnin-a-grand-adventure",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92709, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92699 },
                    conditions = { faction = "Alliance" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Find Ayessa Dawnsinger in Valanaar.",
            priority = 1910,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "accept-the-grand-skyseer" },
            id = "turnin-92700-the-grand-skyseer",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92700, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92579 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-a-grand-adventure-92708",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 92708,
            priority = 1920,
        },
        {
            text = "Accept A Grand Adventure from Ayessa Dawnsinger.",
            priority = 1930,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "objective-bugged" },
            id = "accept-a-grand-adventure-92708",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92708, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92700 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Broken Construct from Ayessa Dawnsinger.",
            priority = 1940,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "turnin-92700-the-grand-skyseer" },
            id = "accept-the-broken-construct",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93735, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92700 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Unwelcome Spirits from Endaria Mistgaze.",
            priority = 1950,
            route = {
                { y = 0.782, mapID = 2521, label = "Endaria Mistgaze", offMapText = "Travel to Zephras Isle.", x = 0.582 },
            },
            dependsOn = { "turnin-92700-the-grand-skyseer" },
            id = "accept-unwelcome-spirits",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93736, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92700 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Gather 10 Wind Hollow Essences in Shadowgale Forest. Wind Hollows can also drop a Rusty Gadget, which starts a quest.",
            priority = 1960,
            route = {
                { y = 0.294, mapID = 2521, label = "Wind Hollow", offMapText = "Travel to Zephras Isle.", x = 0.57 },
            },
            dependsOn = { "accept-unwelcome-spirits" },
            id = "objective-unwelcome-spirits",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93736, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92700 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Unwelcome Spirits to Endaria Mistgaze.",
            priority = 1970,
            route = {
                { y = 0.782, mapID = 2521, label = "Endaria Mistgaze", offMapText = "Travel to Zephras Isle.", x = 0.582 },
            },
            dependsOn = { "accept-unwelcome-spirits", "objective-unwelcome-spirits" },
            id = "turnin-unwelcome-spirits",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93736, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92700 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For A Grand Adventure: Listen to what Ayessa Dawnsinger has to say.",
            priority = 1980,
            id = "objective-92708-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92708, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92700 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-a-grand-adventure-92708" },
        },
        {
            text = "Listen to what Ayessa Dawnsinger has to say.",
            priority = 1990,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "accept-a-grand-adventure-92708", "objective-92708-quest-work" },
            id = "turnin-a-grand-adventure-92708",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92708, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92700 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Find Riaani Nightwind on the west side of Valanaar.",
            priority = 2000,
            route = {
                { y = 0.73, mapID = 2521, label = "Riaani Nightwind", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "accept-the-broken-construct" },
            id = "turnin-the-broken-construct",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93735, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92700 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Broken Construct from Riaani Nightwind.",
            priority = 2010,
            route = {
                { y = 0.73, mapID = 2521, label = "Riaani Nightwind", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "turnin-the-broken-construct" },
            id = "accept-the-broken-construct-93737",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93737, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93735 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Riaani Nightwind and listen to his explanation of the broken construct.",
            priority = 2020,
            route = {
                { mapID = 2521, x = 0.5902000000000001, y = 0.7292000000000001, label = "Riaani Nightwind", offMapText = "Travel to Riaani Nightwind." },
            },
            dependsOn = { "accept-the-broken-construct-93737" },
            id = "objective-93737-authored-riaani-nightwind",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93737, text = "Riaani Nightwind" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93735 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Open Construct Parts in the southern highlands and collect Crystallized Lightning.",
            priority = 2030,
            route = {
                { mapID = 2521, x = 0.514, y = 0.675, label = "Crystallized Lightning", offMapText = "Travel to Crystallized Lightning." },
            },
            dependsOn = { "accept-the-broken-construct-93737" },
            id = "objective-93737-authored-crystallized-lightning",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93737, text = "Crystallized Lightning", count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93735 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Open Construct Parts in the central highlands and collect an Enchanted Gyrozephyr.",
            priority = 2040,
            route = {
                { mapID = 2521, x = 0.494, y = 0.46, label = "Enchanted Gyrozephyr", offMapText = "Travel to Enchanted Gyrozephyr." },
            },
            dependsOn = { "accept-the-broken-construct-93737" },
            id = "objective-93737-authored-enchanted-gyrozephyr",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93737, text = "Enchanted Gyrozephyr", count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93735 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Open Construct Parts in the western lowlands and collect an Air Construct Core.",
            priority = 2050,
            route = {
                { mapID = 2521, x = 0.433, y = 0.745, label = "Air Construct Core", offMapText = "Travel to Air Construct Core." },
            },
            dependsOn = { "accept-the-broken-construct-93737" },
            id = "objective-93737-authored-air-construct-core",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93737, text = "Air Construct Core", count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93735 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Broken Construct to Riaani Nightwind.",
            priority = 2060,
            route = {
                { y = 0.73, mapID = 2521, label = "Riaani Nightwind", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = {
                "accept-the-broken-construct-93737",
                "objective-93737-authored-riaani-nightwind",
                "objective-93737-authored-crystallized-lightning",
                "objective-93737-authored-enchanted-gyrozephyr",
                "objective-93737-authored-air-construct-core",
            },
            id = "turnin-the-broken-construct-93737",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93737, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93735 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Alvarion Windfield and listen to his account.",
            priority = 2070,
            id = "objective-92679-authored-alvarion-windfield",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92679, text = "Alvarion Windfield" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-blood-tithe" },
            route = {
                { mapID = 2521, x = 0.6214, y = 0.733, label = "Alvarion Windfield", offMapText = "Travel to Alvarion Windfield." },
            },
        },
        {
            text = "Find Aamelia Windfield at the Windfield Orchard.",
            priority = 2080,
            id = "objective-92679-authored-aamelia-windfield",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92679, text = "Aamelia Windfield" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-blood-tithe" },
            route = {
                { mapID = 2521, x = 0.467, y = 0.8195, label = "Aamelia Windfield", offMapText = "Travel to Aamelia Windfield." },
            },
        },
        {
            text = "Listen to what Alvarion Windfield has to say and find Aamelia Windfield at the Windfield Orchard.",
            priority = 2090,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = {
                "accept-blood-tithe",
                "objective-92679-authored-alvarion-windfield",
                "objective-92679-authored-aamelia-windfield",
            },
            id = "turnin-92679-blood-tithe",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92679, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Make Yourself Useful from Aamelia Windfield.",
            priority = 2100,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = { "turnin-92679-blood-tithe" },
            id = "accept-make-yourself-useful",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92682, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92679 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Ornery Ornery Galestriders from Aamelia Windfield.",
            priority = 2110,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = { "turnin-92679-blood-tithe" },
            id = "accept-ornery-ornery-galestriders",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92684, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92679 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Flutterfly Dust from Aamelia Windfield.",
            priority = 2120,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = { "turnin-92679-blood-tithe" },
            id = "accept-flutterfly-dust",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92683, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92679 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Gather 7 Lowlands Galestrider Tenderloins from the Ornery Galestriders found throughout the Gustberry Lowlands.",
            priority = 2130,
            route = {
                { y = 0.722, mapID = 2521, label = "Ornery Galestrider", offMapText = "Travel to Zephras Isle.", x = 0.532 },
            },
            dependsOn = { "accept-ornery-ornery-galestriders" },
            id = "objective-ornery-ornery-galestriders",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92684, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92679 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Gather 10 Ripe Stormapples at the Windfield Orchard.",
            priority = 2140,
            route = {
                { mapID = 2521, x = 0.462, y = 0.784, label = "Ripe Stormapple", offMapText = "Travel to Ripe Stormapple." },
            },
            dependsOn = { "accept-make-yourself-useful" },
            id = "objective-92682-authored-ripe-stormapple",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92682, text = "Ripe Stormapple", count = 10 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92679 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 5 Hungry Bandits at the Windfield Orchard.",
            priority = 2150,
            route = {
                { mapID = 2521, x = 0.45630000000000004, y = 0.8045, label = "Hungry Bandit", offMapText = "Travel to Hungry Bandit." },
            },
            dependsOn = { "accept-make-yourself-useful" },
            id = "objective-92682-authored-hungry-bandit",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92682, text = "Hungry Bandit", count = 5 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92679 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept What Is My Purpose? from Malfunctioning Cyclone Construct.",
            priority = 2160,
            route = {
                { y = 0.782, mapID = 2521, label = "Malfunctioning Cyclone Construct", offMapText = "Travel to Zephras Isle.", x = 0.486 },
            },
            dependsOn = {},
            id = "accept-what-is-my-purpose",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92698, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92679 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Make Yourself Useful to Aamelia Windfield.",
            priority = 2170,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = {
                "accept-make-yourself-useful",
                "objective-92682-authored-ripe-stormapple",
                "objective-92682-authored-hungry-bandit",
            },
            id = "turnin-92682-make-yourself-useful",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92682, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92679 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Ornery Ornery Galestriders to Aamelia Windfield.",
            priority = 2180,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = { "accept-ornery-ornery-galestriders", "objective-ornery-ornery-galestriders" },
            id = "turnin-92684-ornery-ornery-galestriders",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92684, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92679 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Aamelia Windfield about the Malfunctioning Cyclone Construct.",
            priority = 2190,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = { "accept-what-is-my-purpose" },
            id = "turnin-what-is-my-purpose",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92698, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92679 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For Flutterfly Dust: Gather 5 Flutterfly Dust from the Flutterflies around the Gustberry Lowlands.",
            priority = 2200,
            id = "objective-92683-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92683, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92679 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-flutterfly-dust" },
        },
        {
            text = "Gather 5 Flutterfly Dust from the Flutterflies around the Gustberry Lowlands.",
            priority = 2210,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = { "accept-flutterfly-dust", "objective-92683-quest-work" },
            id = "turnin-92683-flutterfly-dust",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92683, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92679 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Hills Have Eyes from Aamelia Windfield.",
            priority = 2220,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = { "turnin-92679-blood-tithe" },
            id = "accept-the-hills-have-eyes",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92685, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 92682, 92683, 92684 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Loot 7 Blood-Stained Bandit Masks from Highwayman Bandits in the Gustberry Lowlands.",
            priority = 2230,
            route = {
                { y = 0.746, mapID = 2521, label = "Bandit Highwayman", offMapText = "Travel to Zephras Isle.", x = 0.438 },
            },
            dependsOn = { "accept-the-hills-have-eyes" },
            id = "objective-the-hills-have-eyes",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92685, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 92682, 92683, 92684 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Hills Have Eyes to Aamelia Windfield.",
            priority = 2240,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = { "accept-the-hills-have-eyes", "objective-the-hills-have-eyes" },
            id = "turnin-92685-the-hills-have-eyes",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92685, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 92682, 92683, 92684 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Standing Our Ground from Aamelia Windfield.",
            priority = 2250,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = { "turnin-92679-blood-tithe" },
            id = "accept-standing-our-ground",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92693, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92685 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Aamelia Windfield at the Windfield Orchard when you are ready to confront the bandit leader.",
            priority = 2260,
            route = {
                { mapID = 2521, x = 0.467, y = 0.8195, label = "Aamelia Windfield", offMapText = "Travel to Aamelia Windfield." },
            },
            dependsOn = { "accept-standing-our-ground" },
            id = "objective-92693-authored-aamelia-windfield",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92693, text = "Aamelia Windfield" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92685 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Confront Ferauu the Bludgeon and follow the encounter until you receive quest credit.",
            priority = 2270,
            route = {
                { mapID = 2521, x = 0.47509999999999997, y = 0.7839, label = "Ferauu the Bludgeon", offMapText = "Travel to Ferauu the Bludgeon." },
            },
            dependsOn = { "accept-standing-our-ground" },
            id = "objective-92693-authored-ferauu-the-bludgeon",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92693, text = "Ferauu the Bludgeon" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92685 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Standing Our Ground to Aamelia Windfield.",
            priority = 2280,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = {
                "accept-standing-our-ground",
                "objective-92693-authored-aamelia-windfield",
                "objective-92693-authored-ferauu-the-bludgeon",
            },
            id = "turnin-standing-our-ground",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92693, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92685 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Deliver the News from Aamelia Windfield.",
            priority = 2290,
            route = {
                { y = 0.818, mapID = 2521, label = "Aamelia Windfield", offMapText = "Travel to Zephras Isle.", x = 0.466 },
            },
            dependsOn = { "turnin-standing-our-ground" },
            id = "accept-deliver-the-news",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92703, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92693 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Alvarion Windfield in Valanaar.",
            priority = 2300,
            route = {
                { y = 0.732, mapID = 2521, label = "Alvarion Windfield", offMapText = "Travel to Zephras Isle.", x = 0.62 },
            },
            dependsOn = { "accept-deliver-the-news" },
            id = "turnin-deliver-the-news",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92703, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92693 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-call-of-fire",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 96 },
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
            checkpointQuest = 97243,
            priority = 2310,
        },
        {
            text = "Accept Call of Fire from Sessaria Skystride.",
            priority = 2320,
            route = {
                { y = 0.784, mapID = 2521, label = "Sessaria Skystride", offMapText = "Travel to Zephras Isle.", x = 0.582 },
            },
            dependsOn = { "turnin-deliver-the-news" },
            id = "accept-call-of-fire",
            kind = "accept",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97243, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Bring the Torch of Dormant Flame to Olariaan Swiftburn at the Shrine of Flames in the Gustberry Lowlands.",
            priority = 2330,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", offMapText = "Travel to Zephras Isle.", x = 0.512 },
            },
            dependsOn = { "accept-call-of-fire" },
            id = "turnin-call-of-fire",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97243, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-speak-with-belann",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    { race = 95 },
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
            checkpointQuest = 93791,
            priority = 2340,
        },
        {
            text = "Accept Speak with Belann from Anathamaas Aetherwind.",
            priority = 2350,
            route = {
                { y = 0.804, mapID = 2521, label = "Anathamaas Aetherwind", offMapText = "Travel to Zephras Isle.", x = 0.658 },
            },
            dependsOn = { "turnin-deliver-the-news" },
            id = "accept-speak-with-belann",
            kind = "accept",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93791, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Belann Windwood in Valanaar.",
            priority = 2360,
            route = {
                { y = 0.774, mapID = 2521, label = "Belann Windwood", offMapText = "Travel to Zephras Isle.", x = 0.628 },
            },
            dependsOn = { "accept-speak-with-belann" },
            id = "turnin-speak-with-belann",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93791, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Boughs in the Wind from Belann Windwood.",
            priority = 2370,
            route = {
                { y = 0.774, mapID = 2521, label = "Belann Windwood", offMapText = "Travel to Zephras Isle.", x = 0.628 },
            },
            dependsOn = { "turnin-speak-with-belann" },
            id = "accept-boughs-in-the-wind",
            kind = "accept",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93797, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93791 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Find what became of Fillion Flamebreeze on the road west of Valanaar.",
            priority = 2380,
            route = {
                { y = 0.654, mapID = 2521, label = "Fillion Flamebreeze's trail", offMapText = "Travel to Zephras Isle.", x = 0.506 },
            },
            dependsOn = { "accept-the-missing-scholar" },
            id = "turnin-the-missing-scholar",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92727, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92699 },
                    conditions = { faction = "Alliance" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept the next Missing Scholar step where you found Fillion Flamebreeze.",
            priority = 2390,
            route = {
                { y = 0.654, mapID = 2521, label = "Fillion Flamebreeze", offMapText = "Travel to Zephras Isle.", x = 0.506 },
            },
            dependsOn = { "turnin-the-missing-scholar" },
            id = "accept-the-missing-scholar-92849",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92849, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92727 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Find Fillion Flamebreeze.",
            priority = 2400,
            route = {
                { y = 0.654, mapID = 2521, label = "Fillion Flamebreeze", offMapText = "Travel to Zephras Isle.", x = 0.506 },
            },
            dependsOn = { "accept-the-missing-scholar-92849" },
            id = "objective-the-missing-scholar-92849",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92849, text = "Find Fillion", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92727 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Carry Fillion Flamebreeze to safety while avoiding enemies.",
            priority = 2410,
            route = {
                { y = 0.694, mapID = 2521, label = "Carry Fillion Flamebreeze to safety", offMapText = "Travel to Zephras Isle.", x = 0.52 },
            },
            dependsOn = { "objective-the-missing-scholar-92849", "accept-the-missing-scholar-92849" },
            id = "objective-the-missing-scholar-92849-carry",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92849, text = "Carry Fillion", index = 2 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92727 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Missing Scholar to Fillion Flamebreeze.",
            priority = 2420,
            route = {
                { y = 0.694, mapID = 2521, label = "Fillion Flamebreeze", offMapText = "Travel to Zephras Isle.", x = 0.52 },
            },
            dependsOn = {
                "accept-the-missing-scholar-92849",
                "objective-the-missing-scholar-92849",
                "objective-the-missing-scholar-92849-carry",
            },
            id = "turnin-the-missing-scholar-92849",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92849, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92727 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Missing Scholar from Fillion Flamebreeze.",
            priority = 2430,
            route = {
                { y = 0.694, mapID = 2521, label = "Fillion Flamebreeze", offMapText = "Travel to Zephras Isle.", x = 0.52 },
            },
            dependsOn = { "turnin-the-missing-scholar-92849" },
            id = "accept-the-missing-scholar-92850",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92850, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92849 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay the Shriekling Matriarch in the Shriekling Den then return its head to Dondallion Whisperwind in Valanaar.",
            priority = 2440,
            route = {
                { y = 0.658, mapID = 2521, label = "Shriekling Matriarch", offMapText = "Travel to Zephras Isle.", x = 0.52 },
            },
            dependsOn = { "accept-the-missing-scholar-92850" },
            id = "objective-the-missing-scholar-92850",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92850, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92849 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Missing Scholar to Dondallion Whisperwind.",
            priority = 2450,
            route = {
                { y = 0.798, mapID = 2521, label = "Dondallion Whisperwind", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-the-missing-scholar-92850", "objective-the-missing-scholar-92850" },
            id = "turnin-the-missing-scholar-92850",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92850, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92849 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-99260-fillions-mission",
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
            checkpointQuest = 99260,
            priority = 2460,
        },
        {
            id = "accept-99260-fillions-mission",
            kind = "accept",
            text = "Accept Fillion's Mission from Fillion Flamebreeze.",
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
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92850 },
                    conditions = {},
                },
            },
            dependsOn = { "turnin-the-missing-scholar-92850" },
            complete = {
                quest = { id = 99260, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 2521, x = 0.6618, y = 0.7987, label = "Fillion Flamebreeze", offMapText = "Travel to Fillion Flamebreeze in Valanaar." },
            },
            useClientText = false,
            useClientPin = false,
            priority = 2470,
        },
        {
            id = "turnin-99260-fillions-mission",
            kind = "turnin",
            text = "Turn in Fillion's Mission to Elaadrin Evengale.",
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
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92850 },
                    conditions = {},
                },
            },
            dependsOn = { "accept-99260-fillions-mission" },
            complete = {
                quest = { id = 99260, state = "completed" },
            },
            route = {
                { mapID = 2521, x = 0.6659, y = 0.7992, label = "Elaadrin Evengale", offMapText = "Travel to Elaadrin Evengale in Valanaar." },
            },
            useClientText = false,
            useClientPin = false,
            priority = 2480,
        },
        {
            text = "Accept Catching Wind from Elaadrin Evengale.",
            priority = 2490,
            route = {
                { y = 0.798, mapID = 2521, label = "Elaadrin Evengale", offMapText = "Travel to Zephras Isle.", x = 0.666 },
            },
            dependsOn = { "turnin-99260-fillions-mission" },
            id = "accept-catching-wind",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92840, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 99260 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 6 pieces of Windsong Crawler Meat.",
            priority = 2500,
            route = {
                { y = 0.696, mapID = 2521, label = "Windsong Crawler", offMapText = "Travel to Zephras Isle.", x = 0.512 },
            },
            dependsOn = { "accept-crab-season" },
            id = "objective-crab-season",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93317, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Take the Index Esoteria to the Overlook Standing Stones in Shen'dar Highlands and use it once there. Protect the Index from harm as it gathers data.",
            priority = 2510,
            route = {
                { y = 0.69, mapID = 2521, label = "Index Esoteria", offMapText = "Travel to Zephras Isle.", x = 0.48 },
            },
            dependsOn = { "accept-catching-wind" },
            id = "objective-catching-wind",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92840, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 99260 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Bring Belann Windwood a Wind-Infused Bough from the wind shrine just south of Falaath Village.",
            priority = 2520,
            route = {
                { y = 0.562, mapID = 2521, label = "Falaath Village, then the wind shrine just south", offMapText = "Travel to Zephras Isle.", x = 0.468 },
            },
            dependsOn = { "accept-boughs-in-the-wind" },
            id = "objective-boughs-in-the-wind",
            kind = "objective",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93797, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93791 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Crab Season to Nyalah Brightfire.",
            priority = 2530,
            route = {
                { y = 0.726, mapID = 2521, label = "Nyalah Brightfire", offMapText = "Travel to Zephras Isle.", x = 0.606 },
            },
            dependsOn = { "accept-crab-season", "objective-crab-season" },
            id = "turnin-crab-season",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93317, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Boughs in the Wind to Belann Windwood.",
            priority = 2540,
            route = {
                { y = 0.774, mapID = 2521, label = "Belann Windwood", offMapText = "Travel to Zephras Isle.", x = 0.628 },
            },
            dependsOn = { "accept-boughs-in-the-wind", "objective-boughs-in-the-wind" },
            id = "turnin-boughs-in-the-wind",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93797, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93791 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Catching Wind to Elaadrin Evengale.",
            priority = 2550,
            route = {
                { y = 0.798, mapID = 2521, label = "Elaadrin Evengale", offMapText = "Travel to Zephras Isle.", x = 0.666 },
            },
            dependsOn = { "accept-catching-wind", "objective-catching-wind" },
            id = "turnin-92840-catching-wind",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92840, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 99260 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Avenged Tenfold from Elaadrin Evengale.",
            priority = 2560,
            route = {
                { y = 0.798, mapID = 2521, label = "Elaadrin Evengale", offMapText = "Travel to Zephras Isle.", x = 0.666 },
            },
            dependsOn = { "turnin-92840-catching-wind" },
            id = "accept-avenged-tenfold",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92834, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92840 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Bugged to Valennia Stormfist.",
            priority = 2570,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-bugged", "objective-bugged" },
            id = "turnin-bugged",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93949, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93948 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept In Service of Zephras from Elaadrin Evengale.",
            priority = 2580,
            route = {
                { y = 0.798, mapID = 2521, label = "Elaadrin Evengale", offMapText = "Travel to Zephras Isle.", x = 0.666 },
            },
            dependsOn = { "turnin-avenged-tenfold" },
            id = "accept-in-service-of-zephras",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92860, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92840 },
                    conditions = { faction = "Alliance" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Report to Valennia Stormfist and let her know that High Order is with them in their fight against the Al'Aketh.",
            priority = 2590,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-in-service-of-zephras" },
            id = "turnin-92860-in-service-of-zephras",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92860, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92840 },
                    conditions = { faction = "Alliance" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Broken Construct from Riaani Nightwind.",
            priority = 2600,
            route = {
                { y = 0.73, mapID = 2521, label = "Riaani Nightwind", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "turnin-the-broken-construct-93737" },
            id = "accept-the-broken-construct-93738",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93738, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93737 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Report back to Ayessa Dawnsinger in Valanaar.",
            priority = 2610,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "accept-the-broken-construct-93738" },
            id = "turnin-the-broken-construct-93738",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93738, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93737 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept A Firm Response from Ayessa Dawnsinger.",
            priority = 2620,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "turnin-the-broken-construct-93738" },
            id = "accept-a-firm-response",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93746, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93738 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Confront Belthaan Brightwish along the road to the Shrine of Akir.",
            priority = 2630,
            route = {
                { y = 0.57, mapID = 2521, label = "Belathaan Brightwish", offMapText = "Travel to Zephras Isle.", x = 0.598 },
            },
            dependsOn = { "accept-a-firm-response" },
            id = "objective-a-firm-response",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93746, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93738 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in A Firm Response to Ayessa Dawnsinger.",
            priority = 2640,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "accept-a-firm-response", "objective-a-firm-response" },
            id = "turnin-93746-a-firm-response",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93746, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93738 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept In Service of Zephras from Ayessa Dawnsinger.",
            priority = 2650,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "turnin-93746-a-firm-response", "turnin-blood-for-blood" },
            id = "accept-in-service-of-zephras-92871",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92871, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93746 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Report to Valennia Stormfist and let her know that the Windshapers are with them in their fight against the Al'Aketh.",
            priority = 2660,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-in-service-of-zephras-92871" },
            id = "turnin-92871-in-service-of-zephras",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92871, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93746 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Tower Defense from Valennia Stormfist.",
            priority = 2670,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = {
                "turnin-92579-to-valanaar",
                "turnin-92701-to-valanaar",
                "turnin-92860-in-service-of-zephras",
                "turnin-92871-in-service-of-zephras",
            },
            id = "accept-tower-defense",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93320, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92860, 92871 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 10 Al'Aketh Windstone Charms from Al'Aketh cultists found north of Valanaar at the Gustberry Fields or Shrine of Akir.",
            priority = 2680,
            route = {
                { y = 0.654, mapID = 2521, label = "Al'Aketh cultists in the Gustberry Lowlands", offMapText = "Travel to Zephras Isle.", x = 0.65 },
            },
            dependsOn = { "accept-avenged-tenfold" },
            id = "objective-avenged-tenfold",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92834, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92840 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Report to Yorana Windyreed at the eastern watchtower in the Gustberry Lowlands.",
            priority = 2690,
            route = {
                { y = 0.67, mapID = 2521, label = "Yorana Windyreed", offMapText = "Travel to Zephras Isle.", x = 0.696 },
            },
            dependsOn = { "accept-tower-defense" },
            id = "turnin-tower-defense",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93320, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92860, 92871 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Disrupting Logistics from Yorana Windyreed.",
            priority = 2700,
            route = {
                { y = 0.67, mapID = 2521, label = "Yorana Windyreed", offMapText = "Travel to Zephras Isle.", x = 0.696 },
            },
            dependsOn = { "turnin-tower-defense" },
            id = "accept-disrupting-logistics",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92642, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93320 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Breaking the Breaker from Yorana Windyreed.",
            priority = 2710,
            route = {
                { y = 0.67, mapID = 2521, label = "Yorana Windyreed", offMapText = "Travel to Zephras Isle.", x = 0.696 },
            },
            dependsOn = { "turnin-tower-defense" },
            id = "accept-breaking-the-breaker",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92645, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93320 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 4 Al'Aketh Healers in the Gustberry Lowlands.",
            priority = 2720,
            route = {
                { mapID = 2521, x = 0.6336999999999999, y = 0.6840999999999999, label = "Al'Aketh Healer", offMapText = "Travel to Al'Aketh Healer." },
            },
            dependsOn = { "accept-disrupting-logistics" },
            id = "objective-92642-authored-alaketh-healer",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92642, text = "Al'Aketh Healer", count = 4 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93320 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 8 Al'Aketh Brawlers in the Gustberry Lowlands.",
            priority = 2730,
            route = {
                { mapID = 2521, x = 0.6376, y = 0.6883, label = "Al'Aketh Brawler", offMapText = "Travel to Al'Aketh Brawler." },
            },
            dependsOn = { "accept-disrupting-logistics" },
            id = "objective-92642-authored-alaketh-brawler",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92642, text = "Al'Aketh Brawler", count = 8 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93320 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay Commander Belguilos in the Gustberry Lowlands.",
            priority = 2740,
            route = {
                { y = 0.654, mapID = 2521, label = "Commander Belguilos", offMapText = "Travel to Zephras Isle.", x = 0.656 },
            },
            dependsOn = { "accept-breaking-the-breaker" },
            id = "objective-breaking-the-breaker",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92645, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93320 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Breaking the Breaker to Yorana Windyreed.",
            priority = 2750,
            route = {
                { y = 0.67, mapID = 2521, label = "Yorana Windyreed", offMapText = "Travel to Zephras Isle.", x = 0.696 },
            },
            dependsOn = { "accept-breaking-the-breaker", "objective-breaking-the-breaker" },
            id = "turnin-breaking-the-breaker",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92645, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93320 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Disrupting Logistics to Yorana Windyreed.",
            priority = 2760,
            route = {
                { y = 0.67, mapID = 2521, label = "Yorana Windyreed", offMapText = "Travel to Zephras Isle.", x = 0.696 },
            },
            dependsOn = {
                "accept-disrupting-logistics",
                "objective-92642-authored-alaketh-healer",
                "objective-92642-authored-alaketh-brawler",
            },
            id = "turnin-disrupting-logistics",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92642, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93320 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Return to Valanaar from Yorana Windyreed.",
            priority = 2770,
            route = {
                { y = 0.67, mapID = 2521, label = "Yorana Windyreed", offMapText = "Travel to Zephras Isle.", x = 0.696 },
            },
            dependsOn = { "turnin-disrupting-logistics", "turnin-breaking-the-breaker" },
            id = "accept-return-to-valanaar",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92880, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 92642, 92645 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Bring Yorana's Report to Valennia Stormfist in Valanaar.",
            priority = 2780,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-return-to-valanaar" },
            id = "turnin-return-to-valanaar",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92880, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 92642, 92645 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The High Elder's Request from Valennia Stormfist.",
            priority = 2790,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "turnin-return-to-valanaar" },
            id = "accept-the-high-elders-request",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92881, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92880 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Talaanis Shadowsong in Valanaar.",
            priority = 2800,
            route = {
                { y = 0.766, mapID = 2521, label = "Talaanis Shadowsong", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-the-high-elders-request" },
            id = "turnin-the-high-elders-request",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92881, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92880 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Turncoat from Talaanis Shadowsong.",
            priority = 2810,
            route = {
                { y = 0.766, mapID = 2521, label = "Talaanis Shadowsong", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "turnin-the-high-elders-request" },
            id = "accept-the-turncoat",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92643, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92881 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Avenged Tenfold to Elaadrin Evengale.",
            priority = 2820,
            route = {
                { y = 0.798, mapID = 2521, label = "Elaadrin Evengale", offMapText = "Travel to Zephras Isle.", x = 0.666 },
            },
            dependsOn = { "accept-avenged-tenfold", "objective-avenged-tenfold" },
            id = "turnin-avenged-tenfold",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 6 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92834, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92840 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For The Turncoat: Find the cultist turncoat at the house just inside the highlands northwest of Valanaar.",
            priority = 2830,
            id = "objective-92643-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92643, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92881 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-the-turncoat" },
        },
        {
            text = "Find the cultist turncoat at the house just inside the highlands northwest of Valanaar.",
            priority = 2840,
            route = {
                { y = 0.588, mapID = 2521, label = "Dead Cultist", offMapText = "Travel to Zephras Isle.", x = 0.56 },
            },
            dependsOn = { "accept-the-turncoat", "objective-92643-quest-work" },
            id = "turnin-the-turncoat",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92643, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92881 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Al'Aketh Assassins from Fendaal Windstone.",
            priority = 2850,
            route = {
                { y = 0.61, mapID = 2521, label = "Fendaal Windstone", offMapText = "Travel to Zephras Isle.", x = 0.568 },
            },
            dependsOn = { "turnin-the-turncoat" },
            id = "accept-alaketh-assassins",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98512, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill 10 Al'Aketh Assassins in the Shen'dar Highlands.",
            priority = 2860,
            route = {
                { y = 0.606, mapID = 2521, label = "Al'Aketh Assassin", offMapText = "Travel to Zephras Isle.", x = 0.56 },
            },
            dependsOn = { "accept-alaketh-assassins" },
            id = "objective-alaketh-assassins",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98512, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Unfortunate News from Dead Cultist.",
            priority = 2870,
            route = {
                { y = 0.588, mapID = 2521, label = "Dead Cultist", offMapText = "Travel to Zephras Isle.", x = 0.56 },
            },
            dependsOn = { "turnin-the-turncoat" },
            id = "accept-unfortunate-news",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92644, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92643 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Al'Aketh Assassins to Fendaal Windstone.",
            priority = 2880,
            route = {
                { y = 0.61, mapID = 2521, label = "Fendaal Windstone", offMapText = "Travel to Zephras Isle.", x = 0.568 },
            },
            dependsOn = { "accept-alaketh-assassins", "objective-alaketh-assassins" },
            id = "turnin-alaketh-assassins",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98512, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Deliver the glowing crystal to Talaanis Shadowsong in Valanaar.",
            priority = 2890,
            route = {
                { y = 0.766, mapID = 2521, label = "Talaanis Shadowsong", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-unfortunate-news" },
            id = "turnin-unfortunate-news",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92644, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92643 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Cult's True Plans from Talaanis Shadowsong.",
            priority = 2900,
            route = {
                { y = 0.766, mapID = 2521, label = "Talaanis Shadowsong", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "turnin-unfortunate-news" },
            id = "accept-the-cults-true-plans",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94568, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92644 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For The Cult's True Plans: Speak with Talaanis Shadowsong and observe the conversation.",
            priority = 2910,
            id = "objective-94568-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94568, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92644 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-the-cults-true-plans" },
        },
        {
            text = "Speak with Talaanis Shadowsong and observe the conversation.",
            priority = 2920,
            route = {
                { y = 0.766, mapID = 2521, label = "Talaanis Shadowsong", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-the-cults-true-plans", "objective-94568-quest-work" },
            id = "turnin-the-cults-true-plans",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94568, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92644 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-the-skybreaker-bulwark",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 94003,
            priority = 2930,
        },
        {
            text = "Accept The Skybreaker Bulwark from Seena Skybreaker.",
            priority = 2940,
            route = {
                { y = 0.728, mapID = 2521, label = "Seena Skybreaker", offMapText = "Travel to Zephras Isle.", x = 0.598 },
            },
            dependsOn = { "turnin-the-cults-true-plans" },
            id = "accept-the-skybreaker-bulwark",
            kind = "accept",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94003, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Reclaim the Skybreaker Bulwark from Zaal Stormshield at the Shrine of Akir.",
            priority = 2950,
            route = {
                { y = 0.504, mapID = 2521, label = "Zaal Stormshield", offMapText = "Travel to Zephras Isle.", x = 0.566 },
            },
            dependsOn = { "accept-the-skybreaker-bulwark" },
            id = "objective-the-skybreaker-bulwark",
            kind = "objective",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94003, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Skybreaker Bulwark to Seena Skybreaker.",
            priority = 2960,
            route = {
                { y = 0.728, mapID = 2521, label = "Seena Skybreaker", offMapText = "Travel to Zephras Isle.", x = 0.598 },
            },
            dependsOn = { "accept-the-skybreaker-bulwark", "objective-the-skybreaker-bulwark" },
            id = "turnin-the-skybreaker-bulwark",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94003, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Travel to Shadowgale Forest and collect 8 Shriekling Talons for Iaadaria Bitterwind in Valanaar.",
            priority = 2970,
            route = {
                { y = 0.382, mapID = 2521, label = "Shadowgale Shriekling", offMapText = "Travel to Zephras Isle.", x = 0.622 },
            },
            dependsOn = { "accept-unwelcome-visitors" },
            id = "objective-unwelcome-visitors",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92741, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92699 },
                    conditions = { faction = "Alliance" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Strange Hermit from Strange Hermit.",
            priority = 2980,
            route = {
                { y = 0.39, mapID = 2521, label = "Strange Hermit", offMapText = "Travel to Zephras Isle.", x = 0.54 },
            },
            dependsOn = { "turnin-the-cults-true-plans" },
            id = "accept-the-strange-hermit",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93159, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For The Strange Hermit: Speak with the Strange Hermit in the Shadowgale Forest and learn more about him.",
            priority = 2990,
            id = "objective-93159-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93159, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-the-strange-hermit" },
        },
        {
            text = "Speak with the Strange Hermit in the Shadowgale Forest and learn more about him.",
            priority = 3000,
            route = {
                { y = 0.39, mapID = 2521, label = "Strange Hermit", offMapText = "Travel to Zephras Isle.", x = 0.54 },
            },
            dependsOn = { "accept-the-strange-hermit", "objective-93159-quest-work" },
            id = "turnin-the-strange-hermit",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93159, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Forest's Bounty from Strange Hermit.",
            priority = 3010,
            route = {
                { y = 0.39, mapID = 2521, label = "Strange Hermit", offMapText = "Travel to Zephras Isle.", x = 0.54 },
            },
            dependsOn = { "turnin-the-strange-hermit" },
            id = "accept-the-forests-bounty",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93160, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Free the Hollows from Strange Hermit.",
            priority = 3020,
            route = {
                { y = 0.39, mapID = 2521, label = "Strange Hermit", offMapText = "Travel to Zephras Isle.", x = 0.54 },
            },
            dependsOn = { "turnin-the-strange-hermit" },
            id = "accept-free-the-hollows",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93172, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Find and speak with Elegael Thornpaw in the northeastern part of Shadowgale Forest.",
            priority = 3030,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "accept-unnerving-silence" },
            id = "turnin-94484-unnerving-silence",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94484, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 94493 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Tears of the Lady from Elegael Thornpaw.",
            priority = 3040,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "turnin-94484-unnerving-silence" },
            id = "accept-tears-of-the-lady",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94485, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94484, 94493 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Feathers for Binding from Elegael Thornpaw.",
            priority = 3050,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "turnin-94484-unnerving-silence" },
            id = "accept-feathers-for-binding",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94486, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94484, 94493 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Unwanted and Unworthy from Elegael Thornpaw.",
            priority = 3060,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "turnin-94484-unnerving-silence" },
            id = "accept-unwanted-and-unworthy",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94487, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94484, 94493 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 8 Lady's Tear Moss from the bases of trees around Elegael Thornpaw.",
            priority = 3070,
            route = {
                { y = 0.392, mapID = 2521, label = "Lady's Tear Moss around Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "accept-tears-of-the-lady" },
            id = "objective-tears-of-the-lady",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94485, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94484, 94493 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 10 Bloodied Heirlooms from Al'Aketh Footsoldiers and Al'Aketh Stormchasers in the Shadowgale Forest.",
            priority = 3080,
            route = {
                { y = 0.368, mapID = 2521, label = "Al'Aketh Stormchaser", offMapText = "Travel to Zephras Isle.", x = 0.638 },
            },
            dependsOn = { "accept-unwanted-and-unworthy" },
            id = "objective-unwanted-and-unworthy",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94487, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94484, 94493 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Mercy Falls on Deaf Ears from Vayn Moongaze.",
            priority = 3090,
            route = {
                { y = 0.36, mapID = 2521, label = "Vayn Moongaze", offMapText = "Travel to Zephras Isle.", x = 0.638 },
            },
            dependsOn = { "objective-unwanted-and-unworthy" },
            id = "accept-mercy-falls-on-deaf-ears",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93165, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94484 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 10 Al'Aketh Cultist's Ears from the Al'Aketh cultists in Shadowgale Forest, the Shine of Akir, or Gustberry Lowlands.",
            priority = 3100,
            route = {
                { y = 0.504, mapID = 2521, label = "Zaal Stormshield", offMapText = "Travel to Zephras Isle.", x = 0.566 },
            },
            dependsOn = { "accept-mercy-falls-on-deaf-ears" },
            id = "objective-mercy-falls-on-deaf-ears",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93165, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94484 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Mercy Falls on Deaf Ears to Vayn Moongaze.",
            priority = 3110,
            route = {
                { y = 0.36, mapID = 2521, label = "Vayn Moongaze", offMapText = "Travel to Zephras Isle.", x = 0.638 },
            },
            dependsOn = { "accept-mercy-falls-on-deaf-ears", "objective-mercy-falls-on-deaf-ears" },
            id = "turnin-mercy-falls-on-deaf-ears",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93165, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94484 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 20 feathers from the Shadowgale Shrieklings in Shadowgale Forest.",
            priority = 3120,
            route = {
                { y = 0.382, mapID = 2521, label = "Shadowgale Shriekling", offMapText = "Travel to Zephras Isle.", x = 0.622 },
            },
            dependsOn = { "accept-feathers-for-binding" },
            id = "objective-feathers-for-binding",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94486, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94484, 94493 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Tears of the Lady to Elegael Thornpaw.",
            priority = 3130,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "accept-tears-of-the-lady", "objective-tears-of-the-lady" },
            id = "turnin-tears-of-the-lady",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94485, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94484, 94493 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Unwanted and Unworthy to Elegael Thornpaw.",
            priority = 3140,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "accept-unwanted-and-unworthy", "objective-unwanted-and-unworthy" },
            id = "turnin-94487-unwanted-and-unworthy",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94487, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94484, 94493 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Feathers for Binding to Elegael Thornpaw.",
            priority = 3150,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "accept-feathers-for-binding", "objective-feathers-for-binding" },
            id = "turnin-94486-feathers-for-binding",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94486, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94484, 94493 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Ties That Bind from Elegael Thornpaw.",
            priority = 3160,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "turnin-94484-unnerving-silence" },
            id = "accept-the-ties-that-bind",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94488, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94486, 94487 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Kill Commander Haalien and bring his head to Elegael Thornpaw in the Shadowgale Forest.",
            priority = 3170,
            route = {
                { y = 0.362, mapID = 2521, label = "Commander Haalien", offMapText = "Travel to Zephras Isle.", x = 0.654 },
            },
            dependsOn = { "accept-the-ties-that-bind" },
            id = "objective-the-ties-that-bind",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94488, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94486, 94487 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Ties That Bind to Elegael Thornpaw.",
            priority = 3180,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "accept-the-ties-that-bind", "objective-the-ties-that-bind" },
            id = "turnin-the-ties-that-bind",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94488, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94486, 94487 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-ripped-missive",
            kind = "note",
            instructionOnly = true,
            conditions = {
                race = { 95, 96 },
            },
            text = "Loot Ripped Missive from Commander Haalien. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Ripped Missive", minCount = 1 },
                    },
                    {
                        quest = { id = 94490, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 2521, x = 0.6553, y = 0.3632, label = "Commander Haalien", offMapText = "Travel to Commander Haalien." },
            },
            dependsOn = {},
            priority = 3190,
        },
        {
            id = "level-before-accept-ripped-missive",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                race = { 95, 96 },
            },
            complete = {
                level = { min = 9 },
            },
            requiredLevel = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94490,
            priority = 3200,
        },
        {
            text = "Use the Ripped Missive to accept Ripped Missive.",
            priority = 3210,
            dependsOn = { "turnin-the-ties-that-bind" },
            id = "accept-ripped-missive",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94490, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94486, 94487 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Bring the Ripped Missive to Elegael Thornpaw in the Shadowgale Forest.",
            priority = 3220,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "accept-ripped-missive" },
            id = "turnin-94490-ripped-missive",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94490, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94486, 94487 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Destroy 10 Wind Hollows in the Ruins of Ban'aethal. They can also drop a Rusty Gadget, which starts a quest.",
            priority = 3230,
            route = {
                { y = 0.294, mapID = 2521, label = "Wind Hollow", offMapText = "Travel to Zephras Isle.", x = 0.57 },
            },
            dependsOn = { "accept-free-the-hollows" },
            id = "objective-free-the-hollows",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93172, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 8 Abandoned Belongings in the Ruins of Ban'aethal.",
            priority = 3240,
            route = {
                { y = 0.294, mapID = 2521, label = "Ruins of Ban'aethal", offMapText = "Travel to Zephras Isle.", x = 0.57 },
            },
            dependsOn = { "accept-aid-for-the-refugees" },
            id = "objective-aid-for-the-refugees",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94896, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For The Forest's Bounty: Gather 8 Shadowgale Acorns in Shadowgale Forest.",
            priority = 3250,
            id = "objective-93160-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93160, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-the-forests-bounty" },
        },
        {
            text = "Gather 8 Shadowgale Acorns in Shadowgale Forest.",
            priority = 3260,
            route = {
                { y = 0.39, mapID = 2521, label = "Strange Hermit", offMapText = "Travel to Zephras Isle.", x = 0.54 },
            },
            dependsOn = { "accept-the-forests-bounty", "objective-93160-quest-work" },
            id = "turnin-the-forests-bounty",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93160, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Free the Hollows to Strange Hermit.",
            priority = 3270,
            route = {
                { y = 0.39, mapID = 2521, label = "Strange Hermit", offMapText = "Travel to Zephras Isle.", x = 0.54 },
            },
            dependsOn = { "accept-free-the-hollows", "objective-free-the-hollows" },
            id = "turnin-free-the-hollows",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93172, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Aid For The Refugees to Ealaane Nimbuswalker.",
            priority = 3280,
            route = {
                { y = 0.744, mapID = 2521, label = "Ealaane Nimbuswalker", offMapText = "Travel to Zephras Isle.", x = 0.658 },
            },
            dependsOn = { "accept-aid-for-the-refugees", "objective-aid-for-the-refugees" },
            id = "turnin-aid-for-the-refugees",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94896, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Fate of a Loved One from Ealaane Nimbuswalker.",
            priority = 3290,
            route = {
                { y = 0.744, mapID = 2521, label = "Ealaane Nimbuswalker", offMapText = "Travel to Zephras Isle.", x = 0.658 },
            },
            dependsOn = { "turnin-aid-for-the-refugees" },
            id = "accept-the-fate-of-a-loved-one",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94897, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Find Resaan in the Ruins of Ban'aethal.",
            priority = 3300,
            route = {
                { y = 0.294, mapID = 2521, label = "Resaan Nimbuswalker", offMapText = "Travel to Zephras Isle.", x = 0.57 },
            },
            dependsOn = { "accept-the-fate-of-a-loved-one" },
            id = "objective-the-fate-of-a-loved-one",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94897, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Fate of a Loved One to Ealaane Nimbuswalker.",
            priority = 3310,
            route = {
                { y = 0.744, mapID = 2521, label = "Ealaane Nimbuswalker", offMapText = "Travel to Zephras Isle.", x = 0.658 },
            },
            dependsOn = { "accept-the-fate-of-a-loved-one", "objective-the-fate-of-a-loved-one" },
            id = "turnin-the-fate-of-a-loved-one",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94897, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Unwelcome Visitors to Iaadaria Bitterwind.",
            priority = 3320,
            route = {
                { y = 0.796, mapID = 2521, label = "Iaadaria Bitterwind", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-unwelcome-visitors", "objective-unwelcome-visitors" },
            id = "turnin-unwelcome-visitors",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 8 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 92741, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92699 },
                    conditions = { faction = "Alliance" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept A Sacrifice in Vain from Elegael Thornpaw.",
            priority = 3330,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "turnin-94484-unnerving-silence" },
            id = "accept-a-sacrifice-in-vain",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94493, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 94484 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Elegael Thornpaw in the northeastern part of Shadowgale Forest.",
            priority = 3340,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "accept-a-sacrifice-in-vain" },
            id = "turnin-a-sacrifice-in-vain",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94493, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 94484 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Wounds of Betrayal from Elegael Thornpaw.",
            priority = 3350,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "turnin-tears-of-the-lady", "turnin-94486-feathers-for-binding", "turnin-a-sacrifice-in-vain" },
            id = "accept-the-wounds-of-betrayal",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94489, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94486, 94487 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Enter the Nightfang Den and heal 7 injured druids.",
            priority = 3360,
            route = {
                { mapID = 2521, x = 0.6496, y = 0.34950000000000003, label = "druid", offMapText = "Travel to druid." },
            },
            dependsOn = { "accept-the-wounds-of-betrayal" },
            id = "objective-94489-authored-druid",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 94489, text = "druid", count = 7 },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94486, 94487 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Find and speak with Jorel Windsinger inside the Nightfang Den.",
            priority = 3370,
            route = {
                { mapID = 2521, x = 0.6448, y = 0.34740000000000004, label = "Jorel Windsinger", offMapText = "Travel to Jorel Windsinger." },
            },
            dependsOn = { "accept-the-wounds-of-betrayal" },
            id = "objective-94489-authored-jorel-windsinger",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 94489, text = "Jorel Windsinger" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94486, 94487 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in The Wounds of Betrayal to Elegael Thornpaw.",
            priority = 3380,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = {
                "accept-the-wounds-of-betrayal",
                "objective-94489-authored-druid",
                "objective-94489-authored-jorel-windsinger",
            },
            id = "turnin-the-wounds-of-betrayal",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94489, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94486, 94487 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Fate of the Den from Elegael Thornpaw.",
            priority = 3390,
            route = {
                { y = 0.392, mapID = 2521, label = "Elegael Thornpaw", offMapText = "Travel to Zephras Isle.", x = 0.616 },
            },
            dependsOn = { "turnin-the-wounds-of-betrayal" },
            id = "accept-the-fate-of-the-den",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94491, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94490 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Give the missive to Lotheluum in Valanaar and tell him what has transpired.",
            priority = 3400,
            route = {
                { y = 0.75, mapID = 2521, label = "Lotheluum Starbreeze", offMapText = "Travel to Zephras Isle.", x = 0.64 },
            },
            dependsOn = { "accept-the-fate-of-the-den" },
            id = "turnin-the-fate-of-the-den",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94491, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94490 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-the-great-ursera-spirit",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 94006,
            priority = 3410,
        },
        {
            text = "Accept The Great Ursera Spirit from Lotheluum Starbreeze.",
            priority = 3420,
            route = {
                { y = 0.75, mapID = 2521, label = "Lotheluum Starbreeze", offMapText = "Travel to Zephras Isle.", x = 0.64 },
            },
            dependsOn = { "turnin-the-fate-of-the-den" },
            id = "accept-the-great-ursera-spirit",
            kind = "accept",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94006, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Urs'endris near the falls northeast of Valanaar.",
            priority = 3430,
            route = {
                { y = 0.616, mapID = 2521, label = "Urs'endris", offMapText = "Travel to Zephras Isle.", x = 0.698 },
            },
            dependsOn = { "accept-the-great-ursera-spirit" },
            id = "turnin-the-great-ursera-spirit",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94006, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Strength and Mercy from Urs'endris.",
            priority = 3440,
            route = {
                { y = 0.616, mapID = 2521, label = "Urs'endris", offMapText = "Travel to Zephras Isle.", x = 0.698 },
            },
            dependsOn = { "turnin-the-great-ursera-spirit" },
            id = "accept-strength-and-mercy",
            kind = "accept",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94638, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94006 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Find and kill Ur'endra in the Shen'dar Highlands.",
            priority = 3450,
            route = {
                { y = 0.654, mapID = 2521, label = "Ur'endra", offMapText = "Travel to Zephras Isle.", x = 0.54 },
            },
            dependsOn = { "accept-strength-and-mercy" },
            id = "objective-strength-and-mercy",
            kind = "objective",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94638, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94006 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Strength and Mercy to Urs'endris.",
            priority = 3460,
            route = {
                { y = 0.616, mapID = 2521, label = "Urs'endris", offMapText = "Travel to Zephras Isle.", x = 0.698 },
            },
            dependsOn = { "accept-strength-and-mercy", "objective-strength-and-mercy" },
            id = "turnin-strength-and-mercy",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94638, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94006 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 94007,
            priority = 3470,
        },
        {
            text = "Accept Taming the Beast from Elayaa Easewind.",
            priority = 3480,
            route = {
                { y = 0.442, mapID = 2521, label = "Elayaa Easewind", offMapText = "Travel to Zephras Isle.", x = 0.452 },
            },
            dependsOn = { "turnin-the-fate-of-the-den" },
            id = "accept-taming-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94007, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Report to Quel'ana Quickgale in Valanaar.",
            priority = 3490,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", offMapText = "Travel to Zephras Isle.", x = 0.596 },
            },
            dependsOn = { "accept-taming-the-beast" },
            id = "turnin-taming-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94007, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Taming the Beast from Quel'ana Quickgale.",
            priority = 3500,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", offMapText = "Travel to Zephras Isle.", x = 0.596 },
            },
            dependsOn = { "turnin-taming-the-beast" },
            id = "accept-taming-the-beast-94978",
            kind = "accept",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94978, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3510,
            id = "objective-94978-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-taming-the-beast-94978" },
            classAction = "objective-94978-quest-work",
        },
        {
            text = "Use the Taming Rod to tame a Windsong Crawler found near bodies of water.",
            priority = 3520,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", offMapText = "Travel to Zephras Isle.", x = 0.596 },
            },
            dependsOn = { "accept-taming-the-beast-94978", "objective-94978-quest-work" },
            id = "turnin-taming-the-beast-94978",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94978, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Taming the Beast from Quel'ana Quickgale.",
            priority = 3530,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", offMapText = "Travel to Zephras Isle.", x = 0.596 },
            },
            dependsOn = { "turnin-taming-the-beast-94978" },
            id = "accept-taming-the-beast-94979",
            kind = "accept",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94979, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94978 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3540,
            id = "objective-94979-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-taming-the-beast-94979" },
            classAction = "objective-94979-quest-work",
        },
        {
            text = "Use the Taming Rod to tame an Ornery Galestrider in the Gustberry Lowlands.",
            priority = 3550,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", offMapText = "Travel to Zephras Isle.", x = 0.596 },
            },
            dependsOn = { "accept-taming-the-beast-94979", "objective-94979-quest-work" },
            id = "turnin-taming-the-beast-94979",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94979, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94978 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Taming the Beast from Quel'ana Quickgale.",
            priority = 3560,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", offMapText = "Travel to Zephras Isle.", x = 0.596 },
            },
            dependsOn = { "turnin-taming-the-beast-94979" },
            id = "accept-taming-the-beast-94013",
            kind = "accept",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94013, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94979 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3570,
            id = "objective-94013-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-taming-the-beast-94013" },
            classAction = "objective-94013-quest-work",
        },
        {
            text = "Use the Taming Rod to tame a Vuldren Alpha in the Gustberry Lowlands. Practice your skills, then return the Taming Rod to Quel'ana Quickgale in Valanaar.",
            priority = 3580,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", offMapText = "Travel to Zephras Isle.", x = 0.596 },
            },
            dependsOn = { "accept-taming-the-beast-94013", "objective-94013-quest-work" },
            id = "turnin-taming-the-beast-94013",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94013, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94979 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Training the Beast from Quel'ana Quickgale.",
            priority = 3590,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", offMapText = "Travel to Zephras Isle.", x = 0.596 },
            },
            dependsOn = { "turnin-taming-the-beast-94013" },
            id = "accept-training-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94050, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94013 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak to Quel'dora Quickgale in Valanaar.",
            priority = 3600,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'dora Quickgale", offMapText = "Travel to Zephras Isle.", x = 0.596 },
            },
            dependsOn = { "accept-training-the-beast" },
            id = "turnin-training-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 94050, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94013 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Call of Fire from Olariaan Swiftburn.",
            priority = 3610,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", offMapText = "Travel to Zephras Isle.", x = 0.512 },
            },
            dependsOn = { "turnin-call-of-fire" },
            id = "accept-call-of-fire-97244",
            kind = "accept",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97244, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 97243 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay Skypriest Faladiel in the Gustberry Lowlands and collect Faladiel's Heart.",
            priority = 3620,
            route = {
                { y = 0.638, mapID = 2521, label = "Skypriest Faladiel", offMapText = "Travel to Zephras Isle.", x = 0.644 },
            },
            dependsOn = { "accept-call-of-fire-97244" },
            id = "objective-call-of-fire-97244",
            kind = "objective",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97244, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 97243 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Call of Fire to Olariaan Swiftburn.",
            priority = 3630,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", offMapText = "Travel to Zephras Isle.", x = 0.512 },
            },
            dependsOn = { "accept-call-of-fire-97244", "objective-call-of-fire-97244" },
            id = "turnin-call-of-fire-97244",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97244, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 97243 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Call of Fire from Olariaan Swiftburn.",
            priority = 3640,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", offMapText = "Travel to Zephras Isle.", x = 0.512 },
            },
            dependsOn = { "turnin-call-of-fire-97244" },
            id = "accept-call-of-fire-97245",
            kind = "accept",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97245, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 97244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Find the home of Kuramaa in the Shen'dar Highlands, and defeat the spirit in combat. Bring Kuramaa's Mask to Olariaan Swiftburn in the Gustberry Lowlands when you are victorious.",
            priority = 3650,
            route = {
                { y = 0.69, mapID = 2521, label = "Kuramaa", offMapText = "Travel to Zephras Isle.", x = 0.424 },
            },
            dependsOn = { "accept-call-of-fire-97245" },
            id = "objective-call-of-fire-97245",
            kind = "objective",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97245, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 97244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Call of Fire to Olariaan Swiftburn.",
            priority = 3660,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", offMapText = "Travel to Zephras Isle.", x = 0.512 },
            },
            dependsOn = { "accept-call-of-fire-97245", "objective-call-of-fire-97245" },
            id = "turnin-call-of-fire-97245",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97245, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 97244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Call of Fire from Olariaan Swiftburn.",
            priority = 3670,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", offMapText = "Travel to Zephras Isle.", x = 0.512 },
            },
            dependsOn = { "turnin-call-of-fire-97245" },
            id = "accept-call-of-fire-97257",
            kind = "accept",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97257, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 97245 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 3680,
            route = {
                { mapID = 2521, x = 0.512, y = 0.859, label = "Brazier of Offering", offMapText = "Travel to Brazier of Offering on Zephras Isle." },
            },
            dependsOn = { "accept-call-of-fire-97257" },
            id = "objective-call-of-fire-97257-ritual",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-97257-quest-work-ritual",
        },
        {
            priority = 3690,
            route = {
                { mapID = 2521, x = 0.5835, y = 0.7884, label = "Brazier of Eternal Flame", offMapText = "Travel to Brazier of Eternal Flame on Zephras Isle." },
            },
            dependsOn = { "accept-call-of-fire-97257" },
            id = "objective-call-of-fire-97257-deliver-flame",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-97257-quest-work-deliver-flame",
        },
        {
            text = "Turn in Call of Fire to Sessaria Skystride.",
            priority = 3700,
            route = {
                { y = 0.784, mapID = 2521, label = "Sessaria Skystride", offMapText = "Travel to Zephras Isle.", x = 0.582 },
            },
            dependsOn = {
                "accept-call-of-fire-97257",
                "objective-call-of-fire-97257-ritual",
                "objective-call-of-fire-97257-deliver-flame",
            },
            id = "turnin-call-of-fire-97257",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97257, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 97245 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Blood for Blood from Ayessa Dawnsinger.",
            priority = 3710,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "turnin-92700-the-grand-skyseer" },
            id = "accept-blood-for-blood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93740, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93746 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 10 Al'Aketh Windstone Charms from the corpses of Al'Aketh cultists in the Gustberry Lowlands.",
            priority = 3720,
            route = {
                { y = 0.654, mapID = 2521, label = "Al'Aketh cultists in the Gustberry Lowlands", offMapText = "Travel to Zephras Isle.", x = 0.65 },
            },
            dependsOn = { "accept-blood-for-blood" },
            id = "objective-blood-for-blood",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93740, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93746 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Blood for Blood to Ayessa Dawnsinger.",
            priority = 3730,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "accept-blood-for-blood", "objective-blood-for-blood" },
            id = "turnin-blood-for-blood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93740, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93746 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Desperate Times from Talaanis Shadowsong.",
            priority = 3740,
            route = {
                { y = 0.766, mapID = 2521, label = "Talaanis Shadowsong", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "turnin-the-cults-true-plans", "turnin-92860-in-service-of-zephras", "turnin-92871-in-service-of-zephras" },
            id = "accept-desperate-times",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92640, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94568 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Valennia Stormfist in Valanaar and follow her instructions.",
            priority = 3750,
            route = {
                { mapID = 2521, x = 0.6622, y = 0.7663, label = "Valennia Stormfist", offMapText = "Travel to Valennia Stormfist." },
            },
            dependsOn = { "accept-desperate-times" },
            id = "objective-92640-authored-valennia-stormfist",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92640, text = "Valennia Stormfist" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94568 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Ayessa Dawnsinger in Valanaar and follow her instructions.",
            priority = 3760,
            route = {
                { mapID = 2521, x = 0.5915, y = 0.7973, label = "Ayessa Dawnsinger", offMapText = "Travel to Ayessa Dawnsinger." },
            },
            dependsOn = { "accept-desperate-times" },
            id = "objective-92640-authored-ayessa-dawnsinger",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92640, text = "Ayessa Dawnsinger" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94568 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Elaadrin Evengale in Valanaar and follow his instructions.",
            priority = 3770,
            route = {
                { mapID = 2521, x = 0.6659, y = 0.7992, label = "Elaadrin Evengale", offMapText = "Travel to Elaadrin Evengale." },
            },
            dependsOn = { "accept-desperate-times" },
            id = "objective-92640-authored-elaadrin-evengale",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92640, text = "Elaadrin Evengale" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94568 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Desperate Times to Valennia Stormfist.",
            priority = 3780,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = {
                "accept-desperate-times",
                "objective-92640-authored-valennia-stormfist",
                "objective-92640-authored-ayessa-dawnsinger",
                "objective-92640-authored-elaadrin-evengale",
            },
            id = "turnin-desperate-times",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92640, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94568 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Prepare for Battle from Valennia Stormfist.",
            priority = 3790,
            route = {
                { y = 0.766, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "turnin-desperate-times" },
            id = "accept-prepare-for-battle",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93065, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92640 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For Prepare for Battle: Speak with Valennia Stormfist in the Gustberry Lowlands.",
            priority = 3800,
            id = "objective-93065-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93065, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92640 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-prepare-for-battle" },
        },
        {
            text = "Speak with Valennia Stormfist in the Gustberry Lowlands.",
            priority = 3810,
            route = {
                { y = 0.71, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.612 },
            },
            dependsOn = { "accept-prepare-for-battle", "objective-93065-quest-work" },
            id = "turnin-prepare-for-battle",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93065, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92640 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Making Our Move from Valennia Stormfist.",
            priority = 3820,
            route = {
                { y = 0.71, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.612 },
            },
            dependsOn = { "turnin-prepare-for-battle" },
            id = "accept-making-our-move",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92947, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93065 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 8 Al'Aketh Guardians at the Shrine of Akir.",
            priority = 3830,
            route = {
                { mapID = 2521, x = 0.5814, y = 0.5104, label = "Al'Aketh Guardian", offMapText = "Travel to Al'Aketh Guardian." },
            },
            dependsOn = { "accept-making-our-move" },
            id = "objective-92947-authored-alaketh-guardian",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92947, text = "Al'Aketh Guardian", count = 8 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93065 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 6 Al'Aketh Spiritcallers at the Shrine of Akir.",
            priority = 3840,
            route = {
                { mapID = 2521, x = 0.5891, y = 0.5173, label = "Al'Aketh Spiritcaller", offMapText = "Travel to Al'Aketh Spiritcaller." },
            },
            dependsOn = { "accept-making-our-move" },
            id = "objective-92947-authored-alaketh-spiritcaller",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92947, text = "Al'Aketh Spiritcaller", count = 6 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93065 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Slay 6 Al'Aketh Blademasters at the Shrine of Akir.",
            priority = 3850,
            route = {
                { mapID = 2521, x = 0.5924, y = 0.5109, label = "Al'Aketh Blademaster", offMapText = "Travel to Al'Aketh Blademaster." },
            },
            dependsOn = { "accept-making-our-move" },
            id = "objective-92947-authored-alaketh-blademaster",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92947, text = "Al'Aketh Blademaster", count = 6 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93065 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Report to Hyusaa Quickbreeze at the Shrine of Akir after defeating the cultists.",
            priority = 3860,
            route = {
                { mapID = 2521, x = 0.6377, y = 0.5051, label = "Hyusaa Quickbreeze", offMapText = "Travel to Hyusaa Quickbreeze." },
            },
            dependsOn = { "accept-making-our-move" },
            id = "objective-92947-authored-hyusaa-quickbreeze",
            kind = "objective",
            conditions = {
                all = {
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 92947, text = "Hyusaa Quickbreeze" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93065 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Making Our Move to Hyusaa Quickbreeze.",
            priority = 3870,
            route = {
                { y = 0.504, mapID = 2521, label = "Hyusaa Quickbreeze", offMapText = "Travel to Zephras Isle.", x = 0.638 },
            },
            dependsOn = {
                "accept-making-our-move",
                "objective-92947-authored-alaketh-guardian",
                "objective-92947-authored-alaketh-spiritcaller",
                "objective-92947-authored-alaketh-blademaster",
                "objective-92947-authored-hyusaa-quickbreeze",
            },
            id = "turnin-making-our-move",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92947, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93065 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Inner Sanctum from Hyusaa Quickbreeze.",
            priority = 3880,
            route = {
                { y = 0.504, mapID = 2521, label = "Hyusaa Quickbreeze", offMapText = "Travel to Zephras Isle.", x = 0.638 },
            },
            dependsOn = { "turnin-making-our-move" },
            id = "accept-the-inner-sanctum",
            kind = "accept",
            conditions = {
                all = {
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93958, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Valennia Stormfist inside the inner sanctum at the Shrine of Akir.",
            priority = 3890,
            route = {
                { y = 0.504, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.652 },
            },
            dependsOn = { "accept-the-inner-sanctum" },
            id = "turnin-the-inner-sanctum",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93958, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Confront Lorthuna from Valennia Stormfist.",
            priority = 3900,
            route = {
                { y = 0.504, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.652 },
            },
            dependsOn = { "turnin-the-inner-sanctum" },
            id = "accept-confront-lorthuna-93835",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93835, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93958 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Take the portal to the Rohashi Spires overhead and join Elaadrin Evengale and Ayessa Dawnsinger in their confrontation with High Priestess Lorthuna.",
            priority = 3910,
            route = {
                { y = 0.798, mapID = 2521, label = "Elaadrin Evengale", offMapText = "Travel to Zephras Isle.", x = 0.666 },
            },
            dependsOn = { "accept-confront-lorthuna-93835" },
            id = "turnin-confront-lorthuna-93835",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93835, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93958 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Fate of Zephras from Elaadrin Evengale.",
            priority = 3920,
            route = {
                { y = 0.798, mapID = 2521, label = "Elaadrin Evengale", offMapText = "Travel to Zephras Isle.", x = 0.666 },
            },
            dependsOn = { "turnin-confront-lorthuna-93835" },
            id = "accept-the-fate-of-zephras-94369",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94369, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93835 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For The Fate of Zephras: Speak with Talaanis Shadowsong in Valanaar.",
            priority = 3930,
            id = "objective-94369-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94369, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93835 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-the-fate-of-zephras-94369" },
        },
        {
            text = "Speak with Talaanis Shadowsong in Valanaar.",
            priority = 3940,
            route = {
                { y = 0.766, mapID = 2521, label = "Talaanis Shadowsong", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-the-fate-of-zephras-94369", "objective-94369-quest-work" },
            id = "turnin-the-fate-of-zephras-94369",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94369, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93835 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept What Comes Next from Talaanis Shadowsong.",
            priority = 3950,
            route = {
                { y = 0.766, mapID = 2521, label = "Talaanis Shadowsong", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "turnin-the-fate-of-zephras-94369" },
            id = "accept-what-comes-next",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93089, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94369 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Elaadrin Evengale when you are prepared to leave Zephras Isle.",
            priority = 3960,
            route = {
                { y = 0.798, mapID = 2521, label = "Elaadrin Evengale", offMapText = "Travel to Zephras Isle.", x = 0.666 },
            },
            dependsOn = { "accept-what-comes-next" },
            id = "turnin-what-comes-next",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93089, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94369 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Magical City of Dalaran from Elaadrin Evengale.",
            priority = 3970,
            route = {
                { y = 0.798, mapID = 2521, label = "Elaadrin Evengale", offMapText = "Travel to Zephras Isle.", x = 0.666 },
            },
            dependsOn = { "turnin-what-comes-next" },
            id = "accept-the-magical-city-of-dalaran",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94946, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93089 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Take the skycutter from Valanaar to Dalaran and turn in The Magical City of Dalaran to Danaaris Stargale.",
            priority = 3980,
            route = {
                { y = 0.562, mapID = 1416, label = "Danaaris Stargale in Dalaran", offMapText = "Take the Valanaar zeppelin toward Dalaran.", x = 0.124 },
            },
            dependsOn = { "accept-the-magical-city-of-dalaran" },
            id = "turnin-the-magical-city-of-dalaran",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94946, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93089 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Confront Lorthuna from Valennia Stormfist.",
            priority = 3990,
            route = {
                { y = 0.504, mapID = 2521, label = "Valennia Stormfist", offMapText = "Travel to Zephras Isle.", x = 0.652 },
            },
            dependsOn = { "turnin-the-inner-sanctum" },
            id = "accept-confront-lorthuna",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92646, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93958 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Take the portal to the Rohashi Spires overhead and join Elaadrin Evengale and Ayessa Dawnsinger in their confrontation with the High Priestess Lorthuna.",
            priority = 4000,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "accept-confront-lorthuna" },
            id = "turnin-confront-lorthuna",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 92646, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93958 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Fate of Zephras from Ayessa Dawnsinger.",
            priority = 4010,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "turnin-confront-lorthuna" },
            id = "accept-the-fate-of-zephras",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93836, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92646 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "For The Fate of Zephras: Speak with Talaanis Shadowsong in Valanaar.",
            priority = 4020,
            id = "objective-93836-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93836, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92646 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-the-fate-of-zephras" },
        },
        {
            text = "Speak with Talaanis Shadowsong in Valanaar.",
            priority = 4030,
            route = {
                { y = 0.766, mapID = 2521, label = "Talaanis Shadowsong", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "accept-the-fate-of-zephras", "objective-93836-quest-work" },
            id = "turnin-the-fate-of-zephras",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93836, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 92646 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept What Comes Next from Talaanis Shadowsong.",
            priority = 4040,
            route = {
                { y = 0.766, mapID = 2521, label = "Talaanis Shadowsong", offMapText = "Travel to Zephras Isle.", x = 0.662 },
            },
            dependsOn = { "turnin-the-fate-of-zephras" },
            id = "accept-what-comes-next-93090",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93090, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93836 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Ayessa Dawnsinger when you are prepared to leave Zephras Isle.",
            priority = 4050,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "accept-what-comes-next-93090" },
            id = "turnin-what-comes-next-93090",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93090, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93836 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept The Earthen Ring from Ayessa Dawnsinger.",
            priority = 4060,
            route = {
                { y = 0.796, mapID = 2521, label = "Ayessa Dawnsinger", offMapText = "Travel to Zephras Isle.", x = 0.59 },
            },
            dependsOn = { "turnin-what-comes-next-93090" },
            id = "accept-the-earthen-ring",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95349, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93090 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Take the skycutter from Valanaar to Mulgore and turn in The Earthen Ring to Alana Stormwalker.",
            priority = 4070,
            route = {
                { y = 0.224, mapID = 1412, label = "Alana Stormwalker in Mulgore", offMapText = "Take the Valanaar zeppelin to Mulgore.", x = 0.334 },
            },
            dependsOn = { "accept-the-earthen-ring" },
            id = "turnin-the-earthen-ring",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95349, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 93090 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-welcome-to-azeroth",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 96 },
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
            checkpointQuest = 95350,
            priority = 4080,
        },
        {
            text = "Accept Welcome to Azeroth from Alana Stormwalker.",
            priority = 4090,
            route = {
                { y = 0.224, mapID = 1412, label = "Alana Stormwalker in Mulgore", offMapText = "Take the Valanaar zeppelin to Mulgore.", x = 0.334 },
            },
            dependsOn = { "turnin-the-earthen-ring" },
            id = "accept-welcome-to-azeroth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95350, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Welcome to Azeroth to Thrall in Orgrimmar.",
            priority = 4100,
            route = {
                {
                    y = 0.497,
                    mapID = 1456,
                    label = "Take the flight path to Orgrimmar.",
                    offMapText = "Take the flight path to Orgrimmar.",
                    x = 0.468,
                    flightTo = "Orgrimmar",
                    complete = { map = 1454 },
                },
                { y = 0.378, mapID = 1454, label = "Thrall in the Valley of Wisdom", offMapText = "Travel to Orgrimmar and speak with Thrall.", x = 0.32 },
            },
            dependsOn = { "accept-welcome-to-azeroth" },
            id = "turnin-welcome-to-azeroth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95350, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Exploring the Horde from Thrall.",
            priority = 4110,
            route = {
                { y = 0.378, mapID = 1454, label = "Thrall in the Valley of Wisdom", offMapText = "Travel to Orgrimmar and enter the Valley of Wisdom.", x = 0.32 },
            },
            dependsOn = { "turnin-welcome-to-azeroth" },
            id = "accept-exploring-the-horde",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93739, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95350 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Nazgrel in Grommash Hold.",
            priority = 4120,
            route = {
                { y = 0.36, mapID = 1454, label = "Nazgrel in Grommash Hold", offMapText = "Travel to Orgrimmar and enter Grommash Hold.", x = 0.324 },
            },
            dependsOn = { "accept-exploring-the-horde" },
            id = "objective-exploring-the-horde",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93739, text = "Nazgrel", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95350 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Vol'jin in Grommash Hold.",
            priority = 4130,
            route = {
                { y = 0.366, mapID = 1454, label = "Vol'jin in Grommash Hold", offMapText = "Travel to Orgrimmar and enter Grommash Hold.", x = 0.342 },
            },
            dependsOn = { "objective-exploring-the-horde", "accept-exploring-the-horde" },
            id = "objective-exploring-the-horde-voljin",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93739, text = "Vol'jin", index = 2 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95350 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Cairne Bloodhoof on the High Rise in Thunder Bluff.",
            priority = 4140,
            route = {
                {
                    y = 0.639,
                    mapID = 1454,
                    label = "Take the flight path to Thunder Bluff.",
                    offMapText = "Take the flight path to Thunder Bluff.",
                    x = 0.454,
                    flightTo = "Thunder Bluff",
                    complete = {
                        map = { 1456, 1412 },
                    },
                },
                { y = 0.516, mapID = 1456, label = "Cairne Bloodhoof on the High Rise", offMapText = "Travel to Thunder Bluff and climb to Cairne's tent on the High Rise.", x = 0.598 },
            },
            dependsOn = { "objective-exploring-the-horde-voljin", "accept-exploring-the-horde" },
            id = "objective-exploring-the-horde-cairne",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93739, text = "Cairne", index = 3 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95350 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Lady Sylvanas Windrunner in the Royal Quarter.",
            priority = 4150,
            route = {
                { y = 0.918, mapID = 1458, label = "Lady Sylvanas Windrunner in the Royal Quarter", offMapText = "Take the zeppelin to the Undercity and enter the Royal Quarter.", x = 0.574 },
            },
            dependsOn = { "objective-exploring-the-horde-cairne", "accept-exploring-the-horde" },
            id = "objective-exploring-the-horde-sylvanas",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93739, text = "Sylvanas", index = 4 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95350 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Finish Exploring the Horde with Lady Sylvanas Windrunner.",
            priority = 4160,
            route = {
                { y = 0.918, mapID = 1458, label = "Lady Sylvanas Windrunner in the Royal Quarter", offMapText = "Take the zeppelin to the Undercity and enter the Royal Quarter.", x = 0.574 },
            },
            dependsOn = {
                "accept-exploring-the-horde",
                "objective-exploring-the-horde",
                "objective-exploring-the-horde-voljin",
                "objective-exploring-the-horde-cairne",
                "objective-exploring-the-horde-sylvanas",
            },
            id = "turnin-exploring-the-horde",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                quest = { id = 93739, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 95350 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-welcome-to-azeroth-94947",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { race = 95 },
                    {
                        race = { 95 },
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
            checkpointQuest = 94947,
            priority = 4170,
        },
        {
            text = "Accept Welcome to Azeroth from Danaaris Stargale in Dalaran.",
            priority = 4180,
            route = {
                { y = 0.562, mapID = 1416, label = "Danaaris Stargale in Dalaran", offMapText = "Take the Valanaar zeppelin toward Dalaran.", x = 0.124 },
            },
            dependsOn = { "turnin-the-magical-city-of-dalaran" },
            id = "accept-welcome-to-azeroth-94947",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94947, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-child-of-nature",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    { race = 95 },
                    {
                        race = { 95 },
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
            checkpointQuest = 94912,
            priority = 4190,
        },
        {
            text = "Accept Child of Nature from Archmage Ansirem Runeweaver in Dalaran.",
            priority = 4200,
            route = {
                { y = 0.562, mapID = 1416, label = "Archmage Ansirem Runeweaver in Dalaran", offMapText = "Take the Valanaar zeppelin toward Dalaran.", x = 0.124 },
            },
            dependsOn = { "turnin-the-magical-city-of-dalaran" },
            id = "accept-child-of-nature",
            kind = "accept",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94912, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Take the Skyborne Portal to Stormwind.",
            priority = 4210,
            route = {
                { y = 0.562, mapID = 1416, label = "Skyborne Portal in Dalaran", offMapText = "Take the Valanaar zeppelin toward Dalaran.", x = 0.124 },
            },
            dependsOn = { "accept-welcome-to-azeroth-94947" },
            id = "objective-welcome-to-azeroth-94947",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 94947, text = "Skyborne Portal", index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Welcome to Azeroth to Bolvar Fordragon in Stormwind Keep.",
            priority = 4220,
            route = {
                { y = 0.18, mapID = 1453, label = "Highlord Bolvar Fordragon", offMapText = "Travel to Stormwind Keep.", x = 0.78 },
            },
            dependsOn = { "accept-welcome-to-azeroth-94947", "objective-welcome-to-azeroth-94947" },
            id = "turnin-welcome-to-azeroth-94947",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94947, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Exploring the Alliance from Bolvar Fordragon.",
            priority = 4230,
            route = {
                { y = 0.18, mapID = 1453, label = "Highlord Bolvar Fordragon", offMapText = "Travel to Stormwind Keep.", x = 0.78 },
            },
            dependsOn = { "turnin-welcome-to-azeroth-94947" },
            id = "accept-exploring-the-alliance",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93963, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Journey to Sentinel Hill from Bolvar Fordragon. Westfall turns this in at Sentinel Hill.",
            priority = 4240,
            route = {
                { y = 0.18, mapID = 1453, label = "Highlord Bolvar Fordragon", offMapText = "Travel to Stormwind Keep.", x = 0.78 },
            },
            dependsOn = { "turnin-welcome-to-azeroth-94947" },
            id = "accept-journey-to-sentinel-hill",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 98021, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Child of Nature to Sheldras Moontree in Stormwind.",
            priority = 4250,
            route = {
                { y = 0.516, mapID = 1453, label = "Sheldras Moontree", offMapText = "Travel to Stormwind.", x = 0.212 },
            },
            dependsOn = { "accept-child-of-nature" },
            id = "turnin-child-of-nature",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94912, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Moonglade from Sheldras Moontree.",
            priority = 4260,
            route = {
                { y = 0.516, mapID = 1453, label = "Sheldras Moontree", offMapText = "Travel to Stormwind.", x = 0.212 },
            },
            dependsOn = { "turnin-child-of-nature" },
            id = "accept-moonglade",
            kind = "accept",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 94914, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Randal Emerson in the southern antechamber of Stormwind Keep.",
            priority = 4270,
            route = {
                { y = 0.18, mapID = 1453, label = "Randal Emerson", offMapText = "Travel to Stormwind Keep.", x = 0.78 },
            },
            dependsOn = { "accept-exploring-the-alliance" },
            id = "gossip-exploring-the-alliance",
            kind = "gossip",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93963, text = "Randal Emerson", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with High Tinker Mekkatorque in Tinker Town.",
            priority = 4280,
            route = {
                { y = 0.49, mapID = 1455, label = "High Tinker Mekkatorque", offMapText = "Take the Deeprun Tram to Ironforge.", x = 0.688 },
            },
            dependsOn = { "gossip-exploring-the-alliance", "accept-exploring-the-alliance" },
            id = "objective-exploring-the-alliance-mekkatorque",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93963, text = "Mekkatorque", index = 2 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with King Magni Bronzebeard in the High Seat.",
            priority = 4290,
            route = {
                { y = 0.562, mapID = 1455, label = "King Magni Bronzebeard", offMapText = "Take the Deeprun Tram to Ironforge.", x = 0.391 },
            },
            dependsOn = { "gossip-exploring-the-alliance", "accept-exploring-the-alliance" },
            id = "objective-exploring-the-alliance-magni",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93963, text = "Magni", index = 3 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Speak with Tyrande Whisperwind in the Temple of the Moon.",
            priority = 4300,
            route = {
                { y = 0.812, mapID = 1457, label = "Tyrande Whisperwind", offMapText = "Travel to Darnassus.", x = 0.39 },
            },
            dependsOn = {
                "objective-exploring-the-alliance-mekkatorque",
                "objective-exploring-the-alliance-magni",
                "accept-exploring-the-alliance",
            },
            id = "objective-exploring-the-alliance-tyrande",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 93963, text = "Tyrande", index = 4 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Exploring the Alliance to Bolvar Fordragon.",
            priority = 4310,
            route = {
                { y = 0.18, mapID = 1453, label = "Highlord Bolvar Fordragon", offMapText = "Travel to Stormwind Keep.", x = 0.78 },
            },
            dependsOn = {
                "accept-exploring-the-alliance",
                "gossip-exploring-the-alliance",
                "objective-exploring-the-alliance-mekkatorque",
                "objective-exploring-the-alliance-magni",
                "objective-exploring-the-alliance-tyrande",
            },
            id = "turnin-exploring-the-alliance",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 7 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            complete = {
                quest = { id = 93963, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 94947 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 4320,
            route = {
                { y = 0.306, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Teleport to Moonglade.", x = 0.562 },
            },
            dependsOn = { "accept-moonglade" },
            id = "turnin-moonglade",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94914-moonglade",
        },
    },
    routeMode = "ordered",
    nextGuide = { Alliance = "leveling-casual-alliance", Horde = "leveling-casual-horde" },
})
