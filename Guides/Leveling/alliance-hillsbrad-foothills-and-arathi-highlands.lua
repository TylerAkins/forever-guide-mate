local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Hillsbrad Foothills & Arathi Highlands",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 32 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-565-bartolo-s-yeti-fur-cloak",
            kind = "note",
            text = "Reach level 29 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 29 },
            },
            requiredLevel = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 565,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.5553, mapID = 1424, label = "Bartolo Ginsetti", offMapText = "Travel to Bartolo Ginsetti in Hillsbrad Foothills.", x = 0.4943 },
            },
            text = "Accept Bartolo's Yeti Fur Cloak from Bartolo Ginsetti.",
            id = "accept-565-bartolo-s-yeti-fur-cloak",
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
                quest = { id = 565, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-564-costly-menace",
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
            checkpointQuest = 564,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.5596, mapID = 1424, label = "Darren Malvew", offMapText = "Travel to Darren Malvew in Hillsbrad Foothills.", x = 0.5242 },
            },
            text = "Accept Costly Menace from Darren Malvew.",
            id = "accept-564-costly-menace",
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
                quest = { id = 564, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { y = 0.5709, mapID = 1424, label = "Loremaster Dibbs", offMapText = "Travel to Loremaster Dibbs in Hillsbrad Foothills.", x = 0.5057 },
            },
            text = "Turn in Southshore to Loremaster Dibbs.",
            id = "turnin-538-southshore",
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
                quest = { id = 538, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 337 },
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
                { y = 0.5838, mapID = 1424, label = "Lieutenant Farren Orinelle", offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.", x = 0.5146 },
            },
            text = "Accept Down the Coast from Lieutenant Farren Orinelle.",
            id = "accept-536-down-the-coast",
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
                quest = { id = 536, state = "activeOrCompleted" },
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
                { y = 0.5868, mapID = 1424, label = "Chef Jessen", offMapText = "Travel to Chef Jessen in Hillsbrad Foothills.", x = 0.5189 },
            },
            text = "Accept Soothing Turtle Bisque from Chef Jessen.",
            id = "accept-555-soothing-turtle-bisque",
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
                quest = { id = 555, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            text = "For Soothing Turtle Bisque: Bring 10 pieces of Turtle Meat and some Soothing Spices to Chef Jessen in Southshore. Keep 10 Turtle Meat for the later quest pickup.",
            id = "collect-before-pickup-objective-555-quest-work",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                item = { name = "Turtle Meat", minCount = 10 },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
            referenceQuest = 555,
        },
        {
            id = "prepare-555-all-required-materials",
            kind = "note",
            text = "Collect 10 Turtle Meat from turtles near Southshore. Buy Soothing Spices from Micha Yance in Southshore. Keep both for Chef Jessen.",
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
            requiredQuests = {},
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Turtle Meat", minCount = 10 },
                            },
                            {
                                item = { name = "Soothing Spices", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 555, state = "complete" },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1424, x = 0.4894, y = 0.5503, label = "Micha Yance", offMapText = "Travel to Micha Yance." },
            },
            checkpointQuest = 555,
            instructionOnly = true,
            rememberPreparation = 555,
            dependsOn = {},
            priority = 90,
        },
        {
            priority = 100,
            text = "Turn in Soothing Turtle Bisque to Chef Jessen.",
            route = {
                { y = 0.5868, mapID = 1424, label = "Chef Jessen", offMapText = "Travel to Chef Jessen in Hillsbrad Foothills.", x = 0.5189 },
            },
            dependsOn = { "accept-555-soothing-turtle-bisque" },
            id = "turnin-555-soothing-turtle-bisque",
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
                quest = { id = 555, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            text = "Kill 10 Torn Fin Tidehunter.",
            route = {
                { y = 0.646, mapID = 1424, label = "Torn Fin Tidehunter", offMapText = "Travel to Torn Fin Tidehunter.", x = 0.476 },
            },
            dependsOn = { "accept-536-down-the-coast" },
            id = "objective-536-1-torn-fin-tidehunter",
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
                questObjective = { id = 536, text = "Torn Fin Tidehunter", index = 1, count = 10 },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 120,
            text = "Kill 10 Torn Fin Oracle.",
            route = {
                { y = 0.646, mapID = 1424, label = "Torn Fin Oracle", offMapText = "Travel to Torn Fin Oracle.", x = 0.476 },
            },
            dependsOn = { "accept-536-down-the-coast" },
            id = "objective-536-2-torn-fin-oracle",
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
                questObjective = { id = 536, text = "Torn Fin Oracle", index = 2, count = 10 },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            text = "Turn in Down the Coast to Lieutenant Farren Orinelle.",
            route = {
                { y = 0.5838, mapID = 1424, label = "Lieutenant Farren Orinelle", offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.", x = 0.5146 },
            },
            dependsOn = { "accept-536-down-the-coast", "objective-536-1-torn-fin-tidehunter", "objective-536-2-torn-fin-oracle" },
            id = "turnin-536-down-the-coast",
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
                quest = { id = 536, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 140,
            route = {
                { y = 0.5838, mapID = 1424, label = "Lieutenant Farren Orinelle", offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.", x = 0.5146 },
            },
            text = "Accept Farren's Proof from Lieutenant Farren Orinelle.",
            id = "accept-559-farren-s-proof",
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
                quest = { id = 559, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 536 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "Collect 10 Murloc Head.",
            route = {
                { y = 0.646, mapID = 1424, label = "Torn Fin Tidehunter", offMapText = "Travel to Torn Fin Tidehunter.", x = 0.476 },
            },
            dependsOn = { "accept-559-farren-s-proof" },
            id = "objective-559-1-torn-fin-tidehunter",
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
                questObjective = { id = 559, text = "Torn Fin Tidehunter", index = 1, count = 10 },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 536 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            text = "Turn in Farren's Proof to Lieutenant Farren Orinelle.",
            route = {
                { y = 0.5838, mapID = 1424, label = "Lieutenant Farren Orinelle", offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.", x = 0.5146 },
            },
            dependsOn = { "accept-559-farren-s-proof", "objective-559-1-torn-fin-tidehunter" },
            id = "turnin-559-farren-s-proof",
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
                quest = { id = 559, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 536 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.5838, mapID = 1424, label = "Lieutenant Farren Orinelle", offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.", x = 0.5146 },
            },
            text = "Accept Farren's Proof from Lieutenant Farren Orinelle.",
            id = "accept-560-farren-s-proof",
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
                quest = { id = 560, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 559 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "Turn in Farren's Proof to Marshal Redpath.",
            route = {
                { y = 0.5873, mapID = 1424, label = "Marshal Redpath", offMapText = "Travel to Marshal Redpath in Hillsbrad Foothills.", x = 0.4948 },
            },
            dependsOn = { "accept-560-farren-s-proof" },
            id = "turnin-560-farren-s-proof",
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
                quest = { id = 560, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 559 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            route = {
                { y = 0.5873, mapID = 1424, label = "Marshal Redpath", offMapText = "Travel to Marshal Redpath in Hillsbrad Foothills.", x = 0.4948 },
            },
            text = "Accept Farren's Proof from Marshal Redpath.",
            id = "accept-561-farren-s-proof",
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
                quest = { id = 561, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 560 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            text = "Turn in Farren's Proof to Lieutenant Farren Orinelle.",
            route = {
                { y = 0.5838, mapID = 1424, label = "Lieutenant Farren Orinelle", offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.", x = 0.5146 },
            },
            dependsOn = { "accept-561-farren-s-proof" },
            id = "turnin-561-farren-s-proof",
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
                quest = { id = 561, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 560 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            route = {
                { y = 0.5838, mapID = 1424, label = "Lieutenant Farren Orinelle", offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.", x = 0.5146 },
            },
            text = "Accept Stormwind Ho! from Lieutenant Farren Orinelle.",
            id = "accept-562-stormwind-ho",
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
                quest = { id = 562, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 561 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            text = "Kill 10 Daggerspine Shorehunter.",
            route = {
                { y = 0.644, mapID = 1424, label = "Daggerspine Shorehunter", offMapText = "Travel to Daggerspine Shorehunter.", x = 0.55 },
            },
            dependsOn = { "accept-562-stormwind-ho" },
            id = "objective-562-1-daggerspine-shorehunter",
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
                questObjective = { id = 562, text = "Daggerspine Shorehunter", index = 1, count = 10 },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 561 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            text = "Kill 10 Daggerspine Siren.",
            route = {
                { y = 0.644, mapID = 1424, label = "Daggerspine Siren", offMapText = "Travel to Daggerspine Siren.", x = 0.55 },
            },
            dependsOn = { "accept-562-stormwind-ho" },
            id = "objective-562-2-daggerspine-siren",
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
                questObjective = { id = 562, text = "Daggerspine Siren", index = 2, count = 10 },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 561 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            text = "Turn in Stormwind Ho! to Lieutenant Farren Orinelle.",
            route = {
                { y = 0.5838, mapID = 1424, label = "Lieutenant Farren Orinelle", offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.", x = 0.5146 },
            },
            dependsOn = { "accept-562-stormwind-ho", "objective-562-1-daggerspine-shorehunter", "objective-562-2-daggerspine-siren" },
            id = "turnin-562-stormwind-ho",
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
                quest = { id = 562, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 561 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            route = {
                { y = 0.5905, mapID = 1424, label = "Phin Odelic", offMapText = "Travel to Phin Odelic in Hillsbrad Foothills.", x = 0.5034 },
            },
            text = "Accept Hints of a New Plague? from Phin Odelic.",
            id = "accept-659-hints-of-a-new-plague",
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
                quest = { id = 659, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            route = {
                { y = 0.5911, mapID = 1424, label = "Magistrate Henry Maleb", offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.", x = 0.4814 },
            },
            text = "Accept Syndicate Assassins from Magistrate Henry Maleb.",
            id = "accept-505-syndicate-assassins",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 505, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            route = {
                { y = 0.3183, mapID = 1424, label = "Alterac Granite", offMapText = "Travel to Alterac Granite.", x = 0.4618 },
            },
            text = "Collect 5 Alterac Granite.",
            id = "objective-689-1-alterac-granite",
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
                questObjective = { id = 689, text = "Alterac Granite", index = 1, count = 5 },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 686 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-565-4-yeti-fur",
            kind = "objective",
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
            text = "Collect 10 Yeti Fur.",
            complete = {
                questObjective = { id = 565, index = 4, text = "Yeti Fur", count = 10 },
            },
            route = {
                { mapID = 1424, x = 0.4618, y = 0.31829999999999997, label = "Yeti Fur", offMapText = "Travel to Yeti Fur." },
            },
            sourceStep = 20,
            priority = 280,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-565-bartolo-s-yeti-fur-cloak" },
        },
        {
            priority = 290,
            route = {
                { mapID = 1416, x = 0.47909999999999997, y = 0.8212999999999999, label = "Foreboding Plans", offMapText = "Travel to Foreboding Plans." },
            },
            text = "Accept Foreboding Plans.",
            id = "accept-510-foreboding-plans",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 510, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            route = {
                { mapID = 1416, x = 0.47909999999999997, y = 0.8212999999999999, label = "Encrypted Letter", offMapText = "Travel to Encrypted Letter." },
            },
            text = "Accept Encrypted Letter.",
            id = "accept-511-encrypted-letter",
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
                quest = { id = 511, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-505-2-syndicate-thief",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 8 Syndicate Thief.",
            complete = {
                questObjective = { id = 505, index = 2, text = "Syndicate Thief", count = 8 },
            },
            route = {
                { mapID = 1416, x = 0.578, y = 0.664, label = "Syndicate Thief", offMapText = "Travel to Syndicate Thief." },
            },
            sourceStep = 23,
            priority = 310,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-505-syndicate-assassins" },
        },
        {
            id = "objective-505-1-syndicate-footpad",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 12 Syndicate Footpad.",
            complete = {
                questObjective = { id = 505, index = 1, text = "Syndicate Footpad", count = 12 },
            },
            route = {
                { mapID = 1416, x = 0.578, y = 0.664, label = "Syndicate Footpad", offMapText = "Travel to Syndicate Footpad." },
            },
            sourceStep = 23,
            priority = 320,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-505-syndicate-assassins" },
        },
        {
            id = "objective-564-1-mountain-lion",
            kind = "objective",
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
            text = "Kill 8 Mountain Lion.",
            complete = {
                questObjective = { id = 564, index = 1, text = "Mountain Lion", count = 8 },
            },
            route = {
                { mapID = 1416, x = 0.446, y = 0.79, label = "Mountain Lion", offMapText = "Travel to Mountain Lion." },
            },
            sourceStep = 24,
            priority = 330,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-564-costly-menace" },
        },
        {
            id = "objective-564-2-hulking-mountain-lion",
            kind = "objective",
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
            text = "Kill 10 Hulking Mountain Lion.",
            complete = {
                questObjective = { id = 564, index = 2, text = "Hulking Mountain Lion", count = 10 },
            },
            route = {
                { mapID = 1416, x = 0.446, y = 0.79, label = "Hulking Mountain Lion", offMapText = "Travel to Hulking Mountain Lion." },
            },
            sourceStep = 24,
            priority = 340,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-564-costly-menace" },
        },
        {
            priority = 350,
            route = {
                { y = 0.5838, mapID = 1424, label = "Lieutenant Farren Orinelle", offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.", x = 0.5146 },
            },
            text = "Accept Reassignment from Lieutenant Farren Orinelle.",
            id = "accept-563-reassignment",
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
                quest = { id = 563, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 562 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            text = "Turn in Foreboding Plans to Magistrate Henry Maleb.",
            route = {
                { y = 0.5911, mapID = 1424, label = "Magistrate Henry Maleb", offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.", x = 0.4814 },
            },
            dependsOn = { "accept-510-foreboding-plans" },
            id = "turnin-510-foreboding-plans",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 510, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            text = "Turn in Syndicate Assassins to Magistrate Henry Maleb.",
            route = {
                { y = 0.5911, mapID = 1424, label = "Magistrate Henry Maleb", offMapText = "Travel to Magistrate Henry Maleb in Hillsbrad Foothills.", x = 0.4814 },
            },
            dependsOn = { "accept-505-syndicate-assassins", "objective-505-2-syndicate-thief", "objective-505-1-syndicate-footpad" },
            id = "turnin-505-syndicate-assassins",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 505, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            text = "Turn in Encrypted Letter to Loremaster Dibbs.",
            route = {
                { y = 0.5709, mapID = 1424, label = "Loremaster Dibbs", offMapText = "Travel to Loremaster Dibbs in Hillsbrad Foothills.", x = 0.5057 },
            },
            dependsOn = { "accept-511-encrypted-letter" },
            id = "turnin-511-encrypted-letter",
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
                quest = { id = 511, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.5709, mapID = 1424, label = "Loremaster Dibbs", offMapText = "Travel to Loremaster Dibbs in Hillsbrad Foothills.", x = 0.5057 },
            },
            text = "Accept Letter to Stormpike from Loremaster Dibbs.",
            id = "accept-514-letter-to-stormpike",
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
                quest = { id = 514, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 511 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            text = "Turn in Costly Menace to Darren Malvew.",
            route = {
                { y = 0.5596, mapID = 1424, label = "Darren Malvew", offMapText = "Travel to Darren Malvew in Hillsbrad Foothills.", x = 0.5242 },
            },
            dependsOn = { "accept-564-costly-menace", "objective-564-1-mountain-lion", "objective-564-2-hulking-mountain-lion" },
            id = "turnin-564-costly-menace",
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
                quest = { id = 564, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-565-reviewed-1",
            kind = "objective",
            text = "Buy 1 Bolt of Woolen Cloth at the Stormwind Auction House if available. Keep it for Bartolo Ginsetti in Southshore.",
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
            requiredQuests = {},
            complete = {
                questObjective = { id = 565, index = 1, count = 1 },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1453, x = 0.5361, y = 0.5976, label = "Auctioneer Jaxon", offMapText = "Travel to Auctioneer Jaxon." },
            },
            dependsOn = { "accept-565-bartolo-s-yeti-fur-cloak" },
            priority = 410,
        },
        {
            id = "objective-565-reviewed-2",
            kind = "objective",
            text = "Buy 1 Fine Thread from Micha Yance in Southshore.",
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
            requiredQuests = {},
            complete = {
                questObjective = { id = 565, index = 2, count = 1 },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1424, x = 0.4894, y = 0.5503, label = "Micha Yance", offMapText = "Travel to Micha Yance." },
            },
            sourceStep = 29,
            dependsOn = { "accept-565-bartolo-s-yeti-fur-cloak" },
            priority = 420,
        },
        {
            id = "objective-565-reviewed-3",
            kind = "objective",
            text = "Buy 1 Hillman's Cloak at the Stormwind Auction House if available. Keep it for Bartolo Ginsetti in Southshore.",
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
            requiredQuests = {},
            complete = {
                questObjective = { id = 565, index = 3, count = 1 },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1453, x = 0.5361, y = 0.5976, label = "Auctioneer Jaxon", offMapText = "Travel to Auctioneer Jaxon." },
            },
            dependsOn = { "accept-565-bartolo-s-yeti-fur-cloak" },
            priority = 430,
        },
        {
            priority = 440,
            text = "Turn in Bartolo's Yeti Fur Cloak to Bartolo Ginsetti.",
            route = {
                { y = 0.5553, mapID = 1424, label = "Bartolo Ginsetti", offMapText = "Travel to Bartolo Ginsetti in Hillsbrad Foothills.", x = 0.4943 },
            },
            dependsOn = {
                "accept-565-bartolo-s-yeti-fur-cloak",
                "objective-565-4-yeti-fur",
                "objective-565-reviewed-1",
                "objective-565-reviewed-2",
                "objective-565-reviewed-3",
            },
            id = "turnin-565-bartolo-s-yeti-fur-cloak",
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
                quest = { id = 565, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            route = {
                { y = 0.4755, mapID = 1417, label = "Captain Nials", offMapText = "Travel to Captain Nials in Arathi Highlands.", x = 0.4583 },
            },
            text = "Accept Northfold Manor from Captain Nials.",
            id = "accept-681-northfold-manor",
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
                quest = { id = 681, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            text = "Turn in Hints of a New Plague? to Quae.",
            route = {
                { y = 0.5385, mapID = 1417, label = "Quae", offMapText = "Travel to Quae in Arathi Highlands.", x = 0.6019 },
            },
            dependsOn = { "accept-659-hints-of-a-new-plague" },
            id = "turnin-659-hints-of-a-new-plague",
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
                quest = { id = 659, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            route = {
                { y = 0.5385, mapID = 1417, label = "Quae", offMapText = "Travel to Quae in Arathi Highlands.", x = 0.6019 },
            },
            text = "Accept Hints of a New Plague? from Quae.",
            id = "accept-658-hints-of-a-new-plague",
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
                quest = { id = 658, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 659 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 480,
            text = "Kill 6 Syndicate Mercenary.",
            route = {
                { y = 0.3, mapID = 1417, label = "Syndicate Mercenary", offMapText = "Travel to Syndicate Mercenary.", x = 0.334 },
            },
            dependsOn = { "accept-681-northfold-manor" },
            id = "objective-681-2-syndicate-mercenary",
            kind = "objective",
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
                questObjective = { id = 681, text = "Syndicate Mercenary", index = 2, count = 6 },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            text = "Kill 10 Syndicate Highwayman.",
            route = {
                { y = 0.3, mapID = 1417, label = "Syndicate Highwayman", offMapText = "Travel to Syndicate Highwayman.", x = 0.334 },
            },
            dependsOn = { "accept-681-northfold-manor" },
            id = "objective-681-1-syndicate-highwayman",
            kind = "objective",
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
                questObjective = { id = 681, text = "Syndicate Highwayman", index = 1, count = 10 },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            text = "Turn in Northfold Manor to Captain Nials.",
            route = {
                { y = 0.4755, mapID = 1417, label = "Captain Nials", offMapText = "Travel to Captain Nials in Arathi Highlands.", x = 0.4583 },
            },
            dependsOn = { "accept-681-northfold-manor", "objective-681-2-syndicate-mercenary", "objective-681-1-syndicate-highwayman" },
            id = "turnin-681-northfold-manor",
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
                quest = { id = 681, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            text = "Turn in Letter to Stormpike to Prospector Stormpike.",
            route = {
                { y = 0.1173, mapID = 1455, label = "Prospector Stormpike", offMapText = "Travel to Prospector Stormpike in Ironforge.", x = 0.7464 },
            },
            dependsOn = { "accept-514-letter-to-stormpike" },
            id = "turnin-514-letter-to-stormpike",
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
                quest = { id = 514, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 511 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            text = "Turn in A King's Tribute to Grand Mason Marblesten.",
            route = {
                { y = 0.8805, mapID = 1455, label = "Grand Mason Marblesten", offMapText = "Travel to Grand Mason Marblesten in Ironforge.", x = 0.3904 },
            },
            dependsOn = { "objective-689-1-alterac-granite" },
            id = "turnin-689-a-king-s-tribute",
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
                quest = { id = 689, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 686 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            route = {
                { y = 0.8805, mapID = 1455, label = "Grand Mason Marblesten", offMapText = "Travel to Grand Mason Marblesten in Ironforge.", x = 0.3904 },
            },
            text = "Accept A King's Tribute from Grand Mason Marblesten.",
            id = "accept-700-a-king-s-tribute",
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
                quest = { id = 700, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 689 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            text = "Turn in A King's Tribute to King Magni Bronzebeard.",
            route = {
                { mapID = 1455, x = 0.3909, y = 0.562, label = "King Magni Bronzebeard", offMapText = "Travel to King Magni Bronzebeard in Ironforge." },
            },
            dependsOn = { "accept-700-a-king-s-tribute" },
            id = "turnin-700-a-king-s-tribute",
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
                quest = { id = 700, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 689 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
