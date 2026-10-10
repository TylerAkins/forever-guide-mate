local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Dustwallow Marsh & Thousand Needles",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 33 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-1135-highperch-venom",
            kind = "note",
            text = "Reach level 25 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 25 },
            },
            requiredLevel = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1135,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.4515, mapID = 1445, label = "Fiora Longears", offMapText = "Travel to Fiora Longears in Dustwallow Marsh.", x = 0.6646 },
            },
            text = "Accept Highperch Venom from Fiora Longears.",
            id = "accept-1135-highperch-venom",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1135, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1282-they-call-him-smiling-jim",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1282,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.4607, mapID = 1445, label = "Guard Byron", offMapText = "Travel to Guard Byron in Dustwallow Marsh.", x = 0.6616 },
            },
            text = "Accept They Call Him Smiling Jim from Guard Byron.",
            id = "accept-1282-they-call-him-smiling-jim",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1282, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { y = 0.4824, mapID = 1445, label = "Clerk Lendry", offMapText = "Travel to Clerk Lendry in Dustwallow Marsh.", x = 0.6788 },
            },
            text = "Turn in James Hyal to Clerk Lendry.",
            id = "turnin-1302-james-hyal",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1302, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { y = 0.4871, mapID = 1445, label = "Commander Samaul", offMapText = "Travel to Commander Samaul in Dustwallow Marsh.", x = 0.6802 },
            },
            text = "Turn in The Missing Diplomat to Commander Samaul.",
            id = "turnin-1264-the-missing-diplomat",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1264, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1250 },
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
                { y = 0.4871, mapID = 1445, label = "Commander Samaul", offMapText = "Travel to Commander Samaul in Dustwallow Marsh.", x = 0.6802 },
            },
            text = "Accept The Missing Diplomat from Commander Samaul.",
            id = "accept-1265-the-missing-diplomat",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1265, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1264 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            text = "Turn in They Call Him Smiling Jim to Captain Garran Vimes.",
            route = {
                { y = 0.4862, mapID = 1445, label = "Captain Garran Vimes", offMapText = "Travel to Captain Garran Vimes in Dustwallow Marsh.", x = 0.6822 },
            },
            dependsOn = { "accept-1282-they-call-him-smiling-jim" },
            id = "turnin-1282-they-call-him-smiling-jim",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1282, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 90,
            text = "Turn in The Missing Diplomat to Archmage Tervosh.",
            route = {
                { y = 0.4125, mapID = 1445, label = "Archmage Tervosh", offMapText = "Travel to Archmage Tervosh in Dustwallow Marsh.", x = 0.5966 },
            },
            dependsOn = { "accept-1265-the-missing-diplomat" },
            id = "turnin-1265-the-missing-diplomat",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1265, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1264 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 100,
            route = {
                { y = 0.4125, mapID = 1445, label = "Archmage Tervosh", offMapText = "Travel to Archmage Tervosh in Dustwallow Marsh.", x = 0.5966 },
            },
            text = "Accept The Missing Diplomat from Archmage Tervosh.",
            id = "accept-1266-the-missing-diplomat",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1266, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1265 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            text = "Turn in The Missing Diplomat to Archmage Tervosh.",
            route = {
                { y = 0.4926, mapID = 1445, label = "Archmage Tervosh", offMapText = "Travel to Archmage Tervosh in Dustwallow Marsh.", x = 0.6642 },
            },
            dependsOn = { "accept-1265-the-missing-diplomat" },
            id = "turnin-1265-the-missing-diplomat-2",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1265, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1264 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "accept-1266-the-missing-diplomat-2",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Accept The Missing Diplomat from Archmage Tervosh.",
            complete = {
                quest = { id = 1266, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 1445, x = 0.6642, y = 0.4926, label = "Archmage Tervosh", offMapText = "Travel to Archmage Tervosh in Dustwallow Marsh." },
            },
            sourceStep = 11,
            priority = 120,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1265 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1218-soothing-spices",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1218,
            priority = 130,
        },
        {
            priority = 140,
            route = {
                { y = 0.2627, mapID = 1445, label = "\"Swamp Eye\" Jarl", offMapText = "Travel to \"Swamp Eye\" Jarl in Dustwallow Marsh.", x = 0.5544 },
            },
            text = "Accept Soothing Spices from \"Swamp Eye\" Jarl.",
            id = "accept-1218-soothing-spices",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1218, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "For Soothing Spices: Bring 3 Soothing Spices to \"Swamp Eye\" Jarl in Dustwallow Marsh.",
            id = "objective-1218-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1218, state = "complete" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1218-soothing-spices" },
        },
        {
            priority = 160,
            text = "Turn in Soothing Spices to \"Swamp Eye\" Jarl.",
            route = {
                { y = 0.2627, mapID = 1445, label = "\"Swamp Eye\" Jarl", offMapText = "Travel to \"Swamp Eye\" Jarl in Dustwallow Marsh.", x = 0.5544 },
            },
            dependsOn = { "accept-1218-soothing-spices", "objective-1218-quest-work" },
            id = "turnin-1218-soothing-spices",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1218, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.2593, mapID = 1445, label = "The Orc Report", offMapText = "Travel to The Orc Report.", x = 0.5544 },
            },
            text = "Accept The Orc Report.",
            id = "accept-1219-the-orc-report",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1219, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "Turn in The Missing Diplomat to Private Hendel.",
            route = {
                { y = 0.2464, mapID = 1445, label = "Private Hendel", offMapText = "Travel to Private Hendel in Dustwallow Marsh.", x = 0.4522 },
            },
            dependsOn = { "accept-1266-the-missing-diplomat-2", "accept-1266-the-missing-diplomat" },
            id = "turnin-1266-the-missing-diplomat",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1266, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1265 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            route = {
                { y = 0.2464, mapID = 1445, label = "Private Hendel", offMapText = "Travel to Private Hendel in Dustwallow Marsh.", x = 0.4522 },
            },
            text = "Accept The Missing Diplomat from Private Hendel.",
            id = "accept-1324-the-missing-diplomat",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1324, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1266 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            text = "Kill Private Hendel.",
            route = {
                { y = 0.2464, mapID = 1445, label = "Private Hendel", offMapText = "Travel to Private Hendel.", x = 0.4522 },
            },
            dependsOn = { "accept-1324-the-missing-diplomat" },
            id = "objective-1324-1-private-hendel",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1324, text = "Private Hendel", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1266 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "Turn in The Missing Diplomat to Archmage Tervosh.",
            route = {
                { y = 0.243, mapID = 1445, label = "Archmage Tervosh", offMapText = "Travel to Archmage Tervosh in Dustwallow Marsh.", x = 0.4519 },
            },
            dependsOn = { "accept-1324-the-missing-diplomat", "objective-1324-1-private-hendel" },
            id = "turnin-1324-the-missing-diplomat",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1324, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1266 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            route = {
                { y = 0.2424, mapID = 1445, label = "Lady Jaina Proudmoore", offMapText = "Travel to Lady Jaina Proudmoore in Dustwallow Marsh.", x = 0.4522 },
            },
            text = "Accept The Missing Diplomat from Lady Jaina Proudmoore.",
            id = "accept-1267-the-missing-diplomat",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1267, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1324 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1177-hungry",
            kind = "note",
            text = "Reach level 32 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 32 },
            },
            requiredLevel = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1177,
            priority = 230,
        },
        {
            priority = 240,
            route = {
                { y = 0.3825, mapID = 1445, label = "Mudcrush Durtfeet", offMapText = "Travel to Mudcrush Durtfeet in Dustwallow Marsh.", x = 0.3515 },
            },
            text = "Accept Hungry! from Mudcrush Durtfeet.",
            id = "accept-1177-hungry",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 32 },
                    },
                },
            },
            complete = {
                quest = { id = 1177, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            route = {
                { y = 0.4763, mapID = 1445, label = "Suspicious Hoofprints", offMapText = "Travel to Suspicious Hoofprints.", x = 0.297 },
            },
            text = "Accept Suspicious Hoofprints.",
            id = "accept-1284-suspicious-hoofprints",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1284, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1282, 1302 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            route = {
                { y = 0.4824, mapID = 1445, label = "Lieutenant Paval Reethe", offMapText = "Travel to Lieutenant Paval Reethe.", x = 0.2983 },
            },
            text = "Accept Lieutenant Paval Reethe.",
            id = "accept-1252-lieutenant-paval-reethe",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1252, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1302, 1282 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            route = {
                { y = 0.4859, mapID = 1445, label = "The Black Shield", offMapText = "Travel to The Black Shield.", x = 0.2963 },
            },
            text = "Accept The Black Shield.",
            id = "accept-1253-the-black-shield",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1253, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1302, 1282 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-1100-lonebrow-s-journal",
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
            text = "Loot Henrig Lonebrow's Journal from Henrig Lonebrow's Journal. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Henrig Lonebrow's Journal", minCount = 1 },
                    },
                    {
                        quest = { id = 1100, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 280,
        },
        {
            priority = 290,
            text = "Use the Henrig Lonebrow's Journal to accept Lonebrow's Journal.",
            id = "accept-1100-lonebrow-s-journal",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1100, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            text = "Turn in Lonebrow's Journal to Falfindel Waywarder.",
            route = {
                { y = 0.4656, mapID = 1444, label = "Falfindel Waywarder", offMapText = "Travel to Falfindel Waywarder in Feralas.", x = 0.8964 },
            },
            dependsOn = { "accept-1100-lonebrow-s-journal" },
            id = "turnin-1100-lonebrow-s-journal",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1100, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            route = {
                { y = 0.4656, mapID = 1444, label = "Falfindel Waywarder", offMapText = "Travel to Falfindel Waywarder in Feralas.", x = 0.8964 },
            },
            text = "Turn in Reclaiming the Charred Vale to Falfindel Waywarder.",
            id = "turnin-1059-reclaiming-the-charred-vale",
            kind = "turnin",
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
                quest = { id = 1059, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1057 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 320,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Rocket Car Parts from Kravel Koalbeard.",
            id = "accept-1110-rocket-car-parts",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1110, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 330,
            route = {
                { y = 0.7713, mapID = 1441, label = "Fizzle Brassbolts", offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.", x = 0.7806 },
            },
            text = "Accept Salt Flat Venom from Fizzle Brassbolts.",
            id = "accept-1104-salt-flat-venom",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1104, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 340,
            route = {
                { y = 0.7712, mapID = 1441, label = "Wizzle Brassbolts", offMapText = "Travel to Wizzle Brassbolts in Thousand Needles.", x = 0.7814 },
            },
            text = "Turn in The Brassbolts Brothers to Wizzle Brassbolts.",
            id = "turnin-1179-the-brassbolts-brothers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1179, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 350,
            route = {
                { y = 0.7712, mapID = 1441, label = "Wizzle Brassbolts", offMapText = "Travel to Wizzle Brassbolts in Thousand Needles.", x = 0.7814 },
            },
            text = "Accept Hardened Shells from Wizzle Brassbolts.",
            id = "accept-1105-hardened-shells",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1105, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            route = {
                { y = 0.7589, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            text = "Accept Load Lightening from Pozzik.",
            id = "accept-1176-load-lightening",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1176, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            route = {
                { y = 0.7795, mapID = 1441, label = "Trackmaster Zherin", offMapText = "Travel to Trackmaster Zherin in Thousand Needles.", x = 0.8164 },
            },
            text = "Accept A Bump in the Road from Trackmaster Zherin.",
            id = "accept-1175-a-bump-in-the-road",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1175, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            text = "Kill 6 Saltstone Gazer.",
            route = {
                { y = 0.88, mapID = 1441, label = "Saltstone Gazer", offMapText = "Travel to Saltstone Gazer.", x = 0.774 },
            },
            dependsOn = { "accept-1175-a-bump-in-the-road" },
            id = "objective-1175-3-saltstone-gazer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1175, text = "Saltstone Gazer", index = 3, count = 6 },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            text = "Collect 10 Hollow Vulture Bone.",
            route = {
                { y = 0.66, mapID = 1441, label = "Salt Flats Scavenger", offMapText = "Travel to Salt Flats Scavenger.", x = 0.88 },
            },
            dependsOn = { "accept-1176-load-lightening" },
            id = "objective-1176-1-salt-flats-scavenger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1176, text = "Salt Flats Scavenger", index = 1, count = 10 },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1105-1-hardened-tortoise-shell",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Collect 9 Hardened Tortoise Shell.",
            complete = {
                questObjective = { id = 1105, index = 1, text = "Hardened Tortoise Shell", count = 9 },
            },
            route = {
                { mapID = 1441, x = 0.828, y = 0.552, label = "Hardened Tortoise Shell", offMapText = "Travel to Hardened Tortoise Shell." },
            },
            sourceStep = 36,
            priority = 400,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1105-hardened-shells" },
        },
        {
            id = "objective-1104-1-salty-scorpid-venom",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Collect 6 Salty Scorpid Venom.",
            complete = {
                questObjective = { id = 1104, index = 1, text = "Salty Scorpid Venom", count = 6 },
            },
            route = {
                { mapID = 1441, x = 0.8240000000000001, y = 0.6, label = "Salty Scorpid Venom", offMapText = "Travel to Salty Scorpid Venom." },
            },
            sourceStep = 37,
            priority = 410,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1104-salt-flat-venom" },
        },
        {
            id = "objective-1175-1-saltstone-basilisk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Kill 10 Saltstone Basilisk.",
            complete = {
                questObjective = { id = 1175, index = 1, text = "Saltstone Basilisk", count = 10 },
            },
            route = {
                { mapID = 1441, x = 0.784, y = 0.59, label = "Saltstone Basilisk", offMapText = "Travel to Saltstone Basilisk." },
            },
            sourceStep = 38,
            priority = 420,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1175-a-bump-in-the-road" },
        },
        {
            id = "objective-1175-2-saltstone-crystalhide",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Kill 10 Saltstone Crystalhide.",
            complete = {
                questObjective = { id = 1175, index = 2, text = "Saltstone Crystalhide", count = 10 },
            },
            route = {
                { mapID = 1441, x = 0.7879999999999999, y = 0.868, label = "Saltstone Crystalhide", offMapText = "Travel to Saltstone Crystalhide." },
            },
            sourceStep = 39,
            priority = 430,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1175-a-bump-in-the-road" },
        },
        {
            id = "objective-1110-1-rocket-car-parts",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Collect 30 Rocket Car Parts.",
            complete = {
                questObjective = { id = 1110, index = 1, text = "Rocket Car Parts", count = 30 },
            },
            route = {
                { mapID = 1441, x = 0.83, y = 0.6459999999999999, label = "Rocket Car Parts", offMapText = "Travel to Rocket Car Parts." },
            },
            sourceStep = 40,
            priority = 440,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1110-rocket-car-parts" },
        },
        {
            priority = 450,
            text = "Turn in Rocket Car Parts to Kravel Koalbeard.",
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            dependsOn = { "accept-1110-rocket-car-parts", "objective-1110-1-rocket-car-parts" },
            id = "turnin-1110-rocket-car-parts",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1110, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Wharfmaster Dizzywig from Kravel Koalbeard.",
            id = "accept-1111-wharfmaster-dizzywig",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1111, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Hemet Nesingwary Jr. from Kravel Koalbeard.",
            id = "accept-5762-hemet-nesingwary-jr",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 5762, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 480,
            text = "Turn in Salt Flat Venom to Fizzle Brassbolts.",
            route = {
                { y = 0.7713, mapID = 1441, label = "Fizzle Brassbolts", offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.", x = 0.7806 },
            },
            dependsOn = { "accept-1104-salt-flat-venom", "objective-1104-1-salty-scorpid-venom" },
            id = "turnin-1104-salt-flat-venom",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1104, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            text = "Turn in Hardened Shells to Wizzle Brassbolts.",
            route = {
                { y = 0.7712, mapID = 1441, label = "Wizzle Brassbolts", offMapText = "Travel to Wizzle Brassbolts in Thousand Needles.", x = 0.7814 },
            },
            dependsOn = { "accept-1105-hardened-shells", "objective-1105-1-hardened-tortoise-shell" },
            id = "turnin-1105-hardened-shells",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1105, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            text = "Turn in Load Lightening to Pozzik.",
            route = {
                { y = 0.7588, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            dependsOn = { "accept-1176-load-lightening", "objective-1176-1-salt-flats-scavenger" },
            id = "turnin-1176-load-lightening",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1176, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            route = {
                { y = 0.7588, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            text = "Accept Goblin Sponsorship from Pozzik.",
            id = "accept-1178-goblin-sponsorship",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1178, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1176 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            text = "Turn in A Bump in the Road to Trackmaster Zherin.",
            route = {
                { y = 0.7795, mapID = 1441, label = "Trackmaster Zherin", offMapText = "Travel to Trackmaster Zherin in Thousand Needles.", x = 0.8163 },
            },
            dependsOn = {
                "accept-1175-a-bump-in-the-road",
                "objective-1175-3-saltstone-gazer",
                "objective-1175-1-saltstone-basilisk",
                "objective-1175-2-saltstone-crystalhide",
            },
            id = "turnin-1175-a-bump-in-the-road",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1175, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            text = "For Highperch Venom: Bring 10 Highperch Venom Sacs to Fiora Longears in Theramore.",
            id = "objective-1135-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1135, state = "complete" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1135-highperch-venom" },
        },
        {
            priority = 540,
            text = "Turn in Highperch Venom to Fiora Longears.",
            route = {
                { y = 0.4515, mapID = 1445, label = "Fiora Longears", offMapText = "Travel to Fiora Longears in Dustwallow Marsh.", x = 0.6646 },
            },
            dependsOn = { "accept-1135-highperch-venom", "objective-1135-quest-work" },
            id = "turnin-1135-highperch-venom",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1135, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            text = "Turn in The Orc Report to Theramore Lieutenant.",
            route = {
                { y = 0.4713, mapID = 1445, label = "Theramore Lieutenant", offMapText = "Travel to Theramore Lieutenant in Dustwallow Marsh.", x = 0.6507 },
            },
            dependsOn = { "accept-1219-the-orc-report" },
            id = "turnin-1219-the-orc-report",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1219, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            route = {
                { y = 0.4713, mapID = 1445, label = "Theramore Lieutenant", offMapText = "Travel to Theramore Lieutenant in Dustwallow Marsh.", x = 0.6507 },
            },
            text = "Accept Captain Vimes from Theramore Lieutenant.",
            id = "accept-1220-captain-vimes",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1220, state = "activeOrCompleted" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1219 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 570,
            text = "Turn in Captain Vimes to Captain Garran Vimes.",
            route = {
                { y = 0.4862, mapID = 1445, label = "Captain Garran Vimes", offMapText = "Travel to Captain Garran Vimes in Dustwallow Marsh.", x = 0.6821 },
            },
            dependsOn = { "accept-1220-captain-vimes" },
            id = "turnin-1220-captain-vimes",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1220, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1219 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 580,
            text = "Turn in Lieutenant Paval Reethe to Captain Garran Vimes.",
            route = {
                { y = 0.4862, mapID = 1445, label = "Captain Garran Vimes", offMapText = "Travel to Captain Garran Vimes in Dustwallow Marsh.", x = 0.6821 },
            },
            dependsOn = { "accept-1252-lieutenant-paval-reethe" },
            id = "turnin-1252-lieutenant-paval-reethe",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1252, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1302, 1282 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 590,
            route = {
                { y = 0.4862, mapID = 1445, label = "Captain Garran Vimes", offMapText = "Travel to Captain Garran Vimes in Dustwallow Marsh.", x = 0.6821 },
            },
            text = "Accept Lieutenant Paval Reethe from Captain Garran Vimes.",
            id = "accept-1259-lieutenant-paval-reethe",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1259, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1252 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 600,
            text = "Turn in The Black Shield to Captain Garran Vimes.",
            route = {
                { y = 0.4862, mapID = 1445, label = "Captain Garran Vimes", offMapText = "Travel to Captain Garran Vimes in Dustwallow Marsh.", x = 0.6821 },
            },
            dependsOn = { "accept-1253-the-black-shield" },
            id = "turnin-1253-the-black-shield",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1253, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1302, 1282 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            route = {
                { y = 0.4862, mapID = 1445, label = "Captain Garran Vimes", offMapText = "Travel to Captain Garran Vimes in Dustwallow Marsh.", x = 0.6821 },
            },
            text = "Accept The Black Shield from Captain Garran Vimes.",
            id = "accept-1319-the-black-shield",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1319, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1253 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 620,
            text = "Turn in Suspicious Hoofprints to Captain Garran Vimes.",
            route = {
                { y = 0.4862, mapID = 1445, label = "Captain Garran Vimes", offMapText = "Travel to Captain Garran Vimes in Dustwallow Marsh.", x = 0.6821 },
            },
            dependsOn = { "accept-1284-suspicious-hoofprints" },
            id = "turnin-1284-suspicious-hoofprints",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1284, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1282, 1302 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            text = "Turn in Lieutenant Paval Reethe to Adjutant Tesoran.",
            route = {
                { y = 0.4811, mapID = 1445, label = "Adjutant Tesoran", offMapText = "Travel to Adjutant Tesoran in Dustwallow Marsh.", x = 0.6805 },
            },
            dependsOn = { "accept-1259-lieutenant-paval-reethe" },
            id = "turnin-1259-lieutenant-paval-reethe",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1259, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1252 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            route = {
                { y = 0.4811, mapID = 1445, label = "Adjutant Tesoran", offMapText = "Travel to Adjutant Tesoran in Dustwallow Marsh.", x = 0.6805 },
            },
            text = "Accept Daelin's Men from Adjutant Tesoran.",
            id = "accept-1285-daelin-s-men",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1285, state = "activeOrCompleted" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1259 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 650,
            text = "Turn in Daelin's Men to Captain Garran Vimes.",
            route = {
                { y = 0.4862, mapID = 1445, label = "Captain Garran Vimes", offMapText = "Travel to Captain Garran Vimes in Dustwallow Marsh.", x = 0.6821 },
            },
            dependsOn = { "accept-1285-daelin-s-men" },
            id = "turnin-1285-daelin-s-men",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1285, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1259 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            text = "Turn in The Black Shield to Caz Twosprocket.",
            route = {
                { y = 0.5043, mapID = 1445, label = "Caz Twosprocket", offMapText = "Travel to Caz Twosprocket in Dustwallow Marsh.", x = 0.6475 },
            },
            dependsOn = { "accept-1319-the-black-shield" },
            id = "turnin-1319-the-black-shield",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1319, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1253 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 670,
            route = {
                { y = 0.5043, mapID = 1445, label = "Caz Twosprocket", offMapText = "Travel to Caz Twosprocket in Dustwallow Marsh.", x = 0.6475 },
            },
            text = "Accept The Black Shield from Caz Twosprocket.",
            id = "accept-1320-the-black-shield",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1320, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1319 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 680,
            text = "Turn in The Black Shield to Captain Garran Vimes.",
            route = {
                { y = 0.4862, mapID = 1445, label = "Captain Garran Vimes", offMapText = "Travel to Captain Garran Vimes in Dustwallow Marsh.", x = 0.6821 },
            },
            dependsOn = { "accept-1320-the-black-shield" },
            id = "turnin-1320-the-black-shield",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1320, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1319 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            text = "Turn in Goblin Sponsorship to Gazlowe.",
            route = {
                { y = 0.3623, mapID = 1413, label = "Gazlowe", offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268 },
            },
            dependsOn = { "accept-1178-goblin-sponsorship" },
            id = "turnin-1178-goblin-sponsorship",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1178, state = "completed" },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1176 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 700,
            route = {
                { y = 0.3623, mapID = 1413, label = "Gazlowe", offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268 },
            },
            text = "Accept Goblin Sponsorship from Gazlowe.",
            id = "accept-1180-goblin-sponsorship",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1180, state = "activeOrCompleted" },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1178 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1798-seeking-strahad",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1798,
            priority = 710,
        },
        {
            priority = 720,
            route = {
                { y = 0.355, mapID = 1413, label = "Strahad Farsan", offMapText = "Travel to Strahad Farsan in The Barrens.", x = 0.6263 },
            },
            text = "Turn in Seeking Strahad to Strahad Farsan.",
            id = "turnin-1798-seeking-strahad",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1798, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 730,
            route = {
                { y = 0.355, mapID = 1413, label = "Strahad Farsan", offMapText = "Travel to Strahad Farsan in The Barrens.", x = 0.6263 },
            },
            text = "Accept Tome of the Cabal from Strahad Farsan.",
            id = "accept-1758-tome-of-the-cabal",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1758, state = "activeOrCompleted" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1718-the-islander",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1718,
            priority = 740,
        },
        {
            priority = 750,
            route = {
                { y = 0.4917, mapID = 1413, label = "Klannoc Macleod", offMapText = "Travel to Klannoc Macleod in The Barrens.", x = 0.6862 },
            },
            text = "Turn in The Islander to Klannoc Macleod.",
            id = "turnin-1718-the-islander",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1718, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 760,
            route = {
                { y = 0.4917, mapID = 1413, label = "Klannoc Macleod", offMapText = "Travel to Klannoc Macleod in The Barrens.", x = 0.6862 },
            },
            text = "Accept The Affray from Klannoc Macleod.",
            id = "accept-1719-the-affray",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1719, state = "activeOrCompleted" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1718 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 770,
            text = "Kill Big Will.",
            route = {
                { y = 0.4872, mapID = 1413, label = "Affray Challenger", offMapText = "Travel to Affray Challenger.", x = 0.6861 },
            },
            dependsOn = { "accept-1719-the-affray" },
            id = "objective-1719-1-affray-challenger",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1719, text = "Affray Challenger", index = 1 },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1718 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 780,
            text = "Turn in The Affray to Klannoc Macleod.",
            route = {
                { y = 0.4917, mapID = 1413, label = "Klannoc Macleod", offMapText = "Travel to Klannoc Macleod in The Barrens.", x = 0.6862 },
            },
            dependsOn = { "accept-1719-the-affray", "objective-1719-1-affray-challenger" },
            id = "turnin-1719-the-affray",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1719, state = "completed" },
            },
            sourceStep = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1718 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 790,
            route = {
                { y = 0.4917, mapID = 1413, label = "Klannoc Macleod", offMapText = "Travel to Klannoc Macleod in The Barrens.", x = 0.6862 },
            },
            text = "Accept The Windwatcher from Klannoc Macleod.",
            id = "accept-1791-the-windwatcher",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1791, state = "activeOrCompleted" },
            },
            sourceStep = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1719 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 800,
            text = "Turn in Wharfmaster Dizzywig to Wharfmaster Dizzywig.",
            route = {
                { y = 0.3845, mapID = 1413, label = "Wharfmaster Dizzywig", offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.", x = 0.6335 },
            },
            dependsOn = { "accept-1111-wharfmaster-dizzywig" },
            id = "turnin-1111-wharfmaster-dizzywig",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1111, state = "completed" },
            },
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 810,
            route = {
                { y = 0.3845, mapID = 1413, label = "Wharfmaster Dizzywig", offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.", x = 0.6335 },
            },
            text = "Accept Parts for Kravel from Wharfmaster Dizzywig.",
            id = "accept-1112-parts-for-kravel",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1112, state = "activeOrCompleted" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1111 },
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
                { y = 0.3845, mapID = 1413, label = "Wharfmaster Dizzywig", offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.", x = 0.6335 },
            },
            text = "Turn in The Barrens Port to Wharfmaster Dizzywig.",
            id = "turnin-1039-the-barrens-port",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1039, state = "completed" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1038 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 830,
            route = {
                { y = 0.3845, mapID = 1413, label = "Wharfmaster Dizzywig", offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.", x = 0.6335 },
            },
            text = "Accept Passage to Booty Bay from Wharfmaster Dizzywig.",
            id = "accept-1040-passage-to-booty-bay",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1040, state = "activeOrCompleted" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1039 },
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
