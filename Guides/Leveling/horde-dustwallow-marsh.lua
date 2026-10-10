local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Dustwallow Marsh",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-dustwallow-marsh",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 37 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-1201-theramore-spies",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 1201,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.3066, mapID = 1445, label = "Nazeer Bloodpike", offMapText = "Travel to Nazeer Bloodpike in Dustwallow Marsh.", x = 0.3521 },
            },
            text = "Accept Theramore Spies from Nazeer Bloodpike.",
            id = "accept-1201-theramore-spies",
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
                quest = { id = 1201, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.4763, mapID = 1445, label = "Suspicious Hoofprints", offMapText = "Travel to Suspicious Hoofprints.", x = 0.297 },
            },
            text = "Accept Suspicious Hoofprints.",
            id = "accept-1268-suspicious-hoofprints",
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
                quest = { id = 1268, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 40,
            route = {
                { y = 0.4824, mapID = 1445, label = "Lieutenant Paval Reethe", offMapText = "Travel to Lieutenant Paval Reethe.", x = 0.2983 },
            },
            text = "Accept Lieutenant Paval Reethe.",
            id = "accept-1269-lieutenant-paval-reethe",
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
                quest = { id = 1269, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { y = 0.4859, mapID = 1445, label = "The Black Shield", offMapText = "Travel to The Black Shield.", x = 0.2963 },
            },
            text = "Accept The Black Shield.",
            id = "accept-1251-the-black-shield",
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
                quest = { id = 1251, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1177-hungry",
            kind = "note",
            text = "Reach level 32 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 32 },
            },
            requiredLevel = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1177,
            priority = 60,
        },
        {
            priority = 70,
            route = {
                { y = 0.3825, mapID = 1445, label = "Mudcrush Durtfeet", offMapText = "Travel to Mudcrush Durtfeet in Dustwallow Marsh.", x = 0.3515 },
            },
            text = "Accept Hungry! from Mudcrush Durtfeet.",
            id = "accept-1177-hungry",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                },
            },
            complete = {
                quest = { id = 1177, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            text = "Turn in Suspicious Hoofprints to Krog.",
            route = {
                { y = 0.3188, mapID = 1445, label = "Krog", offMapText = "Travel to Krog in Dustwallow Marsh.", x = 0.3642 },
            },
            dependsOn = { "accept-1268-suspicious-hoofprints" },
            id = "turnin-1268-suspicious-hoofprints",
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
                quest = { id = 1268, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 90,
            text = "Turn in Lieutenant Paval Reethe to Krog.",
            route = {
                { y = 0.3188, mapID = 1445, label = "Krog", offMapText = "Travel to Krog in Dustwallow Marsh.", x = 0.3642 },
            },
            dependsOn = { "accept-1269-lieutenant-paval-reethe" },
            id = "turnin-1269-lieutenant-paval-reethe",
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
                quest = { id = 1269, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 100,
            text = "Turn in The Black Shield to Krog.",
            route = {
                { y = 0.3188, mapID = 1445, label = "Krog", offMapText = "Travel to Krog in Dustwallow Marsh.", x = 0.3642 },
            },
            dependsOn = { "accept-1251-the-black-shield" },
            id = "turnin-1251-the-black-shield",
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
                quest = { id = 1251, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            route = {
                { y = 0.3188, mapID = 1445, label = "Krog", offMapText = "Travel to Krog in Dustwallow Marsh.", x = 0.3642 },
            },
            text = "Accept The Black Shield from Krog.",
            id = "accept-1321-the-black-shield",
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
                quest = { id = 1321, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1251 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            text = "Turn in The Black Shield to Do'gol.",
            route = {
                { y = 0.308, mapID = 1445, label = "Do'gol", offMapText = "Travel to Do'gol in Dustwallow Marsh.", x = 0.3653 },
            },
            dependsOn = { "accept-1321-the-black-shield" },
            id = "turnin-1321-the-black-shield",
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
                quest = { id = 1321, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1251 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            route = {
                { y = 0.308, mapID = 1445, label = "Do'gol", offMapText = "Travel to Do'gol in Dustwallow Marsh.", x = 0.3653 },
            },
            text = "Accept The Black Shield from Do'gol.",
            id = "accept-1322-the-black-shield",
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
                quest = { id = 1322, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1321 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            text = "Kill 9 Theramore Infiltrator.",
            route = {
                { y = 0.334, mapID = 1445, label = "Theramore Infiltrator", offMapText = "Travel to Theramore Infiltrator.", x = 0.38 },
            },
            dependsOn = { "accept-1201-theramore-spies" },
            id = "objective-1201-1-theramore-infiltrator",
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
                questObjective = { id = 1201, text = "Theramore Infiltrator", index = 1, count = 9 },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            route = {
                { y = 0.1752, mapID = 1445, label = "\"Stinky\" Ignatz", offMapText = "Travel to \"Stinky\" Ignatz in Dustwallow Marsh.", x = 0.4688 },
            },
            text = "Accept Stinky's Escape from \"Stinky\" Ignatz.",
            id = "accept-1270-stinky-s-escape",
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
                quest = { id = 1270, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            route = {
                { y = 0.2627, mapID = 1445, label = "\"Swamp Eye\" Jarl", offMapText = "Travel to \"Swamp Eye\" Jarl in Dustwallow Marsh.", x = 0.5544 },
            },
            text = "Accept Soothing Spices from \"Swamp Eye\" Jarl.",
            id = "accept-1218-soothing-spices",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1218, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 170,
            text = "For Soothing Spices: Bring 3 Soothing Spices to \"Swamp Eye\" Jarl in Dustwallow Marsh.",
            id = "objective-1218-quest-work",
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
                quest = { id = 1218, state = "complete" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1218-soothing-spices" },
        },
        {
            priority = 180,
            text = "Turn in Soothing Spices to \"Swamp Eye\" Jarl.",
            route = {
                { y = 0.2627, mapID = 1445, label = "\"Swamp Eye\" Jarl", offMapText = "Travel to \"Swamp Eye\" Jarl in Dustwallow Marsh.", x = 0.5544 },
            },
            dependsOn = { "accept-1218-soothing-spices", "objective-1218-quest-work" },
            id = "turnin-1218-soothing-spices",
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
                quest = { id = 1218, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            route = {
                { y = 0.2593, mapID = 1445, label = "The Lost Report", offMapText = "Travel to The Lost Report.", x = 0.5544 },
            },
            text = "Accept The Lost Report.",
            id = "accept-1238-the-lost-report",
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
                quest = { id = 1238, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            text = "Collect 12 Mirefin Head.",
            route = {
                { y = 0.2137, mapID = 1445, label = "Mirefin Coastrunner", offMapText = "Travel to Mirefin Coastrunner.", x = 0.5783 },
            },
            dependsOn = { "accept-1177-hungry" },
            id = "objective-1177-1-mirefin-coastrunner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1177, text = "Mirefin Coastrunner", index = 1, count = 12 },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            route = {
                { y = 0.2627, mapID = 1445, label = "\"Swamp Eye\" Jarl", offMapText = "Travel to \"Swamp Eye\" Jarl in Dustwallow Marsh.", x = 0.5544 },
            },
            text = "Accept Jarl Needs Eyes from \"Swamp Eye\" Jarl.",
            id = "accept-1206-jarl-needs-eyes",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1206, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1218 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1322-1-acidic-venom-sac",
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
            text = "Collect 6 Acidic Venom Sac.",
            complete = {
                questObjective = { id = 1322, index = 1, text = "Acidic Venom Sac", count = 6 },
            },
            route = {
                { mapID = 1445, x = 0.516, y = 0.252, label = "Acidic Venom Sac", offMapText = "Travel to Acidic Venom Sac." },
            },
            sourceStep = 22,
            priority = 220,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1321 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1322-the-black-shield" },
        },
        {
            priority = 230,
            text = "Collect 40 Unpopped Darkmist Eye.",
            route = {
                { y = 0.2276, mapID = 1445, label = "Darkmist Silkspinner", offMapText = "Travel to Darkmist Silkspinner.", x = 0.3322 },
            },
            dependsOn = { "accept-1206-jarl-needs-eyes" },
            id = "objective-1206-1-darkmist-silkspinner",
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
                questObjective = { id = 1206, text = "Darkmist Silkspinner", index = 1, count = 40 },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1218 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            text = "Turn in Theramore Spies to Nazeer Bloodpike.",
            route = {
                { mapID = 1445, x = 0.3521, y = 0.3066, label = "Nazeer Bloodpike", offMapText = "Travel to Nazeer Bloodpike in Dustwallow Marsh." },
            },
            dependsOn = { "accept-1201-theramore-spies", "objective-1201-1-theramore-infiltrator" },
            id = "turnin-1201-theramore-spies",
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
                quest = { id = 1201, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            route = {
                { mapID = 1445, x = 0.3521, y = 0.3066, label = "Nazeer Bloodpike", offMapText = "Travel to Nazeer Bloodpike in Dustwallow Marsh." },
            },
            text = "Accept The Theramore Docks from Nazeer Bloodpike.",
            id = "accept-1202-the-theramore-docks",
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
                quest = { id = 1202, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1201 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            text = "Turn in The Lost Report to Nazeer Bloodpike.",
            route = {
                { mapID = 1445, x = 0.3521, y = 0.3066, label = "Nazeer Bloodpike", offMapText = "Travel to Nazeer Bloodpike in Dustwallow Marsh." },
            },
            dependsOn = { "accept-1238-the-lost-report" },
            id = "turnin-1238-the-lost-report",
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
                quest = { id = 1238, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            text = "Turn in The Black Shield to Do'gol.",
            route = {
                { y = 0.308, mapID = 1445, label = "Do'gol", offMapText = "Travel to Do'gol in Dustwallow Marsh.", x = 0.3653 },
            },
            dependsOn = { "accept-1322-the-black-shield", "objective-1322-1-acidic-venom-sac" },
            id = "turnin-1322-the-black-shield",
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
                quest = { id = 1322, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1321 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            route = {
                { y = 0.308, mapID = 1445, label = "Do'gol", offMapText = "Travel to Do'gol in Dustwallow Marsh.", x = 0.3653 },
            },
            text = "Accept The Black Shield from Do'gol.",
            id = "accept-1323-the-black-shield",
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
                quest = { id = 1323, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1322 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            text = "Turn in The Black Shield to Krog.",
            route = {
                { y = 0.3188, mapID = 1445, label = "Krog", offMapText = "Travel to Krog in Dustwallow Marsh.", x = 0.3642 },
            },
            dependsOn = { "accept-1323-the-black-shield" },
            id = "turnin-1323-the-black-shield",
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
                quest = { id = 1323, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1322 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            route = {
                { y = 0.3669, mapID = 1445, label = "Ogron", offMapText = "Travel to Ogron in Dustwallow Marsh.", x = 0.4096 },
            },
            text = "Accept Questioning Reethe from Ogron.",
            id = "accept-1273-questioning-reethe",
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
                quest = { id = 1273, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1269 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            text = "Turn in Hungry! to Mudcrush Durtfeet.",
            route = {
                { y = 0.3825, mapID = 1445, label = "Mudcrush Durtfeet", offMapText = "Travel to Mudcrush Durtfeet in Dustwallow Marsh.", x = 0.3515 },
            },
            dependsOn = { "accept-1177-hungry", "objective-1177-1-mirefin-coastrunner" },
            id = "turnin-1177-hungry",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                },
            },
            complete = {
                quest = { id = 1177, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Turn in Questioning Reethe to Krog.",
            route = {
                { y = 0.3188, mapID = 1445, label = "Krog", offMapText = "Travel to Krog in Dustwallow Marsh.", x = 0.3642 },
            },
            dependsOn = { "accept-1273-questioning-reethe" },
            id = "turnin-1273-questioning-reethe",
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
                quest = { id = 1273, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1269 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            route = {
                { y = 0.3188, mapID = 1445, label = "Krog", offMapText = "Travel to Krog in Dustwallow Marsh.", x = 0.3642 },
            },
            text = "Accept The Black Shield from Krog.",
            id = "accept-1276-the-black-shield",
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
                quest = { id = 1276, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1273 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 340,
            text = "Turn in Jarl Needs Eyes to \"Swamp Eye\" Jarl.",
            route = {
                { y = 0.2627, mapID = 1445, label = "\"Swamp Eye\" Jarl", offMapText = "Travel to \"Swamp Eye\" Jarl in Dustwallow Marsh.", x = 0.5543 },
            },
            dependsOn = { "accept-1206-jarl-needs-eyes", "objective-1206-1-darkmist-silkspinner" },
            id = "turnin-1206-jarl-needs-eyes",
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
                quest = { id = 1206, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1218 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            route = {
                { y = 0.2627, mapID = 1445, label = "\"Swamp Eye\" Jarl", offMapText = "Travel to \"Swamp Eye\" Jarl in Dustwallow Marsh.", x = 0.5543 },
            },
            text = "Accept Jarl Needs a Blade from \"Swamp Eye\" Jarl.",
            id = "accept-1203-jarl-needs-a-blade",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1203, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1206 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            text = "For Jarl Needs a Blade: Bring a Moonsteel Broadsword to Jarl in Dustwallow Marsh.",
            id = "objective-1203-quest-work",
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
                quest = { id = 1203, state = "complete" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1206 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1203-jarl-needs-a-blade" },
        },
        {
            priority = 370,
            text = "Turn in Jarl Needs a Blade to \"Swamp Eye\" Jarl.",
            route = {
                { y = 0.2627, mapID = 1445, label = "\"Swamp Eye\" Jarl", offMapText = "Travel to \"Swamp Eye\" Jarl in Dustwallow Marsh.", x = 0.5544 },
            },
            dependsOn = { "accept-1203-jarl-needs-a-blade", "objective-1203-quest-work" },
            id = "turnin-1203-jarl-needs-a-blade",
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
                quest = { id = 1203, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1206 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            route = {
                { y = 0.2593, mapID = 1445, label = "The Severed Head", offMapText = "Travel to The Severed Head.", x = 0.5544 },
            },
            text = "Accept The Severed Head.",
            id = "accept-1239-the-severed-head",
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
                quest = { id = 1239, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1238 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 390,
            text = "Collect 1 Captain's Documents.",
            route = {
                { y = 0.5118, mapID = 1445, label = "Captain's Footlocker", offMapText = "Travel to Captain's Footlocker.", x = 0.7153 },
            },
            dependsOn = { "accept-1202-the-theramore-docks" },
            id = "objective-1202-1-captain-s-footlocker",
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
                questObjective = { id = 1202, text = "Captain's Footlocker", index = 1, count = 1 },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1201 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            text = "Turn in The Theramore Docks to Nazeer Bloodpike.",
            route = {
                { y = 0.3066, mapID = 1445, label = "Nazeer Bloodpike", offMapText = "Travel to Nazeer Bloodpike in Dustwallow Marsh.", x = 0.3521 },
            },
            dependsOn = { "accept-1202-the-theramore-docks", "objective-1202-1-captain-s-footlocker" },
            id = "turnin-1202-the-theramore-docks",
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
                quest = { id = 1202, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1201 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            text = "Turn in The Severed Head to Nazeer Bloodpike.",
            route = {
                { y = 0.3066, mapID = 1445, label = "Nazeer Bloodpike", offMapText = "Travel to Nazeer Bloodpike in Dustwallow Marsh.", x = 0.3521 },
            },
            dependsOn = { "accept-1239-the-severed-head" },
            id = "turnin-1239-the-severed-head",
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
                quest = { id = 1239, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1238 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            route = {
                { y = 0.3066, mapID = 1445, label = "Nazeer Bloodpike", offMapText = "Travel to Nazeer Bloodpike in Dustwallow Marsh.", x = 0.3521 },
            },
            text = "Accept The Troll Witchdoctor from Nazeer Bloodpike.",
            id = "accept-1240-the-troll-witchdoctor",
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
                quest = { id = 1240, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1239 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-232-errand-for-apothecary-zinge",
            kind = "note",
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 38 },
            },
            requiredLevel = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 232,
            priority = 430,
        },
        {
            priority = 440,
            route = {
                { mapID = 1458, x = 0.5013000000000001, y = 0.6799, label = "Apothecary Zinge", offMapText = "Travel to Apothecary Zinge in Undercity." },
            },
            text = "Accept Errand for Apothecary Zinge from Apothecary Zinge.",
            id = "accept-232-errand-for-apothecary-zinge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 232, state = "activeOrCompleted" },
            },
            sourceStep = 62,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 450,
            text = "Turn in Errand for Apothecary Zinge to Alessandro Luca.",
            route = {
                { mapID = 1458, x = 0.5861999999999999, y = 0.5467, label = "Alessandro Luca", offMapText = "Travel to Alessandro Luca in Undercity." },
            },
            dependsOn = { "accept-232-errand-for-apothecary-zinge" },
            id = "turnin-232-errand-for-apothecary-zinge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 232, state = "completed" },
            },
            sourceStep = 63,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { mapID = 1458, x = 0.5861999999999999, y = 0.5467, label = "Alessandro Luca", offMapText = "Travel to Alessandro Luca in Undercity." },
            },
            text = "Accept Errand for Apothecary Zinge from Alessandro Luca.",
            id = "accept-238-errand-for-apothecary-zinge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 238, state = "activeOrCompleted" },
            },
            sourceStep = 63,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 232 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Turn in Errand for Apothecary Zinge to Apothecary Zinge.",
            route = {
                { mapID = 1458, x = 0.5013000000000001, y = 0.6799, label = "Apothecary Zinge", offMapText = "Travel to Apothecary Zinge in Undercity." },
            },
            dependsOn = { "accept-238-errand-for-apothecary-zinge" },
            id = "turnin-238-errand-for-apothecary-zinge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 238, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 232 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { mapID = 1458, x = 0.5013000000000001, y = 0.6799, label = "Apothecary Zinge", offMapText = "Travel to Apothecary Zinge in Undercity." },
            },
            text = "Accept Into the Field from Apothecary Zinge.",
            id = "accept-243-into-the-field",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 243, state = "activeOrCompleted" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 238 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1714-1-thundering-charm",
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
            priority = 490,
        },
        {
            priority = 500,
            route = {
                { y = 0.3582, mapID = 1458, label = "Thundering Charm", offMapText = "Travel to Thundering Charm.", x = 0.6439 },
            },
            text = "Collect 8 Thundering Charm from the matching Arathi elementals. Keep them for the later cauldron exchange.",
            id = "objective-1714-1-thundering-charm",
            kind = "note",
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
            complete = {
                item = { name = "Thundering Charm", minCount = 8 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            checkpointQuest = 1714,
            contextQuest = 1714,
        },
        {
            priority = 510,
            route = {
                { y = 0.3582, mapID = 1458, label = "Blue Pearl", offMapText = "Travel to Blue Pearl.", x = 0.6439 },
            },
            text = "Collect 9 Blue Pearl. Keep 9 Blue Pearl for the later quest pickup.",
            id = "collect-before-pickup-objective-705-1-blue-pearl",
            kind = "note",
            conditions = { faction = "Horde" },
            complete = {
                item = { name = "Blue Pearl", minCount = 9 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            referenceQuest = 705,
        },
        {
            priority = 520,
            route = {
                { y = 0.316, mapID = 1417, label = "Cresting Exile", offMapText = "Travel to Cresting Exile.", x = 0.662 },
            },
            text = "Collect 8 Cresting Charm from the matching Arathi elementals. Keep them for the later cauldron exchange.",
            id = "objective-1714-1-cresting-exile",
            kind = "note",
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
            complete = {
                item = { name = "Cresting Charm", minCount = 8 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            checkpointQuest = 1714,
            contextQuest = 1714,
        },
        {
            priority = 530,
            route = {
                { y = 0.526, mapID = 1417, label = "Thundering Exile", offMapText = "Travel to Thundering Exile.", x = 0.522 },
            },
            text = "Collect 8 Thundering Charm from the matching Arathi elementals. Keep them for the later cauldron exchange.",
            id = "objective-1714-1-thundering-exile",
            kind = "note",
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
            complete = {
                item = { name = "Thundering Charm", minCount = 8 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            checkpointQuest = 1714,
            contextQuest = 1714,
        },
        {
            priority = 540,
            route = {
                { y = 0.304, mapID = 1417, label = "Burning Exile", offMapText = "Travel to Burning Exile.", x = 0.244 },
            },
            text = "Collect 8 Burning Charm from the matching Arathi elementals. Keep them for the later cauldron exchange.",
            id = "objective-1714-1-burning-exile",
            kind = "note",
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
            complete = {
                item = { name = "Burning Charm", minCount = 8 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            checkpointQuest = 1714,
            contextQuest = 1714,
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
