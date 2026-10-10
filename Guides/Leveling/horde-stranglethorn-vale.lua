local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Stranglethorn Vale",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-stranglethorn-vale",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 36 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-568-the-defense-of-grom-gol",
            kind = "note",
            text = "Reach level 33 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 33 },
            },
            requiredLevel = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 568,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.289, mapID = 1434, label = "Commander Aggro'gosh", offMapText = "Travel to Commander Aggro'gosh in Stranglethorn Vale.", x = 0.3217 },
            },
            text = "Accept The Defense of Grom'gol from Commander Aggro'gosh.",
            id = "accept-568-the-defense-of-grom-gol",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 568, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.2773, mapID = 1434, label = "Nimboya", offMapText = "Travel to Nimboya in Stranglethorn Vale.", x = 0.3216 },
            },
            text = "Accept Hunt for Yenniku from Nimboya.",
            id = "accept-581-hunt-for-yenniku",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 581, state = "activeOrCompleted" },
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
                { y = 0.2771, mapID = 1434, label = "Kin'weelay", offMapText = "Travel to Kin'weelay in Stranglethorn Vale.", x = 0.3227 },
            },
            text = "Accept Bloody Bone Necklaces from Kin'weelay.",
            id = "accept-596-bloody-bone-necklaces",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 596, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-5762-hemet-nesingwary-jr",
            kind = "note",
            text = "Reach level 28 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 28 },
            },
            requiredLevel = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5762,
            priority = 50,
        },
        {
            priority = 60,
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary Jr.", offMapText = "Travel to Hemet Nesingwary Jr. in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Turn in Hemet Nesingwary Jr. to Hemet Nesingwary Jr..",
            id = "turnin-5762-hemet-nesingwary-jr",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 5762, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary Jr.", offMapText = "Travel to Hemet Nesingwary Jr. in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Turn in Hunting in Stranglethorn to Hemet Nesingwary Jr..",
            id = "turnin-5763-hunting-in-stranglethorn",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5763, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Welcome to the Jungle from Barnil Stonepot.",
            id = "accept-583-welcome-to-the-jungle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 583, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            text = "Turn in Welcome to the Jungle to Hemet Nesingwary Jr..",
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary Jr.", offMapText = "Travel to Hemet Nesingwary Jr. in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-583-welcome-to-the-jungle" },
            id = "turnin-583-welcome-to-the-jungle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 583, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 100,
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary Jr.", offMapText = "Travel to Hemet Nesingwary Jr. in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr..",
            id = "accept-194-raptor-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 194, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
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
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3561 },
            },
            text = "Accept Tiger Mastery from Ajeck Rouack.",
            id = "accept-185-tiger-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 185, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
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
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            text = "Accept Panther Mastery from Sir S. J. Erlgadin.",
            id = "accept-190-panther-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 190, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            text = "Kill 10 Young Stranglethorn Tiger.",
            route = {
                { y = 0.13, mapID = 1434, label = "Young Stranglethorn Tiger", offMapText = "Travel to Young Stranglethorn Tiger.", x = 0.338 },
            },
            dependsOn = { "accept-185-tiger-mastery" },
            id = "objective-185-1-young-stranglethorn-tiger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 185, text = "Young Stranglethorn Tiger", index = 1, count = 10 },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 140,
            text = "Turn in Tiger Mastery to Ajeck Rouack.",
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3561 },
            },
            dependsOn = { "accept-185-tiger-mastery", "objective-185-1-young-stranglethorn-tiger" },
            id = "turnin-185-tiger-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 185, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3561 },
            },
            text = "Accept Tiger Mastery from Ajeck Rouack.",
            id = "accept-186-tiger-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 186, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 185 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-190-1-young-panther",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Kill 10 Young Panther.",
            complete = {
                questObjective = { id = 190, index = 1, text = "Young Panther", count = 10 },
            },
            route = {
                { mapID = 1434, x = 0.4, y = 0.1, label = "Young Panther", offMapText = "Travel to Young Panther." },
            },
            sourceStep = 16,
            priority = 160,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-190-panther-mastery" },
        },
        {
            id = "level-before-woven-class-warrior-accept-1714-essence-of-the-exile",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1714,
            priority = 170,
        },
        {
            priority = 180,
            route = {
                { y = 0.667, mapID = 1416, label = "Bath'rah's Cauldron", x = 0.793, offMapText = "Travel to Bath'rah's Cauldron in Alterac Mountains." },
            },
            id = "woven-class-warrior-accept-1714-essence-of-the-exile",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1714-essence-of-the-exile",
        },
        {
            priority = 190,
            dependsOn = { "woven-class-warrior-accept-1714-essence-of-the-exile" },
            id = "woven-class-warrior-objective-1714-essence-of-the-exile",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1714-essence-of-the-exile",
        },
        {
            priority = 200,
            route = {
                { y = 0.667, mapID = 1416, label = "Bath'rah's Cauldron", x = 0.793, offMapText = "Travel to Bath'rah's Cauldron in Alterac Mountains." },
            },
            dependsOn = {
                "woven-class-warrior-accept-1714-essence-of-the-exile",
                "woven-class-warrior-objective-1714-essence-of-the-exile",
            },
            id = "woven-class-warrior-turnin-1714-essence-of-the-exile",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1714-essence-of-the-exile",
        },
        {
            id = "level-before-objective-1712-1-liferoot",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1712,
            priority = 210,
        },
        {
            id = "objective-1712-1-liferoot",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 8 Liferoot.",
            complete = {
                questObjective = { id = 1712, index = 1, text = "Liferoot", count = 8 },
            },
            route = {
                { mapID = 1434, x = 0.44, y = 0.11800000000000001, label = "Liferoot", offMapText = "Travel to Liferoot." },
            },
            sourceStep = 17,
            priority = 220,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1791 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-605-1-crystal-spine-basilisk",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 605,
            priority = 230,
        },
        {
            priority = 240,
            route = {
                { y = 0.09, mapID = 1434, label = "Crystal Spine Basilisk", offMapText = "Travel to Crystal Spine Basilisk.", x = 0.476 },
            },
            text = "Collect 10 Singing Crystal Shard.",
            id = "objective-605-1-crystal-spine-basilisk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 605, text = "Crystal Spine Basilisk", index = 1, count = 10 },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            text = "Kill 10 Stranglethorn Tiger.",
            route = {
                { y = 0.128, mapID = 1434, label = "Stranglethorn Tiger", offMapText = "Travel to Stranglethorn Tiger.", x = 0.464 },
            },
            dependsOn = { "accept-186-tiger-mastery" },
            id = "objective-186-1-stranglethorn-tiger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 186, text = "Stranglethorn Tiger", index = 1, count = 10 },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 185 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-575-1-large-river-crocolisk-skin",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                },
            },
            text = "Collect 2 Large River Crocolisk Skin.",
            complete = {
                questObjective = { id = 575, index = 1, text = "Large River Crocolisk Skin", count = 2 },
            },
            route = {
                { mapID = 1434, x = 0.368, y = 0.10400000000000001, label = "Large River Crocolisk Skin", offMapText = "Travel to Large River Crocolisk Skin." },
            },
            sourceStep = 20,
            priority = 260,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            text = "Turn in Tiger Mastery to Ajeck Rouack.",
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3561 },
            },
            dependsOn = { "accept-186-tiger-mastery", "objective-186-1-stranglethorn-tiger" },
            id = "turnin-186-tiger-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 186, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 185 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3561 },
            },
            text = "Accept Tiger Mastery from Ajeck Rouack.",
            id = "accept-187-tiger-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 187, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 186 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin.",
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            dependsOn = { "accept-190-panther-mastery", "objective-190-1-young-panther" },
            id = "turnin-190-panther-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 190, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            text = "Accept Panther Mastery from Sir S. J. Erlgadin.",
            id = "accept-191-panther-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 191, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 190 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            text = "Kill 10 Elder Stranglethorn Tiger.",
            route = {
                { y = 0.142, mapID = 1434, label = "Elder Stranglethorn Tiger", offMapText = "Travel to Elder Stranglethorn Tiger.", x = 0.314 },
            },
            dependsOn = { "accept-187-tiger-mastery" },
            id = "objective-187-1-elder-stranglethorn-tiger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 187, text = "Elder Stranglethorn Tiger", index = 1, count = 10 },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 186 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Kill 10 Panther.",
            route = {
                { y = 0.164, mapID = 1434, label = "Panther", offMapText = "Travel to Panther.", x = 0.282 },
            },
            dependsOn = { "accept-191-panther-mastery" },
            id = "objective-191-1-panther",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 191, text = "Panther", index = 1, count = 10 },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 190 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-194-1-stranglethorn-raptor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Kill 10 Stranglethorn Raptor.",
            complete = {
                questObjective = { id = 194, index = 1, text = "Stranglethorn Raptor", count = 10 },
            },
            route = {
                { mapID = 1434, x = 0.27399999999999997, y = 0.14400000000000002, label = "Stranglethorn Raptor", offMapText = "Travel to Stranglethorn Raptor." },
            },
            sourceStep = 25,
            priority = 330,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-194-raptor-mastery" },
        },
        {
            priority = 340,
            route = {
                { y = 0.176, mapID = 1434, label = "Crystal Spine Basilisk", offMapText = "Travel to Crystal Spine Basilisk.", x = 0.24 },
            },
            text = "Collect 10 Singing Crystal Shard.",
            id = "objective-605-1-crystal-spine-basilisk-2",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 605, text = "Crystal Spine Basilisk", index = 1, count = 10 },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-581-1-bloodscalp-tusk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 9 Bloodscalp Tusk.",
            complete = {
                questObjective = { id = 581, index = 1, text = "Bloodscalp Tusk", count = 9 },
            },
            route = {
                { mapID = 1434, x = 0.28800000000000003, y = 0.192, label = "Bloodscalp Tusk", offMapText = "Travel to Bloodscalp Tusk." },
            },
            sourceStep = 27,
            priority = 350,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-581-hunt-for-yenniku" },
        },
        {
            id = "objective-189-1-bloodscalp-ear",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 15 Bloodscalp Ear.",
            complete = {
                questObjective = { id = 189, index = 1, text = "Bloodscalp Ear", count = 15 },
            },
            route = {
                { mapID = 1434, x = 0.28800000000000003, y = 0.192, label = "Bloodscalp Ear", offMapText = "Travel to Bloodscalp Ear." },
            },
            sourceStep = 27,
            priority = 360,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-596-1-bloody-bone-necklace",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 25 Bloody Bone Necklace.",
            complete = {
                questObjective = { id = 596, index = 1, text = "Bloody Bone Necklace", count = 25 },
            },
            route = {
                { mapID = 1434, x = 0.28800000000000003, y = 0.192, label = "Bloody Bone Necklace", offMapText = "Travel to Bloody Bone Necklace." },
            },
            sourceStep = 27,
            priority = 370,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-596-bloody-bone-necklaces" },
        },
        {
            priority = 380,
            text = "Turn in Raptor Mastery to Hemet Nesingwary Jr..",
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary Jr.", offMapText = "Travel to Hemet Nesingwary Jr. in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-194-raptor-mastery", "objective-194-1-stranglethorn-raptor" },
            id = "turnin-194-raptor-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 194, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary Jr.", offMapText = "Travel to Hemet Nesingwary Jr. in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr..",
            id = "accept-195-raptor-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 195, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 194 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            text = "Turn in Tiger Mastery to Ajeck Rouack.",
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3562 },
            },
            dependsOn = { "accept-187-tiger-mastery", "objective-187-1-elder-stranglethorn-tiger" },
            id = "turnin-187-tiger-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 187, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 186 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3562 },
            },
            text = "Accept Tiger Mastery from Ajeck Rouack.",
            id = "accept-188-tiger-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 188, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 187 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin.",
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            dependsOn = { "accept-191-panther-mastery", "objective-191-1-panther" },
            id = "turnin-191-panther-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 191, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 190 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            text = "Accept Panther Mastery from Sir S. J. Erlgadin.",
            id = "accept-192-panther-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 192, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 191 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            text = "Collect 1 Paw of Sin'Dall.",
            route = {
                { y = 0.1739, mapID = 1434, label = "Sin'Dall", offMapText = "Travel to Sin'Dall.", x = 0.3221 },
            },
            dependsOn = { "accept-188-tiger-mastery" },
            id = "objective-188-1-sin-dall",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 188, text = "Sin'Dall", index = 1, count = 1 },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 187 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            text = "Kill 10 Lashtail Raptor.",
            route = {
                { y = 0.204, mapID = 1434, label = "Lashtail Raptor", offMapText = "Travel to Lashtail Raptor.", x = 0.322 },
            },
            dependsOn = { "accept-195-raptor-mastery" },
            id = "objective-195-1-lashtail-raptor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 195, text = "Lashtail Raptor", index = 1, count = 10 },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 194 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            text = "Kill 15 Lashtail Raptor.",
            route = {
                { y = 0.204, mapID = 1434, label = "Lashtail Raptor", offMapText = "Travel to Lashtail Raptor.", x = 0.322 },
            },
            dependsOn = { "accept-568-the-defense-of-grom-gol" },
            id = "objective-568-1-lashtail-raptor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 568, text = "Lashtail Raptor", index = 1, count = 15 },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            text = "Turn in Hunt for Yenniku to Nimboya.",
            route = {
                { y = 0.2772, mapID = 1434, label = "Nimboya", offMapText = "Travel to Nimboya in Stranglethorn Vale.", x = 0.3216 },
            },
            dependsOn = { "accept-581-hunt-for-yenniku", "objective-581-1-bloodscalp-tusk" },
            id = "turnin-581-hunt-for-yenniku",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 581, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { y = 0.2772, mapID = 1434, label = "Nimboya", offMapText = "Travel to Nimboya in Stranglethorn Vale.", x = 0.3216 },
            },
            text = "Accept Headhunting from Nimboya.",
            id = "accept-582-headhunting",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 582, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 581 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 490,
            text = "Turn in Bloody Bone Necklaces to Kin'weelay.",
            route = {
                { y = 0.2771, mapID = 1434, label = "Kin'weelay", offMapText = "Travel to Kin'weelay in Stranglethorn Vale.", x = 0.3227 },
            },
            dependsOn = { "accept-596-bloody-bone-necklaces", "objective-596-1-bloody-bone-necklace" },
            id = "turnin-596-bloody-bone-necklaces",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 596, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            route = {
                { y = 0.2771, mapID = 1434, label = "Kin'weelay", offMapText = "Travel to Kin'weelay in Stranglethorn Vale.", x = 0.3227 },
            },
            text = "Accept The Vile Reef from Kin'weelay.",
            id = "accept-629-the-vile-reef",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 629, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            text = "Turn in The Defense of Grom'gol to Commander Aggro'gosh.",
            route = {
                { y = 0.2891, mapID = 1434, label = "Commander Aggro'gosh", offMapText = "Travel to Commander Aggro'gosh in Stranglethorn Vale.", x = 0.3217 },
            },
            dependsOn = { "accept-568-the-defense-of-grom-gol", "objective-568-1-lashtail-raptor" },
            id = "turnin-568-the-defense-of-grom-gol",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 568, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            route = {
                { y = 0.2891, mapID = 1434, label = "Commander Aggro'gosh", offMapText = "Travel to Commander Aggro'gosh in Stranglethorn Vale.", x = 0.3217 },
            },
            text = "Accept The Defense of Grom'gol from Commander Aggro'gosh.",
            id = "accept-569-the-defense-of-grom-gol",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 569, state = "activeOrCompleted" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 568 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-629-1-tablet-shard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Tablet Shard.",
            complete = {
                questObjective = { id = 629, index = 1, text = "Tablet Shard", count = 1 },
            },
            route = {
                { mapID = 1434, x = 0.2475, y = 0.2284, label = "Tablet Shard", offMapText = "Travel to Tablet Shard." },
            },
            sourceStep = 36,
            priority = 530,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-629-the-vile-reef" },
        },
        {
            priority = 540,
            text = "Collect 20 Shrunken Head.",
            route = {
                { y = 0.152, mapID = 1434, label = "Bloodscalp Headhunter", offMapText = "Travel to Bloodscalp Headhunter.", x = 0.208 },
            },
            dependsOn = { "accept-582-headhunting" },
            id = "objective-582-1-bloodscalp-headhunter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 582, text = "Bloodscalp Headhunter", index = 1, count = 20 },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 581 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1712-2-bloodscalp-tusk",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 30 Bloodscalp Tusk.",
            complete = {
                questObjective = { id = 1712, index = 2, text = "Bloodscalp Tusk", count = 30 },
            },
            route = {
                { mapID = 1434, x = 0.23399999999999999, y = 0.10800000000000001, label = "Bloodscalp Tusk", offMapText = "Travel to Bloodscalp Tusk." },
            },
            sourceStep = 38,
            priority = 550,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1791 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            text = "Turn in Headhunting to Nimboya.",
            route = {
                { y = 0.2773, mapID = 1434, label = "Nimboya", offMapText = "Travel to Nimboya in Stranglethorn Vale.", x = 0.3216 },
            },
            dependsOn = { "accept-582-headhunting", "objective-582-1-bloodscalp-headhunter" },
            id = "turnin-582-headhunting",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 582, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 581 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            text = "Turn in The Vile Reef to Kin'weelay.",
            route = {
                { y = 0.277, mapID = 1434, label = "Kin'weelay", offMapText = "Travel to Kin'weelay in Stranglethorn Vale.", x = 0.3227 },
            },
            dependsOn = { "accept-629-the-vile-reef", "objective-629-1-tablet-shard" },
            id = "turnin-629-the-vile-reef",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 629, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 580,
            route = {
                { y = 0.2924, mapID = 1434, label = "Far Seer Mok'thardin", offMapText = "Travel to Far Seer Mok'thardin in Stranglethorn Vale.", x = 0.3212 },
            },
            text = "Accept Mok'thardin's Enchantment from Far Seer Mok'thardin.",
            id = "accept-570-mok-thardin-s-enchantment",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 570, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            text = "Kill 5 Mosh'Ogg Witch Doctor.",
            route = {
                { y = 0.308, mapID = 1434, label = "Mosh'Ogg Witch Doctor", offMapText = "Travel to Mosh'Ogg Witch Doctor.", x = 0.354 },
            },
            dependsOn = { "accept-569-the-defense-of-grom-gol" },
            id = "objective-569-2-mosh-ogg-witch-doctor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 569, text = "Mosh'Ogg Witch Doctor", index = 2, count = 5 },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 568 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            text = "Kill 10 Mosh'Ogg Brute.",
            route = {
                { y = 0.308, mapID = 1434, label = "Mosh'Ogg Brute", offMapText = "Travel to Mosh'Ogg Brute.", x = 0.354 },
            },
            dependsOn = { "accept-569-the-defense-of-grom-gol" },
            id = "objective-569-1-mosh-ogg-brute",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 569, text = "Mosh'Ogg Brute", index = 1, count = 10 },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 568 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            text = "Collect 1 Pristine Tigress Fang.",
            route = {
                { y = 0.328, mapID = 1434, label = "Stranglethorn Tigress", offMapText = "Travel to Stranglethorn Tigress.", x = 0.374 },
            },
            dependsOn = { "accept-570-mok-thardin-s-enchantment" },
            id = "objective-570-2-stranglethorn-tigress",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 570, text = "Stranglethorn Tigress", index = 2, count = 1 },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-570-1-shadowmaw-claw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 8 Shadowmaw Claw.",
            complete = {
                questObjective = { id = 570, index = 1, text = "Shadowmaw Claw", count = 8 },
            },
            route = {
                { mapID = 1434, x = 0.374, y = 0.32799999999999996, label = "Shadowmaw Claw", offMapText = "Travel to Shadowmaw Claw." },
            },
            sourceStep = 45,
            priority = 620,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-570-mok-thardin-s-enchantment" },
        },
        {
            id = "objective-192-1-shadowmaw-panther",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Kill 10 Shadowmaw Panther.",
            complete = {
                questObjective = { id = 192, index = 1, text = "Shadowmaw Panther", count = 10 },
            },
            route = {
                { mapID = 1434, x = 0.374, y = 0.32799999999999996, label = "Shadowmaw Panther", offMapText = "Travel to Shadowmaw Panther." },
            },
            sourceStep = 46,
            priority = 630,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 191 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-192-panther-mastery" },
        },
        {
            priority = 640,
            route = {
                { mapID = 1434, x = 0.4265, y = 0.18350000000000002, label = "Foreman Cozzle", offMapText = "Travel to Foreman Cozzle." },
            },
            text = "Kill Foreman Cozzle at the top of the Venture Co. platform and loot Cozzle's Key.",
            id = "objective-1182-1-foreman-cozzle",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Cozzle's Key", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 1182, state = "complete" },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1181 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            sourceInstructionStep = 48,
            sourceInstructionIndex = 1,
            checkpointQuest = 1182,
            instructionOnly = true,
            rememberPreparation = 1182,
        },
        {
            priority = 650,
            route = {
                { mapID = 1434, x = 0.4334, y = 0.2034, label = "Cozzle's Footlocker", offMapText = "Travel to Cozzle's Footlocker." },
            },
            text = "Use Cozzle's Key to open his footlocker inside the nearby building. Collect the Fuel Regulator Blueprints.",
            id = "objective-1182-prepared-result",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1182, index = 1, count = 1 },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1181 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-213-1-tumbled-crystal",
            kind = "note",
            text = "Reach level 31 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 31 },
            },
            requiredLevel = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 213,
            priority = 660,
        },
        {
            id = "objective-213-1-tumbled-crystal",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            text = "Collect 8 Tumbled Crystal.",
            complete = {
                questObjective = { id = 213, index = 1, text = "Tumbled Crystal", count = 8 },
            },
            route = {
                { mapID = 1434, x = 0.442, y = 0.20199999999999999, label = "Tumbled Crystal", offMapText = "Travel to Tumbled Crystal." },
            },
            sourceStep = 49,
            priority = 670,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 680,
            text = "Turn in Raptor Mastery to Hemet Nesingwary Jr..",
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary Jr.", offMapText = "Travel to Hemet Nesingwary Jr. in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-195-raptor-mastery", "objective-195-1-lashtail-raptor" },
            id = "turnin-195-raptor-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 195, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 194 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary Jr.", offMapText = "Travel to Hemet Nesingwary Jr. in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Raptor Mastery from Hemet Nesingwary Jr..",
            id = "accept-196-raptor-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 196, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 195 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            text = "Turn in Tiger Mastery to Ajeck Rouack.",
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3562 },
            },
            dependsOn = { "accept-188-tiger-mastery", "objective-188-1-sin-dall" },
            id = "turnin-188-tiger-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 188, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 187 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin.",
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3556 },
            },
            dependsOn = { "accept-192-panther-mastery", "objective-192-1-shadowmaw-panther" },
            id = "turnin-192-panther-mastery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 192, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 191 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 720,
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3556 },
            },
            text = "Accept Panther Mastery from Sir S. J. Erlgadin.",
            id = "accept-193-panther-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 193, state = "activeOrCompleted" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 192 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 730,
            route = {
                { y = 0.2773, mapID = 1434, label = "Nimboya", offMapText = "Travel to Nimboya in Stranglethorn Vale.", x = 0.3216 },
            },
            text = "Accept Trollbane from Nimboya.",
            id = "accept-638-trollbane",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 638, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 740,
            text = "Turn in The Defense of Grom'gol to Commander Aggro'gosh.",
            route = {
                { y = 0.289, mapID = 1434, label = "Commander Aggro'gosh", offMapText = "Travel to Commander Aggro'gosh in Stranglethorn Vale.", x = 0.3217 },
            },
            dependsOn = {
                "accept-569-the-defense-of-grom-gol",
                "objective-569-2-mosh-ogg-witch-doctor",
                "objective-569-1-mosh-ogg-brute",
            },
            id = "turnin-569-the-defense-of-grom-gol",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 569, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 568 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            text = "Turn in Mok'thardin's Enchantment to Far Seer Mok'thardin.",
            route = {
                { y = 0.2924, mapID = 1434, label = "Far Seer Mok'thardin", offMapText = "Travel to Far Seer Mok'thardin in Stranglethorn Vale.", x = 0.3212 },
            },
            dependsOn = {
                "accept-570-mok-thardin-s-enchantment",
                "objective-570-2-stranglethorn-tigress",
                "objective-570-1-shadowmaw-claw",
            },
            id = "turnin-570-mok-thardin-s-enchantment",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 570, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 760,
            text = "Turn in Goblin Sponsorship to Baron Revilgaz.",
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            dependsOn = { "objective-1182-1-foreman-cozzle", "objective-1182-prepared-result" },
            id = "turnin-1182-goblin-sponsorship",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1182, state = "completed" },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1181 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 770,
            route = {
                { y = 0.7713, mapID = 1434, label = "Kebok", offMapText = "Travel to Kebok in Stranglethorn Vale.", x = 0.27 },
            },
            text = "Turn in Bloodscalp Ears to Kebok.",
            id = "turnin-189-bloodscalp-ears",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 189, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-189-1-bloodscalp-ear" },
        },
        {
            priority = 780,
            route = {
                { y = 0.7713, mapID = 1434, label = "Kebok", offMapText = "Travel to Kebok in Stranglethorn Vale.", x = 0.27 },
            },
            text = "Turn in Hostile Takeover to Kebok.",
            id = "turnin-213-hostile-takeover",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            complete = {
                quest = { id = 213, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-213-1-tumbled-crystal" },
        },
        {
            priority = 790,
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            text = "Turn in Investigate the Camp to Krazek.",
            id = "turnin-201-investigate-the-camp",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 201, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 800,
            text = "Turn in Singing Blue Shards to Crank Fizzlebub.",
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            dependsOn = { "objective-605-1-crystal-spine-basilisk", "objective-605-1-crystal-spine-basilisk-2" },
            id = "turnin-605-singing-blue-shards",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 605, state = "completed" },
            },
            sourceStep = 59,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 810,
            route = {
                { y = 0.7759, mapID = 1434, label = "Drizzlik", offMapText = "Travel to Drizzlik in Stranglethorn Vale.", x = 0.2829 },
            },
            text = "Turn in Supply and Demand to Drizzlik.",
            id = "turnin-575-supply-and-demand",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                },
            },
            complete = {
                quest = { id = 575, state = "completed" },
            },
            sourceStep = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-575-1-large-river-crocolisk-skin" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
