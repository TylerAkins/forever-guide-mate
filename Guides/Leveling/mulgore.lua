local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Tauren Starter",
    category = "Leveling Quest Guides",
    id = "leveling-era-mulgore",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
            priority = 10,
            route = {
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            id = "accept-747-the-hunt-begins",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 6,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-747-the-hunt-begins",
        },
        {
            priority = 20,
            route = {
                { y = 0.7606, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind in Mulgore.", x = 0.4418 },
            },
            text = "Accept A Humble Task from Chief Hawkwind.",
            id = "accept-752-a-humble-task",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 752, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            text = "Turn in A Humble Task to Greatmother Hawkwind.",
            route = {
                { y = 0.8116, mapID = 1412, label = "Greatmother Hawkwind", offMapText = "Travel to Greatmother Hawkwind in Mulgore.", x = 0.5003 },
            },
            dependsOn = { "accept-752-a-humble-task" },
            id = "turnin-752-a-humble-task",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 752, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 40,
            route = {
                { y = 0.8116, mapID = 1412, label = "Greatmother Hawkwind", offMapText = "Travel to Greatmother Hawkwind in Mulgore.", x = 0.5003 },
            },
            text = "Accept A Humble Task from Greatmother Hawkwind.",
            id = "accept-753-a-humble-task",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 753, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-753-1-water-pitcher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Water Pitcher.",
            complete = {
                questObjective = { id = 753, index = 1, text = "Water Pitcher", count = 1 },
            },
            route = {
                { mapID = 1412, x = 0.5021, y = 0.8136, label = "Water Pitcher", offMapText = "Travel to Water Pitcher." },
            },
            sourceStep = 11,
            priority = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-753-a-humble-task" },
        },
        {
            id = "objective-747-1-plainstrider-meat",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            route = {
                { mapID = 1412, x = 0.49, y = 0.7979999999999999, label = "Plainstrider Meat", offMapText = "Travel to Plainstrider Meat." },
            },
            sourceStep = 12,
            priority = 60,
            useClientPin = false,
            dependsOn = { "accept-747-the-hunt-begins" },
            classAction = "objective-747-1-plainstrider-meat",
        },
        {
            id = "objective-747-2-plainstrider-feather",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            route = {
                { mapID = 1412, x = 0.49, y = 0.7979999999999999, label = "Plainstrider Feather", offMapText = "Travel to Plainstrider Feather." },
            },
            sourceStep = 12,
            priority = 70,
            useClientPin = false,
            dependsOn = { "accept-747-the-hunt-begins" },
            classAction = "objective-747-2-plainstrider-feather",
        },
        {
            priority = 80,
            route = {
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            dependsOn = { "accept-747-the-hunt-begins", "objective-747-1-plainstrider-meat", "objective-747-2-plainstrider-feather" },
            id = "turnin-747-the-hunt-begins",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 13,
            useClientPin = false,
            classAction = "turnin-747-the-hunt-begins",
        },
        {
            priority = 90,
            route = {
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            text = "Accept Simple Note from Grull Hawkwind.",
            id = "accept-3091-simple-note",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 3091, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 747 },
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
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            text = "Accept Rune-Inscribed Note from Grull Hawkwind.",
            id = "accept-3093-rune-inscribed-note",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 3093, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 747 },
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
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            text = "Accept Etched Note from Grull Hawkwind.",
            id = "accept-3092-etched-note",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 3092, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 747 },
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
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            text = "Accept Verdant Note from Grull Hawkwind.",
            id = "accept-3094-verdant-note",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 3094, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 747 },
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
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            text = "Accept The Hunt Continues from Grull Hawkwind.",
            id = "accept-750-the-hunt-continues",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 750, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 747 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            text = "Read Rune-Inscribed Note in your bags. Turn in Rune-Inscribed Note to Meela Dawnstrider.",
            route = {
                { y = 0.7594, mapID = 1412, label = "Meela Dawnstrider", offMapText = "Travel to Meela Dawnstrider in Mulgore.", x = 0.4501 },
            },
            dependsOn = { "accept-3093-rune-inscribed-note" },
            id = "turnin-3093-rune-inscribed-note",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 3093, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 747 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            text = "Read Verdant Note in your bags. Turn in Verdant Note to Gart Mistrunner.",
            route = {
                { y = 0.7593, mapID = 1412, label = "Gart Mistrunner", offMapText = "Travel to Gart Mistrunner in Mulgore.", x = 0.4509 },
            },
            dependsOn = { "accept-3094-verdant-note" },
            id = "turnin-3094-verdant-note",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 3094, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 747 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            text = "Turn in A Humble Task to Chief Hawkwind.",
            route = {
                { y = 0.7606, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind in Mulgore.", x = 0.4418 },
            },
            dependsOn = { "accept-753-a-humble-task", "objective-753-1-water-pitcher" },
            id = "turnin-753-a-humble-task",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 753, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.7606, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind in Mulgore.", x = 0.4418 },
            },
            text = "Accept Rites of the Earthmother from Chief Hawkwind.",
            id = "accept-755-rites-of-the-earthmother",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 755, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 753 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "Read Simple Note in your bags. Turn in Simple Note to Harutt Thunderhorn.",
            route = {
                { y = 0.7613, mapID = 1412, label = "Harutt Thunderhorn", offMapText = "Travel to Harutt Thunderhorn in Mulgore.", x = 0.4401 },
            },
            dependsOn = { "accept-3091-simple-note" },
            id = "turnin-3091-simple-note",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 3091, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 747 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            text = "Read Etched Note in your bags. Turn in Etched Note to Lanka Farshot.",
            route = {
                { y = 0.7569, mapID = 1412, label = "Lanka Farshot", offMapText = "Travel to Lanka Farshot in Mulgore.", x = 0.4426 },
            },
            dependsOn = { "accept-3092-etched-note" },
            id = "turnin-3092-etched-note",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 3092, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 747 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 200,
            text = "Turn in Rites of the Earthmother to Seer Graytongue.",
            route = {
                { y = 0.9218, mapID = 1412, label = "Seer Graytongue", offMapText = "Travel to Seer Graytongue in Mulgore.", x = 0.4258 },
            },
            dependsOn = { "accept-755-rites-of-the-earthmother" },
            id = "turnin-755-rites-of-the-earthmother",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 755, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 753 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            route = {
                { y = 0.9218, mapID = 1412, label = "Seer Graytongue", offMapText = "Travel to Seer Graytongue in Mulgore.", x = 0.4258 },
            },
            text = "Accept Rite of Strength from Seer Graytongue.",
            id = "accept-757-rite-of-strength",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 757, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 755 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-750-1-mountain-cougar-pelt",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 10 Mountain Cougar Pelt.",
            complete = {
                questObjective = { id = 750, index = 1, text = "Mountain Cougar Pelt", count = 10 },
            },
            route = {
                { mapID = 1412, x = 0.47, y = 0.884, label = "Mountain Cougar Pelt", offMapText = "Travel to Mountain Cougar Pelt." },
            },
            sourceStep = 22,
            priority = 220,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 747 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-750-the-hunt-continues" },
        },
        {
            priority = 230,
            text = "Turn in The Hunt Continues to Grull Hawkwind.",
            route = {
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            dependsOn = { "accept-750-the-hunt-continues", "objective-750-1-mountain-cougar-pelt" },
            id = "turnin-750-the-hunt-continues",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 750, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 747 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            route = {
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            text = "Accept The Battleboars from Grull Hawkwind.",
            id = "accept-780-the-battleboars",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 780, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 750 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-3376-break-sharptusk",
            kind = "note",
            text = "Reach level 3 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
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
            checkpointQuest = 3376,
            priority = 250,
        },
        {
            priority = 260,
            route = {
                { y = 0.7704, mapID = 1412, label = "Brave Windfeather", offMapText = "Travel to Brave Windfeather in Mulgore.", x = 0.4494 },
            },
            text = "Accept Break Sharptusk! from Brave Windfeather.",
            id = "accept-3376-break-sharptusk",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3376, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1519-call-of-earth",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 6 },
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
            checkpointQuest = 1519,
            alternativeQuests = { 1516, 92466 },
            priority = 270,
        },
        {
            priority = 280,
            route = {
                { y = 0.7618, mapID = 1412, label = "Seer Ravenfeather", offMapText = "Travel to Seer Ravenfeather in Mulgore.", x = 0.4473 },
            },
            text = "Accept Call of Earth from Seer Ravenfeather.",
            id = "accept-1519-call-of-earth",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 1519, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {},
            alternativeQuests = { 1516, 92466 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            text = "Collect 8 Battleboar Snout.",
            route = {
                { y = 0.79, mapID = 1412, label = "Battleboar", offMapText = "Travel to Battleboar.", x = 0.524 },
            },
            dependsOn = { "accept-780-the-battleboars" },
            id = "objective-780-1-battleboar",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 780, text = "Battleboar", index = 1, count = 8 },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 750 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            text = "Collect 8 Battleboar Flank.",
            route = {
                { y = 0.79, mapID = 1412, label = "Battleboar Flank", offMapText = "Travel to Battleboar Flank.", x = 0.524 },
            },
            dependsOn = { "accept-780-the-battleboars" },
            id = "objective-780-2-battleboar-flank",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 780, text = "Battleboar Flank", index = 2, count = 8 },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 750 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            text = "Collect 1 Chief Sharptusk Thornmantle's Head.",
            route = {
                { mapID = 1412, x = 0.647, y = 0.7766, label = "Chief Sharptusk Thornmantle's Head", offMapText = "Travel to Chief Sharptusk Thornmantle's Head." },
            },
            dependsOn = { "accept-3376-break-sharptusk" },
            id = "objective-3376-1-chief-sharptusk-thornmantle",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3376, text = "Chief Sharptusk Thornmantle", index = 1, count = 1 },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-781-attack-on-camp-narache",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Loot Dirt-stained Map from Dirt-stained Map. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Dirt-stained Map", minCount = 1 },
                    },
                    {
                        quest = { id = 781, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1412, x = 0.598, y = 0.8220000000000001, label = "Dirt-stained Map", offMapText = "Travel to Dirt-stained Map." },
            },
            dependsOn = {},
            priority = 320,
        },
        {
            priority = 330,
            text = "Use the Dirt-stained Map to accept Attack on Camp Narache.",
            id = "accept-781-attack-on-camp-narache",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 781, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1519-1-ritual-salve",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            text = "Collect 2 Ritual Salve.",
            complete = {
                questObjective = { id = 1519, index = 1, text = "Ritual Salve", count = 2 },
            },
            route = {
                { mapID = 1412, x = 0.638, y = 0.794, label = "Ritual Salve", offMapText = "Travel to Ritual Salve." },
            },
            sourceStep = 34,
            priority = 340,
            requiredQuests = {},
            alternativeQuests = { 1516, 92466 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1519-call-of-earth" },
        },
        {
            id = "objective-757-1-bristleback-belt",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 12 Bristleback Belt.",
            complete = {
                questObjective = { id = 757, index = 1, text = "Bristleback Belt", count = 12 },
            },
            route = {
                { mapID = 1412, x = 0.616, y = 0.784, label = "Bristleback Belt", offMapText = "Travel to Bristleback Belt." },
            },
            sourceStep = 35,
            priority = 350,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 755 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-757-rite-of-strength" },
        },
        {
            priority = 360,
            text = "Turn in The Battleboars to Grull Hawkwind.",
            route = {
                { y = 0.7708, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4487 },
            },
            dependsOn = { "accept-780-the-battleboars", "objective-780-1-battleboar", "objective-780-2-battleboar-flank" },
            id = "turnin-780-the-battleboars",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 780, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 750 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            text = "Turn in Break Sharptusk! to Brave Windfeather.",
            route = {
                { y = 0.7704, mapID = 1412, label = "Brave Windfeather", offMapText = "Travel to Brave Windfeather in Mulgore.", x = 0.4494 },
            },
            dependsOn = { "accept-3376-break-sharptusk", "objective-3376-1-chief-sharptusk-thornmantle" },
            id = "turnin-3376-break-sharptusk",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3376, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            text = "Turn in Attack on Camp Narache to Chief Hawkwind.",
            route = {
                { y = 0.7606, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind in Mulgore.", x = 0.4418 },
            },
            dependsOn = { "accept-781-attack-on-camp-narache" },
            id = "turnin-781-attack-on-camp-narache",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 781, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            text = "Turn in Rite of Strength to Chief Hawkwind.",
            route = {
                { y = 0.7606, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind in Mulgore.", x = 0.4418 },
            },
            dependsOn = { "accept-757-rite-of-strength", "objective-757-1-bristleback-belt" },
            id = "turnin-757-rite-of-strength",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 757, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 755 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            route = {
                { y = 0.7606, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind in Mulgore.", x = 0.4418 },
            },
            text = "Accept Rites of the Earthmother from Chief Hawkwind.",
            id = "accept-763-rites-of-the-earthmother",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 763, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 757 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 410,
            text = "Turn in Call of Earth to Seer Ravenfeather.",
            route = {
                { y = 0.7619, mapID = 1412, label = "Seer Ravenfeather", offMapText = "Travel to Seer Ravenfeather in Mulgore.", x = 0.4473 },
            },
            dependsOn = { "accept-1519-call-of-earth", "objective-1519-1-ritual-salve" },
            id = "turnin-1519-call-of-earth",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 1519, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {},
            alternativeQuests = { 1516, 92466 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Call of Earth from Seer Ravenfeather.",
            priority = 420,
            route = {
                { y = 0.7619, mapID = 1412, label = "Seer Ravenfeather", offMapText = "Travel to Seer Ravenfeather in Mulgore.", x = 0.4473 },
            },
            dependsOn = { "turnin-1519-call-of-earth" },
            id = "accept-1520-call-of-earth",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 1520, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1516, 1519 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            route = {
                { y = 0.8058, mapID = 1412, label = "Minor Manifestation of Earth", offMapText = "Travel to Minor Manifestation of Earth in Mulgore.", x = 0.5383 },
            },
            id = "objective-1520-earth-sapta",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            sourceStep = 48,
            useClientPin = false,
            dependsOn = { "accept-1520-call-of-earth" },
            classAction = "objective-1520-earth-sapta",
        },
        {
            priority = 440,
            route = {
                { mapID = 1412, x = 0.5383, y = 0.8058, label = "Minor Manifestation of Earth at Kodo Rock", offMapText = "Travel to Kodo Rock southeast of Camp Narache in Mulgore." },
            },
            dependsOn = { "accept-1520-call-of-earth", "objective-1520-earth-sapta" },
            id = "turnin-1520-call-of-earth",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            sourceStep = 48,
            useClientPin = false,
            classAction = "turnin-1520-call-of-earth",
        },
        {
            priority = 450,
            route = {
                { mapID = 1412, x = 0.5383, y = 0.8058, label = "Minor Manifestation of Earth at Kodo Rock", offMapText = "Travel to Kodo Rock southeast of Camp Narache in Mulgore." },
            },
            id = "accept-1521-call-of-earth",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            sourceStep = 48,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1521-call-of-earth",
        },
        {
            priority = 460,
            text = "Turn in Call of Earth to Seer Ravenfeather.",
            route = {
                { y = 0.7619, mapID = 1412, label = "Seer Ravenfeather", offMapText = "Travel to Seer Ravenfeather in Mulgore.", x = 0.4473 },
            },
            dependsOn = { "accept-1521-call-of-earth" },
            id = "turnin-1521-call-of-earth",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 1521, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1520 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            route = {
                { y = 0.8156, mapID = 1412, label = "Antur Fallow", offMapText = "Travel to Antur Fallow in Mulgore.", x = 0.3852 },
            },
            text = "Accept A Task Unfinished from Antur Fallow.",
            id = "accept-1656-a-task-unfinished",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1656, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-766-mazzranache",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 766,
            priority = 480,
        },
        {
            priority = 490,
            route = {
                { y = 0.5707, mapID = 1412, label = "Maur Raincaller", offMapText = "Travel to Maur Raincaller in Mulgore.", x = 0.4699 },
            },
            text = "Accept Mazzranache from Maur Raincaller.",
            id = "accept-766-mazzranache",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 766, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            route = {
                { y = 0.5933, mapID = 1412, label = "Harken Windtotem", offMapText = "Travel to Harken Windtotem in Mulgore.", x = 0.4871 },
            },
            text = "Accept Swoop Hunting from Harken Windtotem.",
            id = "accept-761-swoop-hunting",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 761, state = "activeOrCompleted" },
            },
            sourceStep = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-748-poison-water",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 6 },
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
            checkpointQuest = 748,
            priority = 510,
        },
        {
            priority = 520,
            route = {
                { y = 0.604, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.4853 },
            },
            text = "Accept Poison Water from Mull Thunderhorn.",
            id = "accept-748-poison-water",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 748, state = "activeOrCompleted" },
            },
            sourceStep = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            route = {
                { y = 0.6202, mapID = 1412, label = "Ruul Eagletalon", offMapText = "Travel to Ruul Eagletalon in Mulgore.", x = 0.4736 },
            },
            text = "Accept Dangers of the Windfury from Ruul Eagletalon.",
            id = "accept-743-dangers-of-the-windfury",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 743, state = "activeOrCompleted" },
            },
            sourceStep = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            text = "Turn in Rites of the Earthmother to Baine Bloodhoof.",
            route = {
                { y = 0.6017, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof in Mulgore.", x = 0.4752 },
            },
            dependsOn = { "accept-763-rites-of-the-earthmother" },
            id = "turnin-763-rites-of-the-earthmother",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 763, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 757 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            route = {
                { y = 0.6017, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof in Mulgore.", x = 0.4752 },
            },
            text = "Accept Sharing the Land from Baine Bloodhoof.",
            id = "accept-745-sharing-the-land",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 745, state = "activeOrCompleted" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            route = {
                { y = 0.6017, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof in Mulgore.", x = 0.4752 },
            },
            text = "Accept Rite of Vision from Baine Bloodhoof.",
            id = "accept-767-rite-of-vision",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 767, state = "activeOrCompleted" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-746-dwarven-digging",
            kind = "note",
            text = "Reach level 6 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
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
            checkpointQuest = 746,
            priority = 570,
        },
        {
            priority = 580,
            route = {
                { y = 0.6017, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof in Mulgore.", x = 0.4752 },
            },
            text = "Accept Dwarven Digging from Baine Bloodhoof.",
            id = "accept-746-dwarven-digging",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 746, state = "activeOrCompleted" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            text = "Turn in A Task Unfinished to Innkeeper Kauth.",
            route = {
                { y = 0.6109, mapID = 1412, label = "Innkeeper Kauth", offMapText = "Travel to Innkeeper Kauth in Mulgore.", x = 0.4662 },
            },
            dependsOn = { "accept-1656-a-task-unfinished" },
            id = "turnin-1656-a-task-unfinished",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1656, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            text = "Turn in Rite of Vision to Zarlman Two-Moons.",
            route = {
                { y = 0.5754, mapID = 1412, label = "Zarlman Two-Moons", offMapText = "Travel to Zarlman Two-Moons in Mulgore.", x = 0.4776 },
            },
            dependsOn = { "accept-767-rite-of-vision" },
            id = "turnin-767-rite-of-vision",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 767, state = "completed" },
            },
            sourceStep = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            route = {
                { y = 0.5754, mapID = 1412, label = "Zarlman Two-Moons", offMapText = "Travel to Zarlman Two-Moons in Mulgore.", x = 0.4776 },
            },
            text = "Accept Rite of Vision from Zarlman Two-Moons.",
            id = "accept-771-rite-of-vision",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 771, state = "activeOrCompleted" },
            },
            sourceStep = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 767 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 620,
            text = "Collect 2 Ambercorn.",
            route = {
                { y = 0.598, mapID = 1412, label = "Ambercorn", offMapText = "Travel to Ambercorn.", x = 0.389 },
            },
            dependsOn = { "accept-771-rite-of-vision" },
            id = "objective-771-2-ambercorn",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 771, text = "Ambercorn", index = 2, count = 2 },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 767 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-766-1-prairie-wolf-heart",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Prairie Wolf Heart.",
            complete = {
                questObjective = { id = 766, index = 1, text = "Prairie Wolf Heart", count = 1 },
            },
            route = {
                { mapID = 1412, x = 0.40399999999999997, y = 0.618, label = "Prairie Wolf Heart", offMapText = "Travel to Prairie Wolf Heart." },
            },
            sourceStep = 62,
            priority = 630,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-766-mazzranache" },
        },
        {
            id = "objective-748-1-prairie-wolf-paw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            text = "Collect 6 Prairie Wolf Paw.",
            complete = {
                questObjective = { id = 748, index = 1, text = "Prairie Wolf Paw", count = 6 },
            },
            route = {
                { mapID = 1412, x = 0.40399999999999997, y = 0.618, label = "Prairie Wolf Paw", offMapText = "Travel to Prairie Wolf Paw." },
            },
            sourceStep = 62,
            priority = 640,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-748-poison-water" },
        },
        {
            id = "objective-766-3-plainstrider-scale",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Plainstrider Scale.",
            complete = {
                questObjective = { id = 766, index = 3, text = "Plainstrider Scale", count = 1 },
            },
            route = {
                { mapID = 1412, x = 0.40399999999999997, y = 0.618, label = "Plainstrider Scale", offMapText = "Travel to Plainstrider Scale." },
            },
            sourceStep = 63,
            priority = 650,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-766-mazzranache" },
        },
        {
            id = "objective-748-2-plainstrider-talon",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            text = "Collect 4 Plainstrider Talon.",
            complete = {
                questObjective = { id = 748, index = 2, text = "Plainstrider Talon", count = 4 },
            },
            route = {
                { mapID = 1412, x = 0.40399999999999997, y = 0.618, label = "Plainstrider Talon", offMapText = "Travel to Plainstrider Talon." },
            },
            sourceStep = 63,
            priority = 660,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-748-poison-water" },
        },
        {
            id = "objective-766-4-swoop-gizzard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Swoop Gizzard.",
            complete = {
                questObjective = { id = 766, index = 4, text = "Swoop Gizzard", count = 1 },
            },
            route = {
                { mapID = 1412, x = 0.40399999999999997, y = 0.622, label = "Swoop Gizzard", offMapText = "Travel to Swoop Gizzard." },
            },
            sourceStep = 64,
            priority = 670,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-766-mazzranache" },
        },
        {
            id = "objective-761-1-trophy-swoop-quill",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 8 Trophy Swoop Quill.",
            complete = {
                questObjective = { id = 761, index = 1, text = "Trophy Swoop Quill", count = 8 },
            },
            route = {
                { mapID = 1412, x = 0.40399999999999997, y = 0.622, label = "Trophy Swoop Quill", offMapText = "Travel to Trophy Swoop Quill." },
            },
            sourceStep = 64,
            priority = 680,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-761-swoop-hunting" },
        },
        {
            priority = 690,
            text = "Turn in Poison Water to Mull Thunderhorn.",
            route = {
                { y = 0.6039, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.4853 },
            },
            dependsOn = { "accept-748-poison-water", "objective-748-1-prairie-wolf-paw", "objective-748-2-plainstrider-talon" },
            id = "turnin-748-poison-water",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 748, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 700,
            route = {
                { y = 0.6039, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.4853 },
            },
            text = "Accept Winterhoof Cleansing from Mull Thunderhorn.",
            id = "accept-754-winterhoof-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 754, state = "activeOrCompleted" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 748 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 710,
            text = "Turn in Swoop Hunting to Harken Windtotem.",
            route = {
                { y = 0.5933, mapID = 1412, label = "Harken Windtotem", offMapText = "Travel to Harken Windtotem in Mulgore.", x = 0.4871 },
            },
            dependsOn = { "accept-761-swoop-hunting", "objective-761-1-trophy-swoop-quill" },
            id = "turnin-761-swoop-hunting",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 761, state = "completed" },
            },
            sourceStep = 66,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 720,
            text = "Collect 2 Well Stone.",
            route = {
                { y = 0.662, mapID = 1412, label = "Well Stone", offMapText = "Travel to Well Stone.", x = 0.535 },
            },
            dependsOn = { "accept-771-rite-of-vision" },
            id = "objective-771-1-well-stone",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 771, text = "Well Stone", index = 1, count = 2 },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 767 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-objective-754-1-winterhoof-cleansing-totem",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
                    {
                        race = { 6 },
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
            checkpointQuest = 754,
            priority = 730,
        },
        {
            priority = 740,
            text = "Use Winterhoof Cleansing Totem.",
            route = {
                { y = 0.6615, mapID = 1412, label = "Winterhoof Cleansing Totem", offMapText = "Travel to Winterhoof Cleansing Totem.", x = 0.5364 },
            },
            dependsOn = { "accept-754-winterhoof-cleansing" },
            id = "objective-754-1-winterhoof-cleansing-totem",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                questObjective = { id = 754, text = "Winterhoof Cleansing Totem", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 748 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            text = "Kill 5 Palemane Poacher.",
            route = {
                { y = 0.718, mapID = 1412, label = "Palemane Poacher", offMapText = "Travel to Palemane Poacher.", x = 0.524 },
            },
            dependsOn = { "accept-745-sharing-the-land" },
            id = "objective-745-3-palemane-poacher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 745, text = "Palemane Poacher", index = 3, count = 5 },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-745-2-palemane-skinner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 8 Palemane Skinner.",
            complete = {
                questObjective = { id = 745, index = 2, text = "Palemane Skinner", count = 8 },
            },
            route = {
                { mapID = 1412, x = 0.532, y = 0.718, label = "Palemane Skinner", offMapText = "Travel to Palemane Skinner." },
            },
            sourceStep = 70,
            priority = 760,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-745-sharing-the-land" },
        },
        {
            id = "objective-745-1-palemane-tanner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 10 Palemane Tanner.",
            complete = {
                questObjective = { id = 745, index = 1, text = "Palemane Tanner", count = 10 },
            },
            route = {
                { mapID = 1412, x = 0.532, y = 0.718, label = "Palemane Tanner", offMapText = "Travel to Palemane Tanner." },
            },
            sourceStep = 70,
            priority = 770,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-745-sharing-the-land" },
        },
        {
            priority = 780,
            text = "Turn in Winterhoof Cleansing to Mull Thunderhorn.",
            route = {
                { y = 0.6039, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.4853 },
            },
            dependsOn = { "accept-754-winterhoof-cleansing", "objective-754-1-winterhoof-cleansing-totem" },
            id = "turnin-754-winterhoof-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 754, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 748 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 790,
            route = {
                { y = 0.6039, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.4853 },
            },
            text = "Accept Thunderhorn Totem from Mull Thunderhorn.",
            id = "accept-756-thunderhorn-totem",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 756, state = "activeOrCompleted" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 754 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 800,
            text = "Turn in Sharing the Land to Baine Bloodhoof.",
            route = {
                { y = 0.6016, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof in Mulgore.", x = 0.4751 },
            },
            dependsOn = {
                "accept-745-sharing-the-land",
                "objective-745-3-palemane-poacher",
                "objective-745-2-palemane-skinner",
                "objective-745-1-palemane-tanner",
            },
            id = "turnin-745-sharing-the-land",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 745, state = "completed" },
            },
            sourceStep = 73,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 810,
            text = "Turn in Rite of Vision to Zarlman Two-Moons.",
            route = {
                { y = 0.5754, mapID = 1412, label = "Zarlman Two-Moons", offMapText = "Travel to Zarlman Two-Moons in Mulgore.", x = 0.4776 },
            },
            dependsOn = { "accept-771-rite-of-vision", "objective-771-2-ambercorn", "objective-771-1-well-stone" },
            id = "turnin-771-rite-of-vision",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 771, state = "completed" },
            },
            sourceStep = 74,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 767 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 820,
            route = {
                { y = 0.5754, mapID = 1412, label = "Zarlman Two-Moons", offMapText = "Travel to Zarlman Two-Moons in Mulgore.", x = 0.4776 },
            },
            text = "Accept Rite of Vision from Zarlman Two-Moons.",
            id = "accept-772-rite-of-vision",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 772, state = "activeOrCompleted" },
            },
            sourceStep = 74,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 771 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 830,
            text = "Accept The Ravaged Caravan from Morin Cloudstalker.",
            id = "accept-749-the-ravaged-caravan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 749, state = "activeOrCompleted" },
            },
            sourceStep = 79,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 840,
            text = "Turn in The Ravaged Caravan.",
            route = {
                { y = 0.4818, mapID = 1412, label = "The Ravaged Caravan", offMapText = "Travel to The Ravaged Caravan.", x = 0.5374 },
            },
            dependsOn = { "accept-749-the-ravaged-caravan" },
            id = "turnin-749-the-ravaged-caravan",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 749, state = "completed" },
            },
            sourceStep = 80,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 850,
            route = {
                { y = 0.4818, mapID = 1412, label = "The Ravaged Caravan", offMapText = "Travel to The Ravaged Caravan.", x = 0.5374 },
            },
            text = "Accept The Ravaged Caravan.",
            id = "accept-751-the-ravaged-caravan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 751, state = "activeOrCompleted" },
            },
            sourceStep = 80,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 749 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-766-2-flatland-cougar-femur",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Flatland Cougar Femur.",
            complete = {
                questObjective = { id = 766, index = 2, text = "Flatland Cougar Femur", count = 1 },
            },
            route = {
                { mapID = 1412, x = 0.51, y = 0.408, label = "Flatland Cougar Femur", offMapText = "Travel to Flatland Cougar Femur." },
            },
            sourceStep = 81,
            priority = 860,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-766-mazzranache" },
        },
        {
            id = "objective-756-2-cougar-claws",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            text = "Collect 6 Cougar Claws.",
            complete = {
                questObjective = { id = 756, index = 2, text = "Cougar Claws", count = 6 },
            },
            route = {
                { mapID = 1412, x = 0.51, y = 0.408, label = "Cougar Claws", offMapText = "Travel to Cougar Claws." },
            },
            sourceStep = 81,
            priority = 870,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 754 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-756-thunderhorn-totem" },
        },
        {
            id = "objective-756-1-stalker-claws",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            text = "Collect 6 Stalker Claws.",
            complete = {
                questObjective = { id = 756, index = 1, text = "Stalker Claws", count = 6 },
            },
            route = {
                { mapID = 1412, x = 0.51, y = 0.408, label = "Stalker Claws", offMapText = "Travel to Stalker Claws." },
            },
            sourceStep = 82,
            priority = 880,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 754 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-756-thunderhorn-totem" },
        },
        {
            priority = 890,
            text = "Turn in Mazzranache to Maur Raincaller.",
            route = {
                { y = 0.5707, mapID = 1412, label = "Maur Raincaller", offMapText = "Travel to Maur Raincaller in Mulgore.", x = 0.4698 },
            },
            dependsOn = {
                "accept-766-mazzranache",
                "objective-766-1-prairie-wolf-heart",
                "objective-766-3-plainstrider-scale",
                "objective-766-4-swoop-gizzard",
                "objective-766-2-flatland-cougar-femur",
            },
            id = "turnin-766-mazzranache",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 766, state = "completed" },
            },
            sourceStep = 86,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 900,
            text = "Turn in Thunderhorn Totem to Mull Thunderhorn.",
            route = {
                { y = 0.604, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.4853 },
            },
            dependsOn = { "accept-756-thunderhorn-totem", "objective-756-2-cougar-claws", "objective-756-1-stalker-claws" },
            id = "turnin-756-thunderhorn-totem",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 756, state = "completed" },
            },
            sourceStep = 87,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 754 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 910,
            route = {
                { y = 0.604, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.4853 },
            },
            text = "Accept Thunderhorn Cleansing from Mull Thunderhorn.",
            id = "accept-758-thunderhorn-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 758, state = "activeOrCompleted" },
            },
            sourceStep = 87,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 756 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 920,
            text = "Use Thunderhorn Cleansing Totem.",
            route = {
                { y = 0.4543, mapID = 1412, label = "Thunderhorn Cleansing Totem", offMapText = "Travel to Thunderhorn Cleansing Totem.", x = 0.4459 },
            },
            dependsOn = { "accept-758-thunderhorn-cleansing" },
            id = "objective-758-1-thunderhorn-cleansing-totem",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                questObjective = { id = 758, text = "Thunderhorn Cleansing Totem", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 756 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 930,
            text = "Collect 8 Windfury Talon.",
            route = {
                { y = 0.414, mapID = 1412, label = "Windfury Harpy", offMapText = "Travel to Windfury Harpy.", x = 0.346 },
            },
            dependsOn = { "accept-743-dangers-of-the-windfury" },
            id = "objective-743-1-windfury-harpy",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 743, text = "Windfury Harpy", index = 1, count = 8 },
            },
            sourceStep = 92,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 940,
            text = "Turn in Rite of Vision to Seer Wiserunner.",
            route = {
                { y = 0.3609, mapID = 1412, label = "Seer Wiserunner", offMapText = "Travel to Seer Wiserunner in Mulgore.", x = 0.3272 },
            },
            dependsOn = { "accept-772-rite-of-vision" },
            id = "turnin-772-rite-of-vision",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 772, state = "completed" },
            },
            sourceStep = 93,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 771 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 950,
            route = {
                { y = 0.3609, mapID = 1412, label = "Seer Wiserunner", offMapText = "Travel to Seer Wiserunner in Mulgore.", x = 0.3272 },
            },
            text = "Accept Rite of Wisdom from Seer Wiserunner.",
            id = "accept-773-rite-of-wisdom",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 773, state = "activeOrCompleted" },
            },
            sourceStep = 93,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 772 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 960,
            text = "Kill Bael'dun Diggers and Appraisers at the Bael'dun Digsite. Collect 5 Prospector's Picks.",
            route = {
                { mapID = 1412, x = 0.344, y = 0.47200000000000003, label = "Bael'dun Digsite", offMapText = "Travel to Bael'dun Digsite." },
            },
            dependsOn = { "accept-746-dwarven-digging" },
            id = "objective-746-1-bael-dun-digger",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Prospector's Pick", minCount = 5 },
                            },
                        },
                    },
                    {
                        quest = { id = 746, state = "complete" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            sourceInstructionStep = 95,
            sourceInstructionIndex = 1,
            checkpointQuest = 746,
            instructionOnly = true,
            rememberPreparation = 746,
        },
        {
            priority = 970,
            text = "Use each Prospector's Pick beside the Thunder Bluff forge to make 5 Broken Tools.",
            route = {
                { mapID = 1456, x = 0.39630000000000004, y = 0.5593, label = "Thunder Bluff forge", offMapText = "Travel to Thunder Bluff forge." },
            },
            dependsOn = { "accept-746-dwarven-digging" },
            id = "objective-746-1-prospector-s-pick",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 746, index = 1, count = 5 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-833-a-sacred-burial",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
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
            checkpointQuest = 833,
            priority = 980,
        },
        {
            priority = 990,
            route = {
                { mapID = 1412, x = 0.5986, y = 0.2563, label = "Lorekeeper Raintotem", offMapText = "Travel to Lorekeeper Raintotem in Mulgore." },
            },
            text = "Accept A Sacred Burial from Lorekeeper Raintotem.",
            id = "accept-833-a-sacred-burial",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 833, state = "activeOrCompleted" },
            },
            sourceStep = 97,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1000,
            text = "Turn in Rite of Wisdom to Ancestral Spirit.",
            route = {
                { y = 0.2102, mapID = 1412, label = "Ancestral Spirit", offMapText = "Travel to Ancestral Spirit in Mulgore.", x = 0.6145 },
            },
            dependsOn = { "accept-773-rite-of-wisdom" },
            id = "turnin-773-rite-of-wisdom",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 773, state = "completed" },
            },
            sourceStep = 98,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 772 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1010,
            route = {
                { y = 0.2102, mapID = 1412, label = "Ancestral Spirit", offMapText = "Travel to Ancestral Spirit in Mulgore.", x = 0.6145 },
            },
            text = "Accept Journey into Thunder Bluff from Ancestral Spirit.",
            id = "accept-775-journey-into-thunder-bluff",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 775, state = "activeOrCompleted" },
            },
            sourceStep = 98,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 773 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-833-1-bristleback-interloper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 8 Bristleback Interloper.",
            complete = {
                questObjective = { id = 833, index = 1, text = "Bristleback Interloper", count = 8 },
            },
            route = {
                { mapID = 1412, x = 0.604, y = 0.22, label = "Bristleback Interloper", offMapText = "Travel to Bristleback Interloper." },
            },
            sourceStep = 99,
            priority = 1020,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-833-a-sacred-burial" },
        },
        {
            priority = 1030,
            text = "Turn in A Sacred Burial to Lorekeeper Raintotem.",
            route = {
                { y = 0.2563, mapID = 1412, label = "Lorekeeper Raintotem", offMapText = "Travel to Lorekeeper Raintotem in Mulgore.", x = 0.5986 },
            },
            dependsOn = { "accept-833-a-sacred-burial", "objective-833-1-bristleback-interloper" },
            id = "turnin-833-a-sacred-burial",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 833, state = "completed" },
            },
            sourceStep = 100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1040,
            text = "Turn in Dangers of the Windfury to Ruul Eagletalon.",
            route = {
                { y = 0.6202, mapID = 1412, label = "Ruul Eagletalon", offMapText = "Travel to Ruul Eagletalon in Mulgore.", x = 0.4735 },
            },
            dependsOn = { "accept-743-dangers-of-the-windfury", "objective-743-1-windfury-harpy" },
            id = "turnin-743-dangers-of-the-windfury",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 743, state = "completed" },
            },
            sourceStep = 102,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1050,
            text = "Turn in Dwarven Digging to Baine Bloodhoof.",
            route = {
                { y = 0.6017, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof in Mulgore.", x = 0.4751 },
            },
            dependsOn = { "accept-746-dwarven-digging", "objective-746-1-bael-dun-digger", "objective-746-1-prospector-s-pick" },
            id = "turnin-746-dwarven-digging",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 746, state = "completed" },
            },
            sourceStep = 103,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1060,
            text = "Turn in Thunderhorn Cleansing to Mull Thunderhorn.",
            route = {
                { y = 0.604, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.4853 },
            },
            dependsOn = { "accept-758-thunderhorn-cleansing", "objective-758-1-thunderhorn-cleansing-totem" },
            id = "turnin-758-thunderhorn-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 758, state = "completed" },
            },
            sourceStep = 104,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 756 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-6061-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 6 },
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
            checkpointQuest = 6061,
            priority = 1070,
        },
        {
            priority = 1080,
            route = {
                { y = 0.5569, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.4782 },
            },
            text = "Accept Taming the Beast from Yaw Sharpmane.",
            id = "accept-6061-taming-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6061, state = "activeOrCompleted" },
            },
            sourceStep = 106,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-6061-1-taming-rod",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    { race = 6 },
                    {
                        race = { 6 },
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
            checkpointQuest = 6061,
            priority = 1090,
        },
        {
            priority = 1100,
            text = "Use Taming Rod.",
            route = {
                { y = 0.544, mapID = 1412, label = "Taming Rod", offMapText = "Travel to Taming Rod.", x = 0.418 },
            },
            dependsOn = { "accept-6061-taming-the-beast" },
            id = "objective-6061-1-taming-rod",
            kind = "objective",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6061, text = "Taming Rod", index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1110,
            text = "Turn in Taming the Beast to Yaw Sharpmane.",
            route = {
                { y = 0.5569, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.4782 },
            },
            dependsOn = { "accept-6061-taming-the-beast", "objective-6061-1-taming-rod" },
            id = "turnin-6061-taming-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6061, state = "completed" },
            },
            sourceStep = 109,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1120,
            route = {
                { y = 0.5569, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.4782 },
            },
            text = "Accept Taming the Beast from Yaw Sharpmane.",
            id = "accept-6087-taming-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6087, state = "activeOrCompleted" },
            },
            sourceStep = 109,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6061 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1130,
            text = "Use Taming Rod.",
            route = {
                { y = 0.506, mapID = 1412, label = "Taming Rod", offMapText = "Travel to Taming Rod.", x = 0.478 },
            },
            dependsOn = { "accept-6087-taming-the-beast" },
            id = "objective-6087-1-taming-rod",
            kind = "objective",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6087, text = "Taming Rod", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6061 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1140,
            text = "Turn in Taming the Beast to Yaw Sharpmane.",
            route = {
                { y = 0.5569, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.4782 },
            },
            dependsOn = { "accept-6087-taming-the-beast", "objective-6087-1-taming-rod" },
            id = "turnin-6087-taming-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6087, state = "completed" },
            },
            sourceStep = 111,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6061 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1150,
            route = {
                { y = 0.5569, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.4782 },
            },
            text = "Accept Taming the Beast from Yaw Sharpmane.",
            id = "accept-6088-taming-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6088, state = "activeOrCompleted" },
            },
            sourceStep = 111,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6087 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1160,
            text = "Use Taming Rod.",
            route = {
                { y = 0.5, mapID = 1412, label = "Taming Rod", offMapText = "Travel to Taming Rod.", x = 0.452 },
            },
            dependsOn = { "accept-6088-taming-the-beast" },
            id = "objective-6088-1-taming-rod",
            kind = "objective",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6088, text = "Taming Rod", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6087 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1170,
            text = "Turn in Taming the Beast to Yaw Sharpmane.",
            route = {
                { y = 0.5569, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.4782 },
            },
            dependsOn = { "accept-6088-taming-the-beast", "objective-6088-1-taming-rod" },
            id = "turnin-6088-taming-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6088, state = "completed" },
            },
            sourceStep = 113,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6087 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1180,
            route = {
                { y = 0.5569, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.4782 },
            },
            text = "Accept Training the Beast from Yaw Sharpmane.",
            id = "accept-6089-training-the-beast",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6089, state = "activeOrCompleted" },
            },
            sourceStep = 113,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6088 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-2984-call-of-fire",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 6 },
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
            checkpointQuest = 2984,
            alternativeQuests = { 1522, 1523, 2983 },
            priority = 1190,
        },
        {
            priority = 1200,
            route = {
                { y = 0.5916, mapID = 1412, label = "Narm Skychaser", offMapText = "Travel to Narm Skychaser in Mulgore.", x = 0.4839 },
            },
            text = "Accept Call of Fire from Narm Skychaser.",
            id = "accept-2984-call-of-fire",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 2984, state = "activeOrCompleted" },
            },
            sourceStep = 115,
            requiredQuests = {},
            alternativeQuests = { 1522, 1523, 2983 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5928-heeding-the-call",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 6 },
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
            checkpointQuest = 5928,
            alternativeQuests = { 5926, 5927 },
            priority = 1210,
        },
        {
            priority = 1220,
            route = {
                { y = 0.5964, mapID = 1412, label = "Gennia Runetotem", offMapText = "Travel to Gennia Runetotem in Mulgore.", x = 0.4848 },
            },
            text = "Accept Heeding the Call from Gennia Runetotem.",
            id = "accept-5928-heeding-the-call",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 5928, state = "activeOrCompleted" },
            },
            sourceStep = 117,
            requiredQuests = {},
            alternativeQuests = { 5926, 5927 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-751-the-ravaged-caravan" },
            id = "turnin-751-the-ravaged-caravan",
            text = "Turn in The Ravaged Caravan to Morin Cloudstalker.",
            useClientPin = true,
            complete = {
                quest = { id = 751, state = "completed" },
            },
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            priority = 1230,
            sourceStep = 119,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 749 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            id = "level-before-accept-854-journey-to-the-crossroads",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                level = { min = 9 },
            },
            requiredLevel = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 854,
            alternativeQuests = { 844 },
            priority = 1240,
        },
        {
            priority = 1250,
            route = {
                { y = 0.5861, mapID = 1413, label = "Kirge Sternhorn", offMapText = "Travel to Kirge Sternhorn in The Barrens.", x = 0.4488 },
            },
            text = "Accept Journey to the Crossroads from Kirge Sternhorn.",
            id = "accept-854-journey-to-the-crossroads",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 854, state = "activeOrCompleted" },
            },
            sourceStep = 123,
            requiredQuests = {},
            alternativeQuests = { 844 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1260,
            text = "Turn in Journey to the Crossroads to Thork.",
            route = {
                { y = 0.3087, mapID = 1413, label = "Thork", offMapText = "Travel to Thork in The Barrens.", x = 0.515 },
            },
            dependsOn = { "accept-854-journey-to-the-crossroads" },
            id = "turnin-854-journey-to-the-crossroads",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 854, state = "completed" },
            },
            sourceStep = 124,
            requiredQuests = {},
            alternativeQuests = { 844 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-6361-a-bundle-of-hides",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 6 },
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
            checkpointQuest = 6361,
            priority = 1270,
        },
        {
            priority = 1280,
            route = {
                { y = 0.2905, mapID = 1413, label = "Jahan Hawkwing", offMapText = "Travel to Jahan Hawkwing in The Barrens.", x = 0.5121 },
            },
            text = "Accept A Bundle of Hides from Jahan Hawkwing.",
            id = "accept-6361-a-bundle-of-hides",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6361, state = "activeOrCompleted" },
            },
            sourceStep = 126,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1290,
            text = "Turn in A Bundle of Hides to Devrak.",
            route = {
                { y = 0.3034, mapID = 1413, label = "Devrak", offMapText = "Travel to Devrak in The Barrens.", x = 0.515 },
            },
            dependsOn = { "accept-6361-a-bundle-of-hides" },
            id = "turnin-6361-a-bundle-of-hides",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6361, state = "completed" },
            },
            sourceStep = 127,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1300,
            route = {
                { y = 0.3034, mapID = 1413, label = "Devrak", offMapText = "Travel to Devrak in The Barrens.", x = 0.515 },
            },
            text = "Accept Ride to Thunder Bluff from Devrak.",
            id = "accept-6362-ride-to-thunder-bluff",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6362, state = "activeOrCompleted" },
            },
            sourceStep = 127,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6361 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1310,
            text = "Turn in Ride to Thunder Bluff to Ahanu.",
            route = {
                { y = 0.5584, mapID = 1456, label = "Ahanu", offMapText = "Travel to Ahanu in Thunder Bluff.", x = 0.4577 },
            },
            dependsOn = { "accept-6362-ride-to-thunder-bluff" },
            id = "turnin-6362-ride-to-thunder-bluff",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6362, state = "completed" },
            },
            sourceStep = 128,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6361 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1320,
            route = {
                { y = 0.5584, mapID = 1456, label = "Ahanu", offMapText = "Travel to Ahanu in Thunder Bluff.", x = 0.4577 },
            },
            text = "Accept Tal the Wind Rider Master from Ahanu.",
            id = "accept-6363-tal-the-wind-rider-master",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6363, state = "activeOrCompleted" },
            },
            sourceStep = 128,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6362 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1330,
            text = "Turn in Training the Beast to Holt Thunderhorn.",
            route = {
                { y = 0.8976, mapID = 1456, label = "Holt Thunderhorn", offMapText = "Travel to Holt Thunderhorn in Thunder Bluff.", x = 0.5731 },
            },
            dependsOn = { "accept-6089-training-the-beast" },
            id = "turnin-6089-training-the-beast",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6089, state = "completed" },
            },
            sourceStep = 135,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6088 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1340,
            text = "Turn in Journey into Thunder Bluff to Cairne Bloodhoof.",
            route = {
                { y = 0.5168, mapID = 1456, label = "Cairne Bloodhoof", offMapText = "Travel to Cairne Bloodhoof in Thunder Bluff.", x = 0.603 },
            },
            dependsOn = { "accept-775-journey-into-thunder-bluff" },
            id = "turnin-775-journey-into-thunder-bluff",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 775, state = "completed" },
            },
            sourceStep = 138,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 773 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1350,
            text = "Turn in Heeding the Call to Turak Runetotem.",
            route = {
                { y = 0.2723, mapID = 1456, label = "Turak Runetotem", offMapText = "Travel to Turak Runetotem in Thunder Bluff.", x = 0.7646 },
            },
            dependsOn = { "accept-5928-heeding-the-call" },
            id = "turnin-5928-heeding-the-call",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 5928, state = "completed" },
            },
            sourceStep = 139,
            requiredQuests = {},
            alternativeQuests = { 5926, 5927 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1360,
            route = {
                { y = 0.2723, mapID = 1456, label = "Turak Runetotem", offMapText = "Travel to Turak Runetotem in Thunder Bluff.", x = 0.7646 },
            },
            text = "Accept Moonglade from Turak Runetotem.",
            id = "accept-5922-moonglade",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 5922, state = "activeOrCompleted" },
            },
            sourceStep = 139,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-886-the-barrens-oases",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 886,
            priority = 1370,
        },
        {
            priority = 1380,
            route = {
                { y = 0.2856, mapID = 1456, label = "Arch Druid Hamuul Runetotem", offMapText = "Travel to Arch Druid Hamuul Runetotem in Thunder Bluff.", x = 0.7862 },
            },
            text = "Accept The Barrens Oases from Arch Druid Hamuul Runetotem.",
            id = "accept-886-the-barrens-oases",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 886, state = "activeOrCompleted" },
            },
            sourceStep = 140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1390,
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            dependsOn = { "accept-5922-moonglade" },
            id = "turnin-5922-moonglade",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            sourceStep = 141,
            useClientPin = false,
            classAction = "turnin-5922-moonglade",
        },
        {
            priority = 1400,
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            text = "Accept Great Bear Spirit from Dendrite Starblaze.",
            id = "accept-5930-great-bear-spirit",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 5930, state = "activeOrCompleted" },
            },
            sourceStep = 141,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5922 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1410,
            id = "objective-5930-quest-work",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            sourceStep = 143,
            useClientPin = true,
            dependsOn = { "accept-5930-great-bear-spirit" },
            classAction = "objective-5930-quest-work",
        },
        {
            priority = 1420,
            text = "Turn in Great Bear Spirit to Dendrite Starblaze.",
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            dependsOn = { "accept-5930-great-bear-spirit", "objective-5930-quest-work" },
            id = "turnin-5930-great-bear-spirit",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 5930, state = "completed" },
            },
            sourceStep = 143,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5922 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1430,
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            text = "Accept Back to Thunder Bluff from Dendrite Starblaze.",
            id = "accept-5932-back-to-thunder-bluff",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 5932, state = "activeOrCompleted" },
            },
            sourceStep = 143,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5930 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1440,
            text = "Turn in Back to Thunder Bluff to Turak Runetotem.",
            route = {
                { y = 0.2723, mapID = 1456, label = "Turak Runetotem", offMapText = "Travel to Turak Runetotem in Thunder Bluff.", x = 0.7646 },
            },
            dependsOn = { "accept-5932-back-to-thunder-bluff" },
            id = "turnin-5932-back-to-thunder-bluff",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 5932, state = "completed" },
            },
            sourceStep = 144,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5930 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1450,
            route = {
                { y = 0.2723, mapID = 1456, label = "Turak Runetotem", offMapText = "Travel to Turak Runetotem in Thunder Bluff.", x = 0.7646 },
            },
            text = "Accept Body and Heart from Turak Runetotem.",
            id = "accept-6002-body-and-heart",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6002, state = "activeOrCompleted" },
            },
            sourceStep = 144,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5932 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1460,
            text = "Turn in Tal the Wind Rider Master to Tal.",
            route = {
                { y = 0.4983, mapID = 1456, label = "Tal", offMapText = "Travel to Tal in Thunder Bluff.", x = 0.47 },
            },
            dependsOn = { "accept-6363-tal-the-wind-rider-master" },
            id = "turnin-6363-tal-the-wind-rider-master",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6363, state = "completed" },
            },
            sourceStep = 145,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6362 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1470,
            route = {
                { y = 0.4983, mapID = 1456, label = "Tal", offMapText = "Travel to Tal in Thunder Bluff.", x = 0.47 },
            },
            text = "Accept Return to Jahan from Tal.",
            id = "accept-6364-return-to-jahan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6364, state = "activeOrCompleted" },
            },
            sourceStep = 145,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6363 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-6002-1-cenarion-lunardust",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    { race = 6 },
                    {
                        race = { 6 },
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
            checkpointQuest = 6002,
            priority = 1480,
        },
        {
            priority = 1490,
            route = {
                { y = 0.6086, mapID = 1413, label = "Cenarion Lunardust", offMapText = "Travel to Cenarion Lunardust.", x = 0.42 },
            },
            dependsOn = { "accept-6002-body-and-heart" },
            id = "objective-6002-1-cenarion-lunardust",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-6002-quest-work",
        },
        {
            priority = 1500,
            text = "Turn in Body and Heart to Turak Runetotem.",
            route = {
                { y = 0.2723, mapID = 1456, label = "Turak Runetotem", offMapText = "Travel to Turak Runetotem in Thunder Bluff.", x = 0.7646 },
            },
            dependsOn = { "accept-6002-body-and-heart", "objective-6002-1-cenarion-lunardust" },
            id = "turnin-6002-body-and-heart",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6002, state = "completed" },
            },
            sourceStep = 147,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5932 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1510,
            text = "Turn in The Barrens Oases to Tonga Runetotem.",
            route = {
                { y = 0.3193, mapID = 1413, label = "Tonga Runetotem", offMapText = "Travel to Tonga Runetotem in The Barrens.", x = 0.5226 },
            },
            dependsOn = { "accept-886-the-barrens-oases" },
            id = "turnin-886-the-barrens-oases",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 886, state = "completed" },
            },
            sourceStep = 148,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1520,
            text = "Turn in Return to Jahan to Jahan Hawkwing.",
            route = {
                { y = 0.2905, mapID = 1413, label = "Jahan Hawkwing", offMapText = "Travel to Jahan Hawkwing in The Barrens.", x = 0.5121 },
            },
            dependsOn = { "accept-6364-return-to-jahan" },
            id = "turnin-6364-return-to-jahan",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 6364, state = "completed" },
            },
            sourceStep = 149,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6363 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-turnin-2984-call-of-fire",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 2984,
            alternativeQuests = { 1522, 1523, 2983 },
            priority = 1530,
        },
        {
            priority = 1540,
            text = "Turn in Call of Fire to Kranal Fiss.",
            route = {
                { y = 0.1989, mapID = 1413, label = "Kranal Fiss", offMapText = "Travel to Kranal Fiss in The Barrens.", x = 0.5603 },
            },
            dependsOn = { "accept-2984-call-of-fire" },
            id = "turnin-2984-call-of-fire",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2984, state = "completed" },
            },
            sourceStep = 151,
            requiredQuests = {},
            alternativeQuests = { 1522, 1523, 2983 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1550,
            route = {
                { y = 0.1989, mapID = 1413, label = "Kranal Fiss", offMapText = "Travel to Kranal Fiss in The Barrens.", x = 0.5603 },
            },
            text = "Accept Call of Fire from Kranal Fiss.",
            id = "accept-1524-call-of-fire",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1524, state = "activeOrCompleted" },
            },
            sourceStep = 151,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1560,
            text = "Turn in Call of Fire to Telf Joolam.",
            route = {
                { mapID = 1411, x = 0.38549999999999995, y = 0.5896, label = "Telf Joolam", offMapText = "Travel to Telf Joolam in Durotar." },
            },
            dependsOn = { "accept-1524-call-of-fire" },
            id = "turnin-1524-call-of-fire",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1524, state = "completed" },
            },
            sourceStep = 152,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1570,
            route = {
                { mapID = 1411, x = 0.38549999999999995, y = 0.5896, label = "Telf Joolam", offMapText = "Travel to Telf Joolam in Durotar." },
            },
            text = "Accept Call of Fire from Telf Joolam.",
            id = "accept-1525-call-of-fire",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1525, state = "activeOrCompleted" },
            },
            sourceStep = 152,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1524 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1580,
            text = "Collect 1 Fire Tar.",
            route = {
                { y = 0.254, mapID = 1413, label = "Razormane Thornweaver", offMapText = "Travel to Razormane Thornweaver.", x = 0.556 },
            },
            dependsOn = { "accept-1525-call-of-fire" },
            id = "objective-1525-1-razormane-thornweaver",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1525, text = "Razormane Thornweaver", index = 1, count = 1 },
            },
            sourceStep = 153,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1524 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1590,
            route = {
                { y = 0.4038, mapID = 1411, label = "Furl Scornbrow", offMapText = "Travel to Furl Scornbrow in Durotar.", x = 0.4989 },
            },
            text = "Accept Carry Your Weight from Furl Scornbrow.",
            id = "accept-791-carry-your-weight",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 791, state = "activeOrCompleted" },
            },
            sourceStep = 154,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1600,
            route = {
                { y = 0.4245, mapID = 1411, label = "Cook Torka", offMapText = "Travel to Cook Torka in Durotar.", x = 0.5111 },
            },
            text = "Accept Break a Few Eggs from Cook Torka.",
            id = "accept-815-break-a-few-eggs",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 815, state = "activeOrCompleted" },
            },
            sourceStep = 155,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1610,
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            text = "Accept Vanquish the Betrayers from Gar'Thok.",
            id = "accept-784-vanquish-the-betrayers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 784, state = "activeOrCompleted" },
            },
            sourceStep = 156,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1620,
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            text = "Accept Encroachment from Gar'Thok.",
            id = "accept-837-encroachment",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 837, state = "activeOrCompleted" },
            },
            sourceStep = 156,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1630,
            text = "Kill Lieutenant Benedict.",
            route = {
                { mapID = 1411, x = 0.5971, y = 0.5827, label = "Lieutenant Benedict", offMapText = "Travel to Lieutenant Benedict." },
            },
            dependsOn = { "accept-784-vanquish-the-betrayers" },
            id = "objective-784-3-lieutenant-benedict",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 784, text = "Lieutenant Benedict", index = 3 },
            },
            sourceStep = 158,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-830-the-admiral-s-orders",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Loot Aged Envelope from Benedict's Chest. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Aged Envelope", minCount = 1 },
                    },
                    {
                        quest = { id = 830, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1411, x = 0.5926, y = 0.5765, label = "Benedict's Chest", offMapText = "Travel to Benedict's Chest." },
            },
            dependsOn = {},
            priority = 1640,
        },
        {
            priority = 1650,
            text = "Use the Aged Envelope to accept The Admiral's Orders.",
            id = "accept-830-the-admiral-s-orders",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 830, state = "activeOrCompleted" },
            },
            sourceStep = 160,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-791-1-canvas-scraps",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 8 Canvas Scraps.",
            complete = {
                questObjective = { id = 791, index = 1, text = "Canvas Scraps", count = 8 },
            },
            route = {
                { mapID = 1411, x = 0.5539999999999999, y = 0.512, label = "Canvas Scraps", offMapText = "Travel to Canvas Scraps." },
            },
            sourceStep = 161,
            priority = 1660,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-791-carry-your-weight" },
        },
        {
            id = "objective-784-2-kul-tiras-marine",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 8 Kul Tiras Marine.",
            complete = {
                questObjective = { id = 784, index = 2, text = "Kul Tiras Marine", count = 8 },
            },
            route = {
                { mapID = 1411, x = 0.5579999999999999, y = 0.534, label = "Kul Tiras Marine", offMapText = "Travel to Kul Tiras Marine." },
            },
            sourceStep = 162,
            priority = 1670,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-784-vanquish-the-betrayers" },
        },
        {
            id = "objective-784-1-kul-tiras-sailor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 10 Kul Tiras Sailor.",
            complete = {
                questObjective = { id = 784, index = 1, text = "Kul Tiras Sailor", count = 10 },
            },
            route = {
                { mapID = 1411, x = 0.5579999999999999, y = 0.534, label = "Kul Tiras Sailor", offMapText = "Travel to Kul Tiras Sailor." },
            },
            sourceStep = 162,
            priority = 1680,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-784-vanquish-the-betrayers" },
        },
        {
            priority = 1690,
            route = {
                { y = 0.6831, mapID = 1411, label = "Ukor", offMapText = "Travel to Ukor in Durotar.", x = 0.5206 },
            },
            text = "Accept A Peon's Burden from Ukor.",
            id = "accept-2161-a-peon-s-burden",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2161, state = "activeOrCompleted" },
            },
            sourceStep = 163,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1700,
            route = {
                { y = 0.7392, mapID = 1411, label = "Vel'rin Fang", offMapText = "Travel to Vel'rin Fang in Durotar.", x = 0.5596 },
            },
            text = "Accept Practical Prey from Vel'rin Fang.",
            id = "accept-817-practical-prey",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 817, state = "activeOrCompleted" },
            },
            sourceStep = 164,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1710,
            route = {
                { y = 0.7439, mapID = 1411, label = "Master Vornal", offMapText = "Travel to Master Vornal in Durotar.", x = 0.5594 },
            },
            text = "Accept A Solvent Spirit from Master Vornal.",
            id = "accept-818-a-solvent-spirit",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 818, state = "activeOrCompleted" },
            },
            sourceStep = 165,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1720,
            route = {
                { y = 0.7472, mapID = 1411, label = "Master Gadrin", offMapText = "Travel to Master Gadrin in Durotar.", x = 0.5595 },
            },
            text = "Accept Minshina's Skull from Master Gadrin.",
            id = "accept-808-minshina-s-skull",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 808, state = "activeOrCompleted" },
            },
            sourceStep = 166,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1730,
            route = {
                { y = 0.7472, mapID = 1411, label = "Master Gadrin", offMapText = "Travel to Master Gadrin in Durotar.", x = 0.5595 },
            },
            text = "Accept Zalazane from Master Gadrin.",
            id = "accept-826-zalazane",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 826, state = "activeOrCompleted" },
            },
            sourceStep = 166,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1740,
            route = {
                { y = 0.7472, mapID = 1411, label = "Master Gadrin", offMapText = "Travel to Master Gadrin in Durotar.", x = 0.5595 },
            },
            text = "Accept Report to Orgnil from Master Gadrin.",
            id = "accept-823-report-to-orgnil",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 823, state = "activeOrCompleted" },
            },
            sourceStep = 166,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1750,
            text = "Collect 1 Zalazane's Head.",
            route = {
                { y = 0.864, mapID = 1411, label = "Zalazane", offMapText = "Travel to Zalazane.", x = 0.674 },
            },
            dependsOn = { "accept-826-zalazane" },
            id = "objective-826-3-zalazane",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 826, text = "Zalazane", index = 3, count = 1 },
            },
            sourceStep = 167,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-808-1-minshina-s-skull",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Minshina's Skull.",
            complete = {
                questObjective = { id = 808, index = 1, text = "Minshina's Skull", count = 1 },
            },
            route = {
                { mapID = 1411, x = 0.6745, y = 0.8781, label = "Minshina's Skull", offMapText = "Travel to Minshina's Skull." },
            },
            sourceStep = 168,
            priority = 1760,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-808-minshina-s-skull" },
        },
        {
            id = "objective-826-1-hexed-troll",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 8 Hexed Troll.",
            complete = {
                questObjective = { id = 826, index = 1, text = "Hexed Troll", count = 8 },
            },
            route = {
                { mapID = 1411, x = 0.6779999999999999, y = 0.86, label = "Hexed Troll", offMapText = "Travel to Hexed Troll." },
            },
            sourceStep = 169,
            priority = 1770,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-826-zalazane" },
        },
        {
            id = "objective-826-2-voodoo-troll",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 8 Voodoo Troll.",
            complete = {
                questObjective = { id = 826, index = 2, text = "Voodoo Troll", count = 8 },
            },
            route = {
                { mapID = 1411, x = 0.672, y = 0.87, label = "Voodoo Troll", offMapText = "Travel to Voodoo Troll." },
            },
            sourceStep = 170,
            priority = 1780,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-826-zalazane" },
        },
        {
            id = "objective-815-1-taillasher-egg",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 3 Taillasher Egg.",
            complete = {
                questObjective = { id = 815, index = 1, text = "Taillasher Egg", count = 3 },
            },
            route = {
                { mapID = 1411, x = 0.639, y = 0.868, label = "Taillasher Egg", offMapText = "Travel to Taillasher Egg." },
            },
            sourceStep = 171,
            priority = 1790,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-815-break-a-few-eggs" },
        },
        {
            id = "objective-817-1-durotar-tiger-fur",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 4 Durotar Tiger Fur.",
            complete = {
                questObjective = { id = 817, index = 1, text = "Durotar Tiger Fur", count = 4 },
            },
            route = {
                { mapID = 1411, x = 0.612, y = 0.8959999999999999, label = "Durotar Tiger Fur", offMapText = "Travel to Durotar Tiger Fur." },
            },
            sourceStep = 172,
            priority = 1800,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-817-practical-prey" },
        },
        {
            id = "objective-818-1-intact-makrura-eye",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 4 Intact Makrura Eye.",
            complete = {
                questObjective = { id = 818, index = 1, text = "Intact Makrura Eye", count = 4 },
            },
            route = {
                { mapID = 1411, x = 0.602, y = 0.708, label = "Intact Makrura Eye", offMapText = "Travel to Intact Makrura Eye." },
            },
            sourceStep = 173,
            priority = 1810,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-818-a-solvent-spirit" },
        },
        {
            id = "objective-818-2-crawler-mucus",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 8 Crawler Mucus.",
            complete = {
                questObjective = { id = 818, index = 2, text = "Crawler Mucus", count = 8 },
            },
            route = {
                { mapID = 1411, x = 0.602, y = 0.708, label = "Crawler Mucus", offMapText = "Travel to Crawler Mucus." },
            },
            sourceStep = 174,
            priority = 1820,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-818-a-solvent-spirit" },
        },
        {
            priority = 1830,
            text = "Turn in Minshina's Skull to Master Gadrin.",
            route = {
                { y = 0.7472, mapID = 1411, label = "Master Gadrin", offMapText = "Travel to Master Gadrin in Durotar.", x = 0.5595 },
            },
            dependsOn = { "accept-808-minshina-s-skull", "objective-808-1-minshina-s-skull" },
            id = "turnin-808-minshina-s-skull",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 808, state = "completed" },
            },
            sourceStep = 175,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1840,
            text = "Turn in Zalazane to Master Gadrin.",
            route = {
                { y = 0.7472, mapID = 1411, label = "Master Gadrin", offMapText = "Travel to Master Gadrin in Durotar.", x = 0.5595 },
            },
            dependsOn = { "accept-826-zalazane", "objective-826-3-zalazane", "objective-826-1-hexed-troll", "objective-826-2-voodoo-troll" },
            id = "turnin-826-zalazane",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 826, state = "completed" },
            },
            sourceStep = 175,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1850,
            text = "Turn in A Solvent Spirit to Master Vornal.",
            route = {
                { y = 0.7439, mapID = 1411, label = "Master Vornal", offMapText = "Travel to Master Vornal in Durotar.", x = 0.5594 },
            },
            dependsOn = { "accept-818-a-solvent-spirit", "objective-818-1-intact-makrura-eye", "objective-818-2-crawler-mucus" },
            id = "turnin-818-a-solvent-spirit",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 818, state = "completed" },
            },
            sourceStep = 176,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1860,
            text = "Turn in Practical Prey to Vel'rin Fang.",
            route = {
                { y = 0.7393, mapID = 1411, label = "Vel'rin Fang", offMapText = "Travel to Vel'rin Fang in Durotar.", x = 0.5595 },
            },
            dependsOn = { "accept-817-practical-prey", "objective-817-1-durotar-tiger-fur" },
            id = "turnin-817-practical-prey",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 817, state = "completed" },
            },
            sourceStep = 177,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1870,
            text = "Kill 4 Razormane Quilboar.",
            route = {
                { y = 0.496, mapID = 1411, label = "Razormane Quilboar", offMapText = "Travel to Razormane Quilboar.", x = 0.5 },
            },
            dependsOn = { "accept-837-encroachment" },
            id = "objective-837-1-razormane-quilboar",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 837, text = "Razormane Quilboar", index = 1, count = 4 },
            },
            sourceStep = 178,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1880,
            text = "Kill 4 Razormane Scout.",
            route = {
                { y = 0.496, mapID = 1411, label = "Razormane Scout", offMapText = "Travel to Razormane Scout.", x = 0.5 },
            },
            dependsOn = { "accept-837-encroachment" },
            id = "objective-837-2-razormane-scout",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 837, text = "Razormane Scout", index = 2, count = 4 },
            },
            sourceStep = 178,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1890,
            text = "Kill 4 Razormane Dustrunner.",
            route = {
                { y = 0.406, mapID = 1411, label = "Razormane Dustrunner", offMapText = "Travel to Razormane Dustrunner.", x = 0.424 },
            },
            dependsOn = { "accept-837-encroachment" },
            id = "objective-837-3-razormane-dustrunner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 837, text = "Razormane Dustrunner", index = 3, count = 4 },
            },
            sourceStep = 179,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1900,
            text = "Kill 4 Razormane Battleguard.",
            route = {
                { y = 0.406, mapID = 1411, label = "Razormane Battleguard", offMapText = "Travel to Razormane Battleguard.", x = 0.424 },
            },
            dependsOn = { "accept-837-encroachment" },
            id = "objective-837-4-razormane-battleguard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 837, text = "Razormane Battleguard", index = 4, count = 4 },
            },
            sourceStep = 179,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-816-lost-but-not-forgotten",
            kind = "note",
            text = "Reach level 8 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 816,
            priority = 1910,
        },
        {
            priority = 1920,
            route = {
                { y = 0.3024, mapID = 1411, label = "Misha Tor'kren", offMapText = "Travel to Misha Tor'kren in Durotar.", x = 0.4311 },
            },
            text = "Accept Lost But Not Forgotten from Misha Tor'kren.",
            id = "accept-816-lost-but-not-forgotten",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 816, state = "activeOrCompleted" },
            },
            sourceStep = 180,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1930,
            text = "Collect 1 Kron's Amulet.",
            route = {
                { y = 0.364, mapID = 1411, label = "Dreadmaw Crocolisk", offMapText = "Travel to Dreadmaw Crocolisk.", x = 0.348 },
            },
            dependsOn = { "accept-816-lost-but-not-forgotten" },
            id = "objective-816-1-dreadmaw-crocolisk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 816, text = "Dreadmaw Crocolisk", index = 1, count = 1 },
            },
            sourceStep = 181,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1940,
            text = "Turn in Call of Fire to Telf Joolam.",
            route = {
                { mapID = 1411, x = 0.38549999999999995, y = 0.5896, label = "Telf Joolam", offMapText = "Travel to Telf Joolam in Durotar." },
            },
            dependsOn = { "accept-1525-call-of-fire", "objective-1525-1-razormane-thornweaver" },
            id = "turnin-1525-call-of-fire",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1525, state = "completed" },
            },
            sourceStep = 182,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1524 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1950,
            route = {
                { mapID = 1411, x = 0.38549999999999995, y = 0.5896, label = "Telf Joolam", offMapText = "Travel to Telf Joolam in Durotar." },
            },
            text = "Accept Call of Fire from Telf Joolam.",
            id = "accept-1526-call-of-fire",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1526, state = "activeOrCompleted" },
            },
            sourceStep = 182,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1525 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1960,
            route = {
                { mapID = 1411, x = 0.3872, y = 0.5829, label = "Minor Manifestation of Fire", offMapText = "Travel to Minor Manifestation of Fire." },
            },
            dependsOn = { "accept-1526-call-of-fire" },
            id = "objective-1526-1-fire-sapta",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 184,
            useClientPin = false,
            classAction = "objective-1526-call-of-fire",
        },
        {
            priority = 1970,
            text = "Turn in Call of Fire.",
            route = {
                { y = 0.5822, mapID = 1411, label = "Call of Fire", offMapText = "Travel to Call of Fire.", x = 0.3895 },
            },
            dependsOn = { "accept-1526-call-of-fire", "objective-1526-1-fire-sapta" },
            id = "turnin-1526-call-of-fire",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1526, state = "completed" },
            },
            sourceStep = 185,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1525 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1980,
            route = {
                { y = 0.5822, mapID = 1411, label = "Call of Fire", offMapText = "Travel to Call of Fire.", x = 0.3895 },
            },
            text = "Accept Call of Fire.",
            id = "accept-1527-call-of-fire",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1527, state = "activeOrCompleted" },
            },
            sourceStep = 185,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1526 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1990,
            text = "Turn in Call of Fire to Kranal Fiss.",
            route = {
                { y = 0.1989, mapID = 1413, label = "Kranal Fiss", offMapText = "Travel to Kranal Fiss in The Barrens.", x = 0.5604 },
            },
            dependsOn = { "accept-1527-call-of-fire" },
            id = "turnin-1527-call-of-fire",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1527, state = "completed" },
            },
            sourceStep = 186,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1526 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2000,
            text = "Turn in Lost But Not Forgotten to Misha Tor'kren.",
            route = {
                { y = 0.3024, mapID = 1411, label = "Misha Tor'kren", offMapText = "Travel to Misha Tor'kren in Durotar.", x = 0.4311 },
            },
            dependsOn = { "accept-816-lost-but-not-forgotten", "objective-816-1-dreadmaw-crocolisk" },
            id = "turnin-816-lost-but-not-forgotten",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 8 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 816, state = "completed" },
            },
            sourceStep = 187,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2010,
            text = "Turn in Carry Your Weight to Furl Scornbrow.",
            route = {
                { y = 0.4038, mapID = 1411, label = "Furl Scornbrow", offMapText = "Travel to Furl Scornbrow in Durotar.", x = 0.4989 },
            },
            dependsOn = { "accept-791-carry-your-weight", "objective-791-1-canvas-scraps" },
            id = "turnin-791-carry-your-weight",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 791, state = "completed" },
            },
            sourceStep = 189,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2020,
            text = "Turn in Break a Few Eggs to Cook Torka.",
            route = {
                { y = 0.4245, mapID = 1411, label = "Cook Torka", offMapText = "Travel to Cook Torka in Durotar.", x = 0.5111 },
            },
            dependsOn = { "accept-815-break-a-few-eggs", "objective-815-1-taillasher-egg" },
            id = "turnin-815-break-a-few-eggs",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 815, state = "completed" },
            },
            sourceStep = 190,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2030,
            text = "Turn in A Peon's Burden to Innkeeper Grosk.",
            route = {
                { y = 0.4165, mapID = 1411, label = "Innkeeper Grosk", offMapText = "Travel to Innkeeper Grosk in Durotar.", x = 0.5152 },
            },
            dependsOn = { "accept-2161-a-peon-s-burden" },
            id = "turnin-2161-a-peon-s-burden",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2161, state = "completed" },
            },
            sourceStep = 191,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2040,
            text = "Turn in Vanquish the Betrayers to Gar'Thok.",
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            dependsOn = {
                "accept-784-vanquish-the-betrayers",
                "objective-784-3-lieutenant-benedict",
                "objective-784-2-kul-tiras-marine",
                "objective-784-1-kul-tiras-sailor",
            },
            id = "turnin-784-vanquish-the-betrayers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 784, state = "completed" },
            },
            sourceStep = 196,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2050,
            text = "Turn in Encroachment to Gar'Thok.",
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            dependsOn = {
                "accept-837-encroachment",
                "objective-837-1-razormane-quilboar",
                "objective-837-2-razormane-scout",
                "objective-837-3-razormane-dustrunner",
                "objective-837-4-razormane-battleguard",
            },
            id = "turnin-837-encroachment",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 6 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 837, state = "completed" },
            },
            sourceStep = 196,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2060,
            text = "Turn in The Admiral's Orders to Gar'Thok.",
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            dependsOn = { "accept-830-the-admiral-s-orders" },
            id = "turnin-830-the-admiral-s-orders",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 830, state = "completed" },
            },
            sourceStep = 196,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2070,
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            text = "Accept The Admiral's Orders from Gar'Thok.",
            id = "accept-831-the-admiral-s-orders",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 831, state = "activeOrCompleted" },
            },
            sourceStep = 196,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 830 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2080,
            text = "Turn in Report to Orgnil to Orgnil Soulscar.",
            route = {
                { y = 0.4315, mapID = 1411, label = "Orgnil Soulscar", offMapText = "Travel to Orgnil Soulscar in Durotar.", x = 0.5225 },
            },
            dependsOn = { "accept-823-report-to-orgnil" },
            id = "turnin-823-report-to-orgnil",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 823, state = "completed" },
            },
            sourceStep = 197,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-834-winds-in-the-desert",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 7 },
            },
            requiredLevel = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 834,
            priority = 2090,
        },
        {
            priority = 2100,
            route = {
                { y = 0.2294, mapID = 1411, label = "Rezlak", offMapText = "Travel to Rezlak in Durotar.", x = 0.4637 },
            },
            text = "Accept Winds in the Desert from Rezlak.",
            id = "accept-834-winds-in-the-desert",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                },
            },
            complete = {
                quest = { id = 834, state = "activeOrCompleted" },
            },
            sourceStep = 200,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2110,
            text = "Collect 5 Sack of Supplies.",
            route = {
                { y = 0.225, mapID = 1411, label = "Sack of Supplies", offMapText = "Travel to Sack of Supplies.", x = 0.491 },
            },
            dependsOn = { "accept-834-winds-in-the-desert" },
            id = "objective-834-1-sack-of-supplies",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                },
            },
            complete = {
                questObjective = { id = 834, text = "Sack of Supplies", index = 1, count = 5 },
            },
            sourceStep = 201,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2120,
            text = "Turn in Winds in the Desert to Rezlak.",
            route = {
                { y = 0.2294, mapID = 1411, label = "Rezlak", offMapText = "Travel to Rezlak in Durotar.", x = 0.4637 },
            },
            dependsOn = { "accept-834-winds-in-the-desert", "objective-834-1-sack-of-supplies" },
            id = "turnin-834-winds-in-the-desert",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                },
            },
            complete = {
                quest = { id = 834, state = "completed" },
            },
            sourceStep = 202,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2130,
            route = {
                { y = 0.2294, mapID = 1411, label = "Rezlak", offMapText = "Travel to Rezlak in Durotar.", x = 0.4637 },
            },
            text = "Accept Securing the Lines from Rezlak.",
            id = "accept-835-securing-the-lines",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                },
            },
            complete = {
                quest = { id = 835, state = "activeOrCompleted" },
            },
            sourceStep = 202,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 834 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2140,
            text = "For Securing the Lines: Kill 12 Dustwind Savages and 8 Dustwind Storm Witches for Rezlak near Drygulch Ravine.",
            id = "objective-835-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                },
            },
            complete = {
                quest = { id = 835, state = "complete" },
            },
            sourceStep = 206,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 834 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-835-securing-the-lines" },
        },
        {
            priority = 2150,
            text = "Turn in Securing the Lines to Rezlak.",
            route = {
                { mapID = 1411, x = 0.4637, y = 0.22940000000000002, label = "Rezlak", offMapText = "Travel to Rezlak in Durotar." },
            },
            dependsOn = { "accept-835-securing-the-lines", "objective-835-quest-work" },
            id = "turnin-835-securing-the-lines",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                },
            },
            complete = {
                quest = { id = 835, state = "completed" },
            },
            sourceStep = 206,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 834 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2160,
            route = {
                { y = 0.1861, mapID = 1411, label = "Rhinag", offMapText = "Travel to Rhinag in Durotar.", x = 0.4155 },
            },
            text = "Accept Need for a Cure from Rhinag.",
            id = "accept-812-need-for-a-cure",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 812, state = "activeOrCompleted" },
            },
            sourceStep = 207,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2170,
            text = "Turn in The Admiral's Orders to Nazgrel.",
            route = {
                { y = 0.358, mapID = 1454, label = "Nazgrel", offMapText = "Travel to Nazgrel in Orgrimmar.", x = 0.3227 },
            },
            dependsOn = { "accept-831-the-admiral-s-orders" },
            id = "turnin-831-the-admiral-s-orders",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 831, state = "completed" },
            },
            sourceStep = 209,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 830 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2180,
            route = {
                { y = 0.5358, mapID = 1454, label = "Kor'ghan", offMapText = "Travel to Kor'ghan in Orgrimmar.", x = 0.4724 },
            },
            text = "Accept Finding the Antidote from Kor'ghan.",
            id = "accept-813-finding-the-antidote",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 813, state = "activeOrCompleted" },
            },
            sourceStep = 210,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2190,
            text = "Collect 4 Venomtail Poison Sac.",
            route = {
                { y = 0.166, mapID = 1411, label = "Venomtail Scorpid", offMapText = "Travel to Venomtail Scorpid.", x = 0.434 },
            },
            dependsOn = { "accept-813-finding-the-antidote" },
            id = "objective-813-1-venomtail-scorpid",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 813, text = "Venomtail Scorpid", index = 1, count = 4 },
            },
            sourceStep = 213,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2200,
            text = "Turn in Finding the Antidote to Kor'ghan.",
            route = {
                { y = 0.5359, mapID = 1454, label = "Kor'ghan", offMapText = "Travel to Kor'ghan in Orgrimmar.", x = 0.4724 },
            },
            dependsOn = { "accept-813-finding-the-antidote", "objective-813-1-venomtail-scorpid" },
            id = "turnin-813-finding-the-antidote",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 813, state = "completed" },
            },
            sourceStep = 214,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2210,
            text = "For Need for a Cure: Find Kor'ghan in Orgrimmar and get the Venomtail Antidote. Then bring the antidote to Rhinag near the northwestern border of Durotar.",
            id = "objective-812-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 812, state = "complete" },
            },
            sourceStep = 216,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-812-need-for-a-cure" },
        },
        {
            priority = 2220,
            text = "Turn in Need for a Cure to Rhinag.",
            route = {
                { y = 0.1861, mapID = 1411, label = "Rhinag", offMapText = "Travel to Rhinag in Durotar.", x = 0.4155 },
            },
            dependsOn = { "accept-812-need-for-a-cure", "objective-812-quest-work" },
            id = "turnin-812-need-for-a-cure",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 812, state = "completed" },
            },
            sourceStep = 216,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1818-speak-with-dillinger",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 1818,
            alternativeQuests = { 1498 },
            priority = 2230,
        },
        {
            priority = 2240,
            route = {
                { y = 0.5254, mapID = 1420, label = "Austil de Mon", offMapText = "Travel to Austil de Mon in Tirisfal Glades.", x = 0.6185 },
            },
            text = "Accept Speak with Dillinger from Austil de Mon.",
            id = "accept-1818-speak-with-dillinger",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1818, state = "activeOrCompleted" },
            },
            sourceStep = 218,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2250,
            text = "Turn in Speak with Dillinger to Deathguard Dillinger.",
            route = {
                { y = 0.5145, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades.", x = 0.582 },
            },
            dependsOn = { "accept-1818-speak-with-dillinger" },
            id = "turnin-1818-speak-with-dillinger",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1818, state = "completed" },
            },
            sourceStep = 219,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2260,
            route = {
                { y = 0.5145, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades.", x = 0.582 },
            },
            text = "Accept Ulag the Cleaver from Deathguard Dillinger.",
            id = "accept-1819-ulag-the-cleaver",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1819, state = "activeOrCompleted" },
            },
            sourceStep = 219,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2270,
            text = "Kill Ulag the Cleaver.",
            route = {
                { y = 0.4851, mapID = 1420, label = "Mausoleum Trigger", offMapText = "Travel to Mausoleum Trigger.", x = 0.5916 },
            },
            dependsOn = { "accept-1819-ulag-the-cleaver" },
            id = "objective-1819-1-mausoleum-trigger",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1819, text = "Mausoleum Trigger", index = 1 },
            },
            sourceStep = 220,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2280,
            text = "Turn in Ulag the Cleaver to Deathguard Dillinger.",
            route = {
                { y = 0.5145, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades.", x = 0.582 },
            },
            dependsOn = { "accept-1819-ulag-the-cleaver", "objective-1819-1-mausoleum-trigger" },
            id = "turnin-1819-ulag-the-cleaver",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1819, state = "completed" },
            },
            sourceStep = 221,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2290,
            route = {
                { y = 0.5145, mapID = 1420, label = "Deathguard Dillinger", offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades.", x = 0.582 },
            },
            text = "Accept Speak with Coleman from Deathguard Dillinger.",
            id = "accept-1820-speak-with-coleman",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1820, state = "activeOrCompleted" },
            },
            sourceStep = 221,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1498, 1819 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2300,
            text = "Turn in Speak with Coleman to Coleman Farthing.",
            route = {
                { y = 0.5229, mapID = 1420, label = "Coleman Farthing", offMapText = "Travel to Coleman Farthing in Tirisfal Glades.", x = 0.6172 },
            },
            dependsOn = { "accept-1820-speak-with-coleman" },
            id = "turnin-1820-speak-with-coleman",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1820, state = "completed" },
            },
            sourceStep = 222,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1498, 1819 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-445-delivery-to-silverpine-forest",
            kind = "note",
            text = "Reach level 9 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 9 },
            },
            requiredLevel = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 445,
            priority = 2310,
        },
        {
            priority = 2320,
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            text = "Accept Delivery to Silverpine Forest from Apothecary Johaan.",
            id = "accept-445-delivery-to-silverpine-forest",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 9 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 445, state = "activeOrCompleted" },
            },
            sourceStep = 223,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2330,
            route = {
                { y = 0.92, mapID = 1412, label = "Seer Graytongue", offMapText = "Travel to Seer Graytongue.", x = 0.426 },
            },
            text = "Accept Grace of An'she and Mu'sha from Seer Graytongue.",
            id = "woven-accept-95805-grace-of-anshe-and-musha",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 95805, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Carry the Smoldering Incense to the shrine of An'she and Mu'sha in the southeastern hills before it burns out. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 2340,
            route = {
                { y = 0.81, mapID = 1412, label = "Southeastern hills", offMapText = "Travel to Southeastern hills.", x = 0.5 },
            },
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            id = "woven-objective-95805-grace-of-anshe-and-musha",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 95805, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-95805-grace-of-anshe-and-musha" },
        },
        {
            id = "level-before-woven-accept-96659-the-adventurer",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
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
            checkpointQuest = 96659,
            alternativeQuests = { 96627, 96628, 96630, 96638, 96652, 96656 },
            priority = 2350,
        },
        {
            priority = 2360,
            route = {
                { y = 0.76, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind.", x = 0.442 },
            },
            text = "Accept The Adventurer from Chief Hawkwind in Camp Narache.",
            id = "woven-accept-96659-the-adventurer",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96659, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 96627, 96628, 96630, 96638, 96652, 96656 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2370,
            route = {
                { y = 0.672, mapID = 1412, label = "Kaga Wildhoof", offMapText = "Travel to Kaga Wildhoof.", x = 0.462 },
            },
            text = "Turn in The Adventurer to Kaga Wildhoof on the road to Bloodhoof Village.",
            id = "woven-turnin-96659-the-adventurer",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96659, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 96627, 96628, 96630, 96638, 96652, 96656 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96659-the-adventurer" },
        },
        {
            priority = 2380,
            route = {
                { mapID = 1412, x = 0.4619, y = 0.6720999999999999, label = "Kaga Wildhoof", offMapText = "Travel to Kaga Wildhoof." },
            },
            text = "Accept The Great Outdoors from Kaga Wildhoof.",
            id = "woven-accept-96605-the-great-outdoors",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96605, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2390,
            text = "Type /sit beside Kaga Wildhoof's Basic Campfire and wait until you receive the Boosted Rest buff.",
            id = "woven-objective-96605-the-great-outdoors",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96605, state = "complete" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96605-the-great-outdoors" },
            route = {
                { mapID = 1412, x = 0.4619, y = 0.6720999999999999, label = "Kaga Wildhoof", offMapText = "Travel to Kaga Wildhoof." },
            },
        },
        {
            priority = 2400,
            route = {
                { mapID = 1412, x = 0.4619, y = 0.6720999999999999, label = "Kaga Wildhoof", offMapText = "Travel to Kaga Wildhoof." },
            },
            text = "Turn in The Great Outdoors to Kaga Wildhoof.",
            id = "woven-turnin-96605-the-great-outdoors",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96605, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96605-the-great-outdoors", "woven-objective-96605-the-great-outdoors" },
        },
        {
            priority = 2410,
            route = {
                { y = 0.658, mapID = 1412, label = "Perith Stormhoof", offMapText = "Travel to Perith Stormhoof.", x = 0.33 },
            },
            text = "Accept The Longwalkers from Perith Stormhoof inside Palemane Rock.",
            id = "woven-accept-98430-the-longwalkers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98430, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2420,
            route = {
                { y = 0.658, mapID = 1412, label = "Perith Stormhoof", offMapText = "Travel to Perith Stormhoof.", x = 0.33 },
            },
            text = "Escort Perith Stormhoof out of Palemane Rock.",
            id = "woven-objective-98430-the-longwalkers",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98430, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98430-the-longwalkers" },
        },
        {
            priority = 2430,
            route = {
                { y = 0.596, mapID = 1412, label = "Brave Wildrunner", offMapText = "Travel to Brave Wildrunner.", x = 0.472 },
            },
            text = "Accept Longwalker Malah from Brave Wildrunner in Bloodhoof Village.",
            id = "woven-accept-99079-longwalker-malah",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99079, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2440,
            route = {
                { y = 0.604, mapID = 1412, label = "Krang Stonehoof", offMapText = "Travel to Krang Stonehoof.", x = 0.494 },
            },
            text = "Accept Sparring Match from Krang Stonehoof in Bloodhoof Village.",
            id = "woven-accept-99108-sparring-match",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99108, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2450,
            route = {
                { y = 0.604, mapID = 1412, label = "Krang Stonehoof", offMapText = "Travel to Krang Stonehoof.", x = 0.494 },
            },
            text = "Win 3 duels, or defeat Novice Warriors, for Krang Stonehoof.",
            id = "woven-objective-99108-sparring-match",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99108, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99108-sparring-match" },
        },
        {
            priority = 2460,
            route = {
                { y = 0.604, mapID = 1412, label = "Krang Stonehoof", offMapText = "Travel to Krang Stonehoof.", x = 0.494 },
            },
            text = "Turn in Sparring Match to Krang Stonehoof in Bloodhoof Village.",
            id = "woven-turnin-99108-sparring-match",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99108, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99108-sparring-match", "woven-objective-99108-sparring-match" },
        },
        {
            id = "level-before-woven-accept-96130-chakuyak",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 96130,
            priority = 2470,
        },
        {
            priority = 2480,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane.", x = 0.478 },
            },
            text = "Accept Chakuyak from Yaw Sharpmane in Bloodhoof Village.",
            id = "woven-accept-96130-chakuyak",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96130, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2490,
            route = {
                { y = 0.652, mapID = 1412, label = "Chakuyak", offMapText = "Travel to Chakuyak.", x = 0.394 },
            },
            text = "Kill Chakuyak.",
            id = "woven-objective-96130-chakuyak",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96130, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96130-chakuyak" },
        },
        {
            priority = 2500,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane.", x = 0.478 },
            },
            text = "Turn in Chakuyak to Yaw Sharpmane in Bloodhoof Village.",
            id = "woven-turnin-96130-chakuyak",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96130, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96130-chakuyak", "woven-objective-96130-chakuyak" },
        },
        {
            priority = 2510,
            route = {
                { y = 0.516, mapID = 1456, label = "Cairne Bloodhoof", offMapText = "Travel to Cairne Bloodhoof.", x = 0.598 },
            },
            text = "Turn in The Longwalkers to Cairne Bloodhoof in Thunder Bluff.",
            id = "woven-turnin-98430-the-longwalkers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98430, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98430-the-longwalkers", "woven-objective-98430-the-longwalkers" },
        },
        {
            priority = 2520,
            route = {
                { y = 0.562, mapID = 1456, label = "Eylah Sunhorn", offMapText = "Travel to Eylah Sunhorn.", x = 0.382 },
            },
            text = "Accept Traditions of the Bluff from Eylah Sunhorn in Thunder Bluff.",
            id = "woven-accept-97485-traditions-of-the-bluff",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97485, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2530,
            route = {
                { y = 0.562, mapID = 1456, label = "Eylah Sunhorn", offMapText = "Travel to Eylah Sunhorn.", x = 0.382 },
            },
            text = "Buy a Bundle of Herbs from Nida, a Bundle of Cedar Twigs from Nata, Sinew Thread from Mahu, and Ceremonial Flint and Tinder from Naal. Combine them for Eylah Sunhorn.",
            id = "woven-objective-97485-traditions-of-the-bluff",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97485, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97485-traditions-of-the-bluff" },
        },
        {
            priority = 2540,
            route = {
                { y = 0.562, mapID = 1456, label = "Eylah Sunhorn", offMapText = "Travel to Eylah Sunhorn.", x = 0.382 },
            },
            text = "Turn in Traditions of the Bluff to Eylah Sunhorn in Thunder Bluff.",
            id = "woven-turnin-97485-traditions-of-the-bluff",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97485, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97485-traditions-of-the-bluff", "woven-objective-97485-traditions-of-the-bluff" },
        },
        {
            id = "level-before-woven-accept-94911-child-of-nature",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
            checkpointQuest = 94911,
            priority = 2550,
        },
        {
            priority = 2560,
            route = {
                { y = 0.224, mapID = 1412, label = "Muln Earthfury", offMapText = "Travel to Muln Earthfury.", x = 0.334 },
            },
            text = "Accept Child of Nature from Muln Earthfury in Mulgore.",
            id = "woven-accept-94911-child-of-nature",
            kind = "accept",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
                quest = { id = 94911, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2570,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", offMapText = "Travel to Turak Runetotem.", x = 0.764 },
            },
            text = "Turn in Child of Nature to Turak Runetotem in Elder Rise.",
            id = "woven-turnin-94911-child-of-nature",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
                quest = { id = 94911, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-94911-child-of-nature" },
        },
        {
            priority = 2580,
            route = {
                { y = 0.276, mapID = 1456, label = "Turak Runetotem", offMapText = "Travel to Turak Runetotem.", x = 0.764 },
            },
            text = "Accept Moonglade from Turak Runetotem in Elder Rise.",
            id = "woven-accept-94913-moonglade-skyborne",
            kind = "accept",
            conditions = {
                all = {
                    { class = 11 },
                    {
                        class = { 11 },
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
                quest = { id = 94913, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 94911 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 96 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-woven-accept-98424-fizsprockets-notes",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill Supervisor Fizsprocket in the Venture Co. Mine in Mulgore and loot the Mulgore Expansion Plans.",
            complete = {
                any = {
                    {
                        item = { name = "Mulgore Expansion Plans", minCount = 1 },
                    },
                    {
                        quest = { id = 98424, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 2590,
        },
        {
            priority = 2600,
            text = "Use the Mulgore Expansion Plans to accept Fizsprocket's Notes.",
            id = "woven-accept-98424-fizsprockets-notes",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98424, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Collect the remaining pages inside the Venture Co. Mine.",
            priority = 2610,
            route = {
                { y = 0.436, mapID = 1412, label = "Venture Co. Mine", offMapText = "Travel to Venture Co. Mine.", x = 0.644 },
            },
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            id = "woven-objective-98424-fizsprockets-notes",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 98424, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-98424-fizsprockets-notes" },
        },
        {
            priority = 2620,
            route = {
                { y = 0.632, mapID = 1412, label = "Malah Longwind", offMapText = "Travel to Malah Longwind.", x = 0.576 },
            },
            text = "Turn in Longwalker Malah to Malah Longwind, east of Bloodhoof Village.",
            id = "woven-turnin-99079-longwalker-malah",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99079, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99079-longwalker-malah" },
        },
        {
            priority = 2630,
            route = {
                { y = 0.632, mapID = 1412, label = "Malah Longwind", offMapText = "Travel to Malah Longwind.", x = 0.576 },
            },
            text = "Accept Grim Tidings from Malah Longwind.",
            id = "woven-accept-99081-grim-tidings",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99081, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2640,
            route = {
                { y = 0.596, mapID = 1412, label = "Brave Wildrunner", offMapText = "Travel to Brave Wildrunner.", x = 0.472 },
            },
            text = "Turn in Grim Tidings to Brave Wildrunner in Bloodhoof Village.",
            id = "woven-turnin-99081-grim-tidings",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99081, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99081-grim-tidings" },
        },
        {
            priority = 2650,
            route = {
                { y = 0.596, mapID = 1412, label = "Brave Wildrunner", offMapText = "Travel to Brave Wildrunner.", x = 0.472 },
            },
            text = "Accept Our Ancient Enemy from Brave Wildrunner in Bloodhoof Village.",
            id = "woven-accept-99101-our-ancient-enemy",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99101, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2660,
            route = {
                { y = 0.602, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof.", x = 0.474 },
            },
            text = "Turn in Our Ancient Enemy to Baine Bloodhoof in Bloodhoof Village.",
            id = "woven-turnin-99101-our-ancient-enemy",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99101, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99101-our-ancient-enemy" },
        },
        {
            priority = 2670,
            route = {
                { y = 0.602, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof.", x = 0.474 },
            },
            text = "Accept Drive Them Out from Baine Bloodhoof in Bloodhoof Village.",
            id = "woven-accept-99080-drive-them-out",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99080, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2680,
            route = {
                { y = 0.602, mapID = 1412, label = "Morin Cloudstalker", offMapText = "Travel to Morin Cloudstalker.", x = 0.53 },
            },
            text = "Turn in Fizsprocket's Notes to Morin Cloudstalker.",
            id = "woven-turnin-98424-fizsprockets-notes",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98424, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98424-fizsprockets-notes", "woven-objective-98424-fizsprockets-notes" },
        },
        {
            priority = 2690,
            route = {
                { y = 0.602, mapID = 1412, label = "Morin Cloudstalker", offMapText = "Travel to Morin Cloudstalker.", x = 0.53 },
            },
            text = "Accept Ceasing Operations from Morin Cloudstalker. This is an elite. Bring a group.",
            id = "woven-accept-98427-ceasing-operations",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98427, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2700,
            route = {
                { y = 0.43, mapID = 1412, label = "Venture Co. Clearclutter", offMapText = "Travel to Venture Co. Clearclutter.", x = 0.57 },
            },
            text = "Take the Clearcutter Key from the Venture Co. Clearclutter. This is an elite. Bring a group.",
            id = "woven-objective-98427-ceasing-operations",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98427, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98427-ceasing-operations" },
        },
        {
            priority = 2710,
            route = {
                { y = 0.602, mapID = 1412, label = "Morin Cloudstalker", offMapText = "Travel to Morin Cloudstalker.", x = 0.53 },
            },
            text = "Turn in Ceasing Operations to Morin Cloudstalker.",
            id = "woven-turnin-98427-ceasing-operations",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98427, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98427-ceasing-operations", "woven-objective-98427-ceasing-operations" },
        },
        {
            priority = 2720,
            route = {
                { y = 0.594, mapID = 1412, label = "Galak Centaur", offMapText = "Travel to Galak Centaur.", x = 0.672 },
            },
            text = "Drive Them Out: kill 6 Galak Centaurs.",
            id = "woven-objective-99080-drive-them-out-1",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 99080, index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99080-drive-them-out" },
        },
        {
            priority = 2730,
            route = {
                { y = 0.606, mapID = 1412, label = "Galak Outrunner", offMapText = "Travel to Galak Outrunner.", x = 0.602 },
            },
            text = "Drive Them Out: kill 4 Galak Outrunners.",
            id = "woven-objective-99080-drive-them-out-2",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 99080, index = 2 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99080-drive-them-out" },
        },
        {
            priority = 2740,
            route = {
                { y = 0.598, mapID = 1412, label = "Herak the Pillager", offMapText = "Travel to Herak the Pillager.", x = 0.604 },
            },
            text = "Drive Them Out: bring Herak the Pillager's head.",
            id = "woven-objective-99080-drive-them-out-3",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 99080, index = 3 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99080-drive-them-out" },
        },
        {
            priority = 2750,
            route = {
                { y = 0.602, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof.", x = 0.474 },
            },
            text = "Turn in Drive Them Out to Baine Bloodhoof in Bloodhoof Village.",
            id = "woven-turnin-99080-drive-them-out",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99080, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {
                "woven-accept-99080-drive-them-out",
                "woven-objective-99080-drive-them-out-1",
                "woven-objective-99080-drive-them-out-2",
                "woven-objective-99080-drive-them-out-3",
            },
        },
        {
            priority = 2760,
            route = {
                { y = 0.602, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof.", x = 0.474 },
            },
            text = "Accept The High Chieftain from Baine Bloodhoof.",
            id = "woven-accept-99082-the-high-chieftain",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99082, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2770,
            route = {
                { y = 0.516, mapID = 1456, label = "Cairne Bloodhoof", offMapText = "Travel to Cairne Bloodhoof.", x = 0.598 },
            },
            text = "Turn in The High Chieftain to Cairne Bloodhoof.",
            id = "woven-turnin-99082-the-high-chieftain",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 99082, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99082-the-high-chieftain" },
        },
        {
            id = "level-before-woven-accept-98435-thunderhorns-report",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = 6 },
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
            checkpointQuest = 98435,
            priority = 2780,
        },
        {
            priority = 2790,
            route = {
                { y = 0.604, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn.", x = 0.484 },
            },
            text = "Accept Thunderhorn's Report from Mull Thunderhorn. This step is for tauren.",
            id = "woven-accept-98435-thunderhorns-report",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98435, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2800,
            route = {
                { y = 0.284, mapID = 1456, label = "Arch Druid Hamuul Runetotem", offMapText = "Travel to Arch Druid Hamuul Runetotem.", x = 0.784 },
            },
            text = "Turn in Thunderhorn's Report to Arch Druid Hamuul Runetotem in Elder Rise. This step is for tauren.",
            id = "woven-turnin-98435-thunderhorns-report",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 98435, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98435-thunderhorns-report" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
    nextGuide = { Horde = "leveling-casual-horde" },
})
