local _, ns = ...

ns:RegisterGuide({
    revision = 21,
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
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
            route = {
                { y = 0.767, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind in Mulgore.", x = 0.439 },
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
            text = "Turn in A Humble Task to Greatmother Hawkwind.",
            route = {
                { y = 0.809, mapID = 1412, label = "Greatmother Hawkwind", offMapText = "Travel to Greatmother Hawkwind in Mulgore.", x = 0.488 },
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
            route = {
                { y = 0.809, mapID = 1412, label = "Greatmother Hawkwind", offMapText = "Travel to Greatmother Hawkwind in Mulgore.", x = 0.488 },
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
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
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
            useClientPin = false,
            dependsOn = { "accept-747-the-hunt-begins" },
            classAction = "objective-747-2-plainstrider-feather",
        },
        {
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
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
            text = "Read Rune-Inscribed Note in your bags. Turn in Rune-Inscribed Note to Meela Dawnstrider.",
            route = {
                { y = 0.766, mapID = 1412, label = "Meela Dawnstrider", offMapText = "Travel to Meela Dawnstrider in Mulgore.", x = 0.446 },
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
            text = "Read Verdant Note in your bags. Turn in Verdant Note to Gart Mistrunner.",
            route = {
                { y = 0.766, mapID = 1412, label = "Gart Mistrunner", offMapText = "Travel to Gart Mistrunner in Mulgore.", x = 0.446 },
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
            text = "Turn in A Humble Task to Chief Hawkwind.",
            route = {
                { y = 0.767, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind in Mulgore.", x = 0.439 },
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
            route = {
                { y = 0.767, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind in Mulgore.", x = 0.439 },
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
            text = "Read Simple Note in your bags. Turn in Simple Note to Harutt Thunderhorn.",
            route = {
                { y = 0.767, mapID = 1412, label = "Harutt Thunderhorn", offMapText = "Travel to Harutt Thunderhorn in Mulgore.", x = 0.437 },
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
            text = "Read Etched Note in your bags. Turn in Etched Note to Lanka Farshot.",
            route = {
                { y = 0.764, mapID = 1412, label = "Lanka Farshot", offMapText = "Travel to Lanka Farshot in Mulgore.", x = 0.440 },
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
            text = "Turn in Rites of the Earthmother to Seer Graytongue.",
            route = {
                { y = 0.901, mapID = 1412, label = "Seer Graytongue", offMapText = "Travel to Seer Graytongue in Mulgore.", x = 0.425 },
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
            route = {
                { y = 0.901, mapID = 1412, label = "Seer Graytongue", offMapText = "Travel to Seer Graytongue in Mulgore.", x = 0.425 },
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
            route = {
                { y = 0.901, mapID = 1412, label = "Seer Graytongue", offMapText = "Travel to Seer Graytongue.", x = 0.425 },
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
            text = "Carry the Smoldering Incense to the Ritual Fire at 56.6, 88.7 in the southeastern hills before it burns out. Follow the quest log pin.",
            route = {
                { mapID = 1412, x = 0.566, y = 0.887, label = "Ritual Fire", offMapText = "Travel to the Ritual Fire in southeastern Mulgore." },
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
            useClientPin = true,
            complete = {
                quest = { id = 95805, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-95805-grace-of-anshe-and-musha" },
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
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 747 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-750-the-hunt-continues" },
        },
        {
            text = "Turn in The Hunt Continues to Grull Hawkwind.",
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
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
        },
        {
            route = {
                { y = 0.770, mapID = 1412, label = "Brave Windfeather", offMapText = "Travel to Brave Windfeather in Mulgore.", x = 0.442 },
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
        },
        {
            route = {
                { y = 0.768, mapID = 1412, label = "Seer Ravenfeather", offMapText = "Travel to Seer Ravenfeather in Mulgore.", x = 0.443 },
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
            useClientPin = true,
        },
        {
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
            useClientPin = true,
        },
        {
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
            useClientPin = true,
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
            text = "In Brambleblade Ravine, follow the path right of Chief Sharptusk's lodge into the small cave and loot the Dirt-stained Map. Keep it for the next pickup.",
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
                { mapID = 1412, x = 0.599, y = 0.818, label = "Dirt-stained Map", offMapText = "Travel to the Dirt-stained Map in Brambleblade Ravine." },
            },
            dependsOn = {},
        },
        {
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
            requiredQuests = {},
            alternativeQuests = { 1516, 92466 },
            useClientText = false,
            useClientPin = true,
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
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 755 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-757-rite-of-strength" },
        },
        {
            text = "Turn in The Battleboars to Grull Hawkwind.",
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
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
            text = "Turn in Break Sharptusk! to Brave Windfeather.",
            route = {
                { y = 0.770, mapID = 1412, label = "Brave Windfeather", offMapText = "Travel to Brave Windfeather in Mulgore.", x = 0.442 },
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
            text = "Turn in Attack on Camp Narache to Chief Hawkwind.",
            route = {
                { y = 0.767, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind in Mulgore.", x = 0.439 },
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
            text = "Turn in Rite of Strength to Chief Hawkwind.",
            route = {
                { y = 0.767, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind in Mulgore.", x = 0.439 },
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
            route = {
                { y = 0.767, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind in Mulgore.", x = 0.439 },
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
            text = "Turn in Call of Earth to Seer Ravenfeather.",
            route = {
                { y = 0.768, mapID = 1412, label = "Seer Ravenfeather", offMapText = "Travel to Seer Ravenfeather in Mulgore.", x = 0.443 },
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
            id = "level-before-accept-1520-call-of-earth",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 1520,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Call of Earth from Seer Ravenfeather.",
            route = {
                { y = 0.768, mapID = 1412, label = "Seer Ravenfeather", offMapText = "Travel to Seer Ravenfeather in Mulgore.", x = 0.443 },
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
            id = "level-before-accept-1521-call-of-earth",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 1521,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            text = "Turn in Call of Earth to Seer Ravenfeather.",
            route = {
                { y = 0.768, mapID = 1412, label = "Seer Ravenfeather", offMapText = "Travel to Seer Ravenfeather in Mulgore.", x = 0.443 },
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
        },
        {
            route = {
                { y = 0.767, mapID = 1412, label = "Chief Hawkwind", offMapText = "Travel to Chief Hawkwind.", x = 0.439 },
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
            route = {
                { y = 0.812, mapID = 1412, label = "Antur Fallow", offMapText = "Travel to Antur Fallow in Mulgore.", x = 0.392 },
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
            id = "level-before-woven-accept-96605-the-great-outdoors",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 96605,
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { mapID = 1412, x = 0.462, y = 0.672, label = "Kaga Wildhoof", offMapText = "Travel to Kaga Wildhoof." },
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
            dependsOn = { "woven-turnin-96659-the-adventurer" },
        },
        {
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
            useClientPin = true,
            dependsOn = { "woven-accept-96605-the-great-outdoors" },
            route = {
                { mapID = 1412, x = 0.462, y = 0.672, label = "Kaga Wildhoof", offMapText = "Travel to Kaga Wildhoof." },
            },
        },
        {
            route = {
                { mapID = 1412, x = 0.462, y = 0.672, label = "Kaga Wildhoof", offMapText = "Travel to Kaga Wildhoof." },
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
        },
        {
            route = {
                { y = 0.608, mapID = 1412, label = "Maur Raincaller", offMapText = "Travel to Maur Raincaller in Mulgore.", x = 0.462 },
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
            id = "level-before-accept-761-swoop-hunting",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 761,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.627, mapID = 1412, label = "Harken Windtotem", offMapText = "Travel to Harken Windtotem in Mulgore.", x = 0.476 },
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
        },
        {
            route = {
                { y = 0.636, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.475 },
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
            id = "level-before-accept-743-dangers-of-the-windfury",
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
            complete = { level = { min = 5 } },
            requiredLevel = 5,
            checkpointQuest = 743,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.649, mapID = 1412, label = "Ruul Eagletalon", offMapText = "Travel to Ruul Eagletalon in Mulgore.", x = 0.465 },
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
            text = "Turn in Rites of the Earthmother to Baine Bloodhoof.",
            route = {
                { y = 0.634, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof in Mulgore.", x = 0.467 },
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
            route = {
                { y = 0.634, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof in Mulgore.", x = 0.467 },
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
            id = "level-before-accept-767-rite-of-vision",
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
            complete = { level = { min = 3 } },
            requiredLevel = 3,
            checkpointQuest = 767,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.634, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof in Mulgore.", x = 0.467 },
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
        },
        {
            route = {
                { y = 0.634, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof in Mulgore.", x = 0.467 },
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
            text = "Turn in A Task Unfinished to Innkeeper Kauth.",
            route = {
                { y = 0.642, mapID = 1412, label = "Innkeeper Kauth", offMapText = "Travel to Innkeeper Kauth in Mulgore.", x = 0.459 },
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
            text = "Turn in Rite of Vision to Zarlman Two-Moons.",
            route = {
                { y = 0.612, mapID = 1412, label = "Zarlman Two-Moons", offMapText = "Travel to Zarlman Two-Moons in Mulgore.", x = 0.469 },
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
            id = "level-before-accept-771-rite-of-vision",
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
            complete = { level = { min = 3 } },
            requiredLevel = 3,
            checkpointQuest = 771,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.612, mapID = 1412, label = "Zarlman Two-Moons", offMapText = "Travel to Zarlman Two-Moons in Mulgore.", x = 0.469 },
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
            useClientPin = true,
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
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
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
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
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
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
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
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
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
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
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
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-761-swoop-hunting" },
        },
        {
            text = "Turn in Poison Water to Mull Thunderhorn.",
            route = {
                { y = 0.636, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.475 },
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
            id = "level-before-accept-754-winterhoof-cleansing",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 754,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.636, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.475 },
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
            text = "Turn in Swoop Hunting to Harken Windtotem.",
            route = {
                { y = 0.627, mapID = 1412, label = "Harken Windtotem", offMapText = "Travel to Harken Windtotem in Mulgore.", x = 0.476 },
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
            useClientPin = true,
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
        },
        {
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
            useClientPin = true,
        },
        {
            text = "Kill 5 Palemane Poacher.",
            route = {
                { y = 0.604, mapID = 1412, label = "Palemane Poacher", offMapText = "Travel to Palemane Poacher in Palemane Rock.", x = 0.308 },
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
            useClientPin = true,
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
                { mapID = 1412, x = 0.356, y = 0.634, label = "Palemane Skinner", offMapText = "Travel to Palemane Skinner in Palemane Rock." },
            },
            sourceStep = 70,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
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
                { mapID = 1412, x = 0.356, y = 0.634, label = "Palemane Tanner", offMapText = "Travel to Palemane Tanner in Palemane Rock." },
            },
            sourceStep = 70,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-745-sharing-the-land" },
        },
        {
            route = {
                { y = 0.659, mapID = 1412, label = "Perith Stormhoof", offMapText = "Travel to Perith Stormhoof.", x = 0.331 },
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
            dependsOn = {
                "objective-745-1-palemane-tanner",
                "objective-745-2-palemane-skinner",
                "objective-745-3-palemane-poacher",
            },
        },
        {
            route = {
                { y = 0.659, mapID = 1412, label = "Perith Stormhoof", offMapText = "Travel to Perith Stormhoof.", x = 0.331 },
            },
            text = "After finishing Sharing the Land's kills inside, escort Perith Stormhoof out of Palemane Rock.",
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
            useClientPin = true,
            dependsOn = { "woven-accept-98430-the-longwalkers" },
        },
        {
            text = "Turn in Winterhoof Cleansing to Mull Thunderhorn.",
            route = {
                { y = 0.636, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.475 },
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
            id = "level-before-accept-756-thunderhorn-totem",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 756,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.636, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.475 },
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
            text = "Turn in Sharing the Land to Baine Bloodhoof.",
            route = {
                { y = 0.634, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof in Mulgore.", x = 0.467 },
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
            text = "Turn in Rite of Vision to Zarlman Two-Moons.",
            route = {
                { y = 0.612, mapID = 1412, label = "Zarlman Two-Moons", offMapText = "Travel to Zarlman Two-Moons in Mulgore.", x = 0.469 },
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
            id = "level-before-accept-772-rite-of-vision",
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
            complete = { level = { min = 3 } },
            requiredLevel = 3,
            checkpointQuest = 772,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.612, mapID = 1412, label = "Zarlman Two-Moons", offMapText = "Travel to Zarlman Two-Moons in Mulgore.", x = 0.469 },
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
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
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
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 754 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
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
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 754 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-756-thunderhorn-totem" },
        },
        {
            text = "Turn in Mazzranache to Maur Raincaller.",
            route = {
                { y = 0.608, mapID = 1412, label = "Maur Raincaller", offMapText = "Travel to Maur Raincaller in Mulgore.", x = 0.462 },
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
            text = "Turn in Thunderhorn Totem to Mull Thunderhorn.",
            route = {
                { y = 0.636, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.475 },
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
            id = "level-before-accept-758-thunderhorn-cleansing",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 758,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.636, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.475 },
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
            id = "level-before-woven-accept-99108-sparring-match",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 99108,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.637, mapID = 1412, label = "Krang Stonehoof", offMapText = "Travel to Krang Stonehoof.", x = 0.484 },
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
            dependsOn = { "accept-758-thunderhorn-cleansing" },
        },
        {
            route = {
                { y = 0.637, mapID = 1412, label = "Krang Stonehoof", offMapText = "Travel to Krang Stonehoof.", x = 0.484 },
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
            useClientPin = true,
            dependsOn = { "woven-accept-99108-sparring-match" },
        },
        {
            route = {
                { y = 0.637, mapID = 1412, label = "Krang Stonehoof", offMapText = "Travel to Krang Stonehoof.", x = 0.484 },
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
            useClientPin = true,
        },
        {
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
            useClientPin = true,
        },
        {
            text = "Turn in Rite of Vision to Seer Wiserunner.",
            route = {
                { y = 0.433, mapID = 1412, label = "Seer Wiserunner", offMapText = "Travel to Seer Wiserunner in Mulgore.", x = 0.343 },
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
            useClientPin = true,
        },
        {
            id = "level-before-accept-773-rite-of-wisdom",
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
            complete = { level = { min = 3 } },
            requiredLevel = 3,
            checkpointQuest = 773,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.433, mapID = 1412, label = "Seer Wiserunner", offMapText = "Travel to Seer Wiserunner in Mulgore.", x = 0.343 },
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
            useClientPin = true,
            sourceInstructionStep = 95,
            sourceInstructionIndex = 1,
            checkpointQuest = 746,
            instructionOnly = true,
            rememberPreparation = 746,
        },
        {
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
            useClientPin = true,
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
        },
        {
            route = {
                { mapID = 1412, x = 0.570, y = 0.345, label = "Lorekeeper Raintotem", offMapText = "Travel to Lorekeeper Raintotem in Mulgore." },
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
            text = "Turn in Rite of Wisdom to Ancestral Spirit.",
            route = {
                { y = 0.307, mapID = 1412, label = "Ancestral Spirit", offMapText = "Travel to Ancestral Spirit in Mulgore.", x = 0.583 },
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
            id = "level-before-accept-775-journey-into-thunder-bluff",
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
            complete = { level = { min = 3 } },
            requiredLevel = 3,
            checkpointQuest = 775,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.307, mapID = 1412, label = "Ancestral Spirit", offMapText = "Travel to Ancestral Spirit in Mulgore.", x = 0.583 },
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
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-833-a-sacred-burial" },
        },
        {
            text = "Turn in A Sacred Burial to Lorekeeper Raintotem.",
            route = {
                { y = 0.345, mapID = 1412, label = "Lorekeeper Raintotem", offMapText = "Travel to Lorekeeper Raintotem in Mulgore.", x = 0.570 },
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
            text = "Turn in Dangers of the Windfury to Ruul Eagletalon.",
            route = {
                { y = 0.649, mapID = 1412, label = "Ruul Eagletalon", offMapText = "Travel to Ruul Eagletalon in Mulgore.", x = 0.465 },
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
            text = "Turn in Dwarven Digging to Baine Bloodhoof.",
            route = {
                { y = 0.634, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof in Mulgore.", x = 0.467 },
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
            text = "Turn in Thunderhorn Cleansing to Mull Thunderhorn.",
            route = {
                { y = 0.636, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn in Mulgore.", x = 0.475 },
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
            id = "level-before-woven-accept-99411-kyles-gone-missing",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 2, 5, 6, 8, 96 } },
                },
            },
            complete = {
                level = { min = 7 },
            },
            requiredLevel = 7,
            checkpointQuest = 99411,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { mapID = 1412, x = 0.472, y = 0.576, label = "Ahab Wheathoof", offMapText = "Travel to Ahab Wheathoof in Bloodhoof Village." },
            },
            text = "Accept Kyle's Gone Missing! from Ahab Wheathoof in Bloodhoof Village.",
            id = "woven-accept-99411-kyles-gone-missing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                    { race = { 2, 5, 6, 8, 96 } },
                },
            },
            complete = {
                quest = { id = 99411, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            route = {
                { mapID = 1412, x = 0.472, y = 0.577, label = "Bloodhoof Village", offMapText = "Travel to Bloodhoof Village." },
            },
            text = "Kill Adult Plainstriders for Tender Strider Meat if needed, then use it on Kyle the Frenzied as he circles Bloodhoof Village.",
            id = "woven-objective-99411-kyles-gone-missing",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                    { race = { 2, 5, 6, 8, 96 } },
                },
            },
            complete = {
                questObjective = { id = 99411, index = 1, text = "Kyle fed", count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "woven-accept-99411-kyles-gone-missing" },
        },
        {
            route = {
                { mapID = 1412, x = 0.472, y = 0.576, label = "Ahab Wheathoof", offMapText = "Travel to Ahab Wheathoof in Bloodhoof Village." },
            },
            text = "Turn in Kyle's Gone Missing! to Ahab Wheathoof.",
            id = "woven-turnin-99411-kyles-gone-missing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 7 } },
                    { race = { 2, 5, 6, 8, 96 } },
                },
            },
            complete = {
                quest = { id = 99411, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = {
                "woven-accept-99411-kyles-gone-missing",
                "woven-objective-99411-kyles-gone-missing",
            },
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
        },
        {
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.469 },
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
        },
        {
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
            useClientPin = true,
        },
        {
            text = "Turn in Taming the Beast to Yaw Sharpmane.",
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.469 },
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
            id = "level-before-accept-6087-taming-the-beast",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6087,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.469 },
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
            useClientPin = true,
        },
        {
            text = "Turn in Taming the Beast to Yaw Sharpmane.",
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.469 },
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
            id = "level-before-accept-6088-taming-the-beast",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6088,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.469 },
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
            useClientPin = true,
        },
        {
            text = "Turn in Taming the Beast to Yaw Sharpmane.",
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.469 },
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
            id = "level-before-accept-6089-training-the-beast",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6089,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane in Mulgore.", x = 0.469 },
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
        },
        {
            route = {
                { y = 0.625, mapID = 1412, label = "Narm Skychaser", offMapText = "Travel to Narm Skychaser in Mulgore.", x = 0.474 },
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
        },
        {
            route = {
                { y = 0.630, mapID = 1412, label = "Gennia Runetotem", offMapText = "Travel to Gennia Runetotem in Mulgore.", x = 0.475 },
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
            id = "level-before-accept-749-the-ravaged-caravan",
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
            complete = { level = { min = 5 } },
            requiredLevel = 5,
            checkpointQuest = 749,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            dependsOn = { "woven-turnin-99108-sparring-match" },
        },
        {
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
            id = "level-before-accept-751-the-ravaged-caravan",
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
            complete = { level = { min = 5 } },
            requiredLevel = 5,
            checkpointQuest = 751,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            dependsOn = { "turnin-749-the-ravaged-caravan" },
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
        },
        {
            route = {
                { y = 0.586, mapID = 1413, label = "Kirge Sternhorn", offMapText = "Travel to Kirge Sternhorn in The Barrens.", x = 0.448 },
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
        },
        {
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
            id = "level-before-accept-6362-ride-to-thunder-bluff",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6362,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            id = "level-before-accept-6363-tal-the-wind-rider-master",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6363,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            id = "level-before-woven-accept-776-rites-of-the-earthmother",
            kind = "note",
            text = "Reach level 3 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                },
            },
            complete = { level = { min = 3 } },
            requiredLevel = 3,
            checkpointQuest = 776,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "woven-accept-776-rites-of-the-earthmother",
            kind = "accept",
            text = "Accept Rites of the Earthmother from Cairne Bloodhoof.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 3 } },
                },
            },
            complete = { quest = { id = 776, state = "activeOrCompleted" } },
            route = {
                { mapID = 1456, x = 0.6030, y = 0.5168, label = "Cairne Bloodhoof", offMapText = "Travel to Cairne Bloodhoof." },
            },
            requiredQuests = {
                { mode = "any", quests = { 775 } },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-775-journey-into-thunder-bluff" },
        },
        {
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
            dependsOn = {
                "woven-accept-98430-the-longwalkers",
                "woven-objective-98430-the-longwalkers",
                "turnin-775-journey-into-thunder-bluff",
            },
        },
        {
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
            id = "level-before-accept-5922-moonglade",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 5922,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
        },
        {
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
            id = "level-before-accept-5930-great-bear-spirit",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 5930,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            id = "level-before-accept-5932-back-to-thunder-bluff",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 5932,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            id = "level-before-accept-6002-body-and-heart",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6002,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            id = "level-before-accept-6364-return-to-jahan",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 6364,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
        },
        {
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
            id = "level-before-woven-accept-97485-traditions-of-the-bluff",
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
            complete = { level = { min = 3 } },
            requiredLevel = 3,
            checkpointQuest = 97485,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "accept-76156-stalk-with-the-earthmother",
            kind = "accept",
            conditions = { all = {
                { faction = "Horde" }, { race = 6 },
                { class = { 1, 7, 11 } }, { level = { min = 4 } },
            } },
            text = "Accept Stalk With The Earthmother from Boarton Shadetotem in Thunder Bluff.",
            complete = { quest = { id = 76156, state = "activeOrCompleted" } },
            route = { { mapID = 1456, x = 0.396, y = 0.656, label = "Boarton Shadetotem", offMapText = "Travel to Boarton Shadetotem in Thunder Bluff." } },
            dependsOn = {},
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.561, mapID = 1456, label = "Eylah Sunhorn", offMapText = "Travel to Eylah Sunhorn.", x = 0.381 },
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
            id = "woven-preparation-97485-bundle-of-herbs",
            kind = "note",
            instructionOnly = true,
            rememberPreparation = 97485,
            text = "Buy one Bundle of Herbs from Nida Winterhoof for 1 copper while Traditions of the Bluff is active.",
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
                any = {
                    { item = { name = "Bundle of Herbs", minCount = 1 } },
                    { item = { name = "Prepared Incense", minCount = 1 } },
                    { questObjective = { id = 97485, index = 2, text = "Spread incense" } },
                    { quest = { id = 97485, state = "completed" } },
                },
            },
            route = {
                { mapID = 1456, x = 0.493, y = 0.396, label = "Nida Winterhoof", offMapText = "Travel to Nida Winterhoof in Thunder Bluff." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            useQuestNavigation = false,
            dependsOn = { "woven-accept-97485-traditions-of-the-bluff" },
        },
        {
            id = "woven-preparation-97485-cedar-twigs",
            kind = "note",
            instructionOnly = true,
            rememberPreparation = 97485,
            text = "Buy one Bundle of Dried Cedar Twigs from Nata Dawnstrider for 1 copper while Traditions of the Bluff is active.",
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
                any = {
                    { item = { name = "Bundle of Dried Cedar Twigs", minCount = 1 } },
                    { item = { name = "Prepared Incense", minCount = 1 } },
                    { questObjective = { id = 97485, index = 2, text = "Spread incense" } },
                    { quest = { id = 97485, state = "completed" } },
                },
            },
            route = {
                { mapID = 1456, x = 0.454, y = 0.386, label = "Nata Dawnstrider", offMapText = "Travel to Nata Dawnstrider in Thunder Bluff." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            useQuestNavigation = false,
            dependsOn = { "woven-accept-97485-traditions-of-the-bluff" },
        },
        {
            id = "woven-preparation-97485-sinew-thread",
            kind = "note",
            instructionOnly = true,
            rememberPreparation = 97485,
            text = "Buy one Sinew Thread from Mahu for 1 copper while Traditions of the Bluff is active.",
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
                any = {
                    { item = { name = "Sinew Thread", minCount = 1 } },
                    { item = { name = "Prepared Incense", minCount = 1 } },
                    { questObjective = { id = 97485, index = 2, text = "Spread incense" } },
                    { quest = { id = 97485, state = "completed" } },
                },
            },
            route = {
                { mapID = 1456, x = 0.437, y = 0.450, label = "Mahu", offMapText = "Travel to Mahu in Thunder Bluff." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            useQuestNavigation = false,
            dependsOn = { "woven-accept-97485-traditions-of-the-bluff" },
        },
        {
            id = "woven-preparation-97485-flint-and-tinder",
            kind = "note",
            instructionOnly = true,
            rememberPreparation = 97485,
            text = "Buy one Ceremonial Flint and Tinder from Naal Mistrunner for 1 copper while Traditions of the Bluff is active.",
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
                any = {
                    { item = { name = "Ceremonial Flint and Tinder", minCount = 1 } },
                    { item = { name = "Prepared Incense", minCount = 1 } },
                    { questObjective = { id = 97485, index = 2, text = "Spread incense" } },
                    { quest = { id = 97485, state = "completed" } },
                },
            },
            route = {
                { mapID = 1456, x = 0.514, y = 0.524, label = "Naal Mistrunner", offMapText = "Travel to Naal Mistrunner in Thunder Bluff." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            useQuestNavigation = false,
            dependsOn = { "woven-accept-97485-traditions-of-the-bluff" },
        },
        {
            id = "woven-preparation-97485-prepared-incense",
            kind = "note",
            instructionOnly = true,
            rememberPreparation = 97485,
            text = "Combine the four purchased components into Prepared Incense, then go to the mat and incense burner on the south-facing cliff of Hunter Rise.",
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
                any = {
                    { item = { name = "Prepared Incense", minCount = 1 } },
                    { questObjective = { id = 97485, index = 2, text = "Spread incense" } },
                    { quest = { id = 97485, state = "completed" } },
                },
            },
            route = {
                { mapID = 1456, x = 0.533, y = 0.879, label = "Ceremonial site", offMapText = "Travel to Ceremonial site in Thunder Bluff." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            useQuestNavigation = false,
            dependsOn = { "woven-preparation-97485-bundle-of-herbs", "woven-preparation-97485-cedar-twigs", "woven-preparation-97485-sinew-thread", "woven-preparation-97485-flint-and-tinder" },
        },
        {
            route = {
                { mapID = 1456, x = 0.533, y = 0.879, label = "Ceremonial site", offMapText = "Travel to the ceremonial site on Hunter Rise." },
            },
            text = "Spread Prepared Incense at the mat and incense burner on the south-facing cliff of Hunter Rise.",
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
                questObjective = { id = 97485, index = 2, text = "Spread incense" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            useQuestNavigation = false,
            dependsOn = { "woven-accept-97485-traditions-of-the-bluff", "woven-preparation-97485-prepared-incense" },
        },
        {
            route = {
                { y = 0.561, mapID = 1456, label = "Eylah Sunhorn", offMapText = "Travel to Eylah Sunhorn.", x = 0.381 },
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
            id = "level-before-woven-accept-99079-longwalker-malah",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 99079,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.638, mapID = 1412, label = "Brave Wildrunner", offMapText = "Travel to Brave Wildrunner.", x = 0.467 },
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
            id = "level-before-woven-accept-861-the-hunters-way",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 861,
            requiredQuests = {},
            alternativeQuests = { 844 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "woven-accept-861-the-hunters-way",
            kind = "accept",
            text = "Accept The Hunter's Way from Skorn Whitecloud in Bloodhoof Village.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 10 } },
                },
            },
            complete = { quest = { id = 861, state = "activeOrCompleted" } },
            route = {
                { mapID = 1412, x = 0.460, y = 0.634, label = "Skorn Whitecloud", offMapText = "Travel to Skorn Whitecloud." },
            },
            requiredQuests = {},
            alternativeQuests = { 844 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {  },
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
        },
        {
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane.", x = 0.469 },
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
            useClientPin = true,
            dependsOn = { "woven-accept-96130-chakuyak" },
        },
        {
            route = {
                { y = 0.596, mapID = 1412, label = "Yaw Sharpmane", offMapText = "Travel to Yaw Sharpmane.", x = 0.469 },
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
            id = "level-before-woven-accept-764-the-venture-co",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                },
            },
            complete = { level = { min = 5 } },
            requiredLevel = 5,
            checkpointQuest = 764,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "woven-accept-764-the-venture-co",
            kind = "accept",
            text = "Accept The Venture Co. from Morin Cloudstalker.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 5 } },
                },
            },
            complete = { quest = { id = 764, state = "activeOrCompleted" } },
            route = {
                { mapID = 1412, x = 0.500, y = 0.626, label = "Morin Cloudstalker", offMapText = "Morin Cloudstalker patrols this path. Look for him near 50.0, 62.6." },
            },
            requiredQuests = {
                { mode = "any", quests = { 751 } },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-751-the-ravaged-caravan" },
        },
        {
            id = "level-before-woven-accept-765-supervisor-fizsprocket",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                },
            },
            complete = { level = { min = 5 } },
            requiredLevel = 5,
            checkpointQuest = 765,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "woven-accept-765-supervisor-fizsprocket",
            kind = "accept",
            text = "Accept Supervisor Fizsprocket from Morin Cloudstalker.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 5 } },
                },
            },
            complete = { quest = { id = 765, state = "activeOrCompleted" } },
            route = {
                { mapID = 1412, x = 0.500, y = 0.626, label = "Morin Cloudstalker", offMapText = "Morin Cloudstalker patrols this path. Look for him near 50.0, 62.6." },
            },
            requiredQuests = {
                { mode = "any", quests = { 751 } },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-751-the-ravaged-caravan" },
        },
        {
            id = "woven-objective-764-the-venture-co-1",
            kind = "objective",
            text = "Kill Venture Co. Workers near the Venture Co. mine until you have slain 14.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 5 } },
                },
            },
            complete = { questObjective = { id = 764, index = 1, text = "Venture Co. Worker" } },
            route = {
                { mapID = 1412, x = 0.616, y = 0.466, label = "Venture Co. Worker", offMapText = "Travel to Venture Co. Worker." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-764-the-venture-co" },
        },
        {
            id = "woven-objective-764-the-venture-co-2",
            kind = "objective",
            text = "Kill Venture Co. Supervisors near the Venture Co. mine until you have slain six.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 5 } },
                },
            },
            complete = { questObjective = { id = 764, index = 2, text = "Venture Co. Supervisor" } },
            route = {
                { mapID = 1412, x = 0.614, y = 0.472, label = "Venture Co. Supervisor", offMapText = "Travel to Venture Co. Supervisor." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-764-the-venture-co" },
        },
        {
            id = "woven-objective-765-supervisor-fizsprocket",
            kind = "objective",
            text = "Kill Supervisor Fizsprocket inside the Venture Co. mine and loot Fizsprocket's Clipboard. Also loot Mulgore Expansion Plans to start Fizsprocket's Notes; its remaining pages are inside this mine.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 5 } },
                },
            },
            complete = { questObjective = { id = 765, index = 1, text = "Fizsprocket's Clipboard" } },
            route = {
                { mapID = 1412, x = 0.644, y = 0.436, label = "Supervisor Fizsprocket", offMapText = "Travel to Supervisor Fizsprocket." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-765-supervisor-fizsprocket" },
        },
        {
            id = "objective-76156-stalk-with-the-earthmother-1",
            kind = "objective",
            conditions = { all = {
                { faction = "Horde" }, { race = 6 },
                { class = { 1, 7, 11 } }, { level = { min = 4 } },
            } },
            text = "Collect 5 Seaforium Mining Charges from the blasting-supply carts while doing Supervisor Fizsprocket. Follow the quest log pin for the carts.",
            complete = { questObjective = { id = 76156, index = 1, count = 5, text = "Seaforium Mining Charge" } },
            route = { { mapID = 1412, x = 0.644, y = 0.436, label = "Venture Co. Mine", offMapText = "Travel to the Venture Co. Mine." } },
            dependsOn = { "accept-76156-stalk-with-the-earthmother" },
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
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
        },
        {
            id = "level-before-woven-accept-98424-fizsprockets-notes",
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
            complete = { level = { min = 5 } },
            requiredLevel = 5,
            checkpointQuest = 98424,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            text = "Pick up Shredder Operation Instructions from the papers inside the Venture Co. Mine.",
            route = {
                { mapID = 1412, x = 0.586, y = 0.473, label = "Shredder instructions", offMapText = "Travel to the papers inside the Venture Co. Mine." },
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
            useQuestNavigation = false,
            complete = {
                questObjective = { id = 98424, index = 1, text = "Shredder Operation Instructions" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-98424-fizsprockets-notes" },
        },
        {
            text = "Pick up One \"Gerenzo\", of Stonetalon from the papers inside the Venture Co. Mine.",
            route = {
                { mapID = 1412, x = 0.590, y = 0.464, label = "Gerenzo page", offMapText = "Travel to the papers inside the Venture Co. Mine." },
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
            id = "woven-objective-98424-fizsprockets-notes-gerenzo",
            kind = "objective",
            useClientPin = false,
            useQuestNavigation = false,
            complete = {
                questObjective = { id = 98424, index = 3, text = "One \"Gerenzo\", of Stonetalon" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-98424-fizsprockets-notes" },
        },
        {
            text = "Pick up Barrens Operations Best Practices from the papers inside the Venture Co. Mine.",
            route = {
                { mapID = 1412, x = 0.617, y = 0.473, label = "Barrens operations page", offMapText = "Travel to the papers inside the Venture Co. Mine." },
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
            id = "woven-objective-98424-fizsprockets-notes-barrens",
            kind = "objective",
            useClientPin = false,
            useQuestNavigation = false,
            complete = {
                questObjective = { id = 98424, index = 2, text = "Barrens Operations Best Practices" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-98424-fizsprockets-notes" },
        },
        {
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
            id = "level-before-woven-accept-99081-grim-tidings",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 99081,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            route = {
                { y = 0.638, mapID = 1412, label = "Brave Wildrunner", offMapText = "Travel to Brave Wildrunner.", x = 0.467 },
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
            id = "level-before-woven-accept-99101-our-ancient-enemy",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 99101,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.638, mapID = 1412, label = "Brave Wildrunner", offMapText = "Travel to Brave Wildrunner.", x = 0.467 },
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
            route = {
                { y = 0.634, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof.", x = 0.467 },
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
            id = "level-before-woven-accept-99080-drive-them-out",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 99080,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.634, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof.", x = 0.467 },
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
            id = "woven-turnin-764-the-venture-co",
            kind = "turnin",
            text = "Turn in The Venture Co. to Morin Cloudstalker.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 5 } },
                },
            },
            complete = { quest = { id = 764, state = "completed" } },
            route = {
                { mapID = 1412, x = 0.500, y = 0.626, label = "Morin Cloudstalker", offMapText = "Morin Cloudstalker patrols this path. Look for him near 50.0, 62.6." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-764-the-venture-co", "woven-objective-764-the-venture-co-1", "woven-objective-764-the-venture-co-2" },
        },
        {
            id = "woven-turnin-765-supervisor-fizsprocket",
            kind = "turnin",
            text = "Turn in Supervisor Fizsprocket to Morin Cloudstalker.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 5 } },
                },
            },
            complete = { quest = { id = 765, state = "completed" } },
            route = {
                { mapID = 1412, x = 0.500, y = 0.626, label = "Morin Cloudstalker", offMapText = "Morin Cloudstalker patrols this path. Look for him near 50.0, 62.6." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-765-supervisor-fizsprocket", "woven-objective-765-supervisor-fizsprocket" },
        },
        {
            route = {
                { y = 0.626, mapID = 1412, label = "Morin Cloudstalker", offMapText = "Morin Cloudstalker patrols this path. Look for him near 50.0, 62.6.", x = 0.500 },
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
            dependsOn = { "woven-accept-98424-fizsprockets-notes", "woven-objective-98424-fizsprockets-notes", "woven-objective-98424-fizsprockets-notes-gerenzo", "woven-objective-98424-fizsprockets-notes-barrens" },
        },
        {
            id = "level-before-woven-accept-98427-ceasing-operations",
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
            complete = { level = { min = 5 } },
            requiredLevel = 5,
            checkpointQuest = 98427,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.626, mapID = 1412, label = "Morin Cloudstalker", offMapText = "Morin Cloudstalker patrols this path. Look for him near 50.0, 62.6.", x = 0.500 },
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
            useClientPin = true,
            dependsOn = { "woven-accept-98427-ceasing-operations" },
        },
        {
            route = {
                { y = 0.626, mapID = 1412, label = "Morin Cloudstalker", offMapText = "Morin Cloudstalker patrols this path. Look for him near 50.0, 62.6.", x = 0.500 },
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
            useClientPin = true,
            dependsOn = { "woven-accept-99080-drive-them-out" },
        },
        {
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
            useClientPin = true,
            dependsOn = { "woven-accept-99080-drive-them-out" },
        },
        {
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
            useClientPin = true,
            dependsOn = { "woven-accept-99080-drive-them-out" },
        },
        {
            route = {
                { y = 0.634, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof.", x = 0.467 },
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
            id = "level-before-woven-accept-99082-the-high-chieftain",
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
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 99082,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.634, mapID = 1412, label = "Baine Bloodhoof", offMapText = "Travel to Baine Bloodhoof.", x = 0.467 },
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
            id = "level-before-woven-accept-759-wildmane-totem",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 759,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "woven-accept-759-wildmane-totem",
            kind = "accept",
            text = "Accept Wildmane Totem from Mull Thunderhorn.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 759, state = "activeOrCompleted" } },
            route = {
                { mapID = 1412, x = 0.4750, y = 0.6360, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn." },
            },
            requiredQuests = {
                { mode = "any", quests = { 758 } },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "turnin-758-thunderhorn-cleansing" },
        },
        {
            id = "woven-objective-759-wildmane-totem",
            kind = "objective",
            text = "Collect Prairie Alpha Teeth from Prairie Wolf Alphas until Wildmane Totem is ready.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 759, state = "complete" } },
            route = {
                { mapID = 1412, x = 0.5260, y = 0.1280, label = "Prairie Wolf Alpha", offMapText = "Travel to Prairie Wolf Alpha." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-759-wildmane-totem" },
        },
        {
            id = "woven-objective-776-rites-of-the-earthmother",
            kind = "objective",
            text = "Kill Arra'chea in northern Mulgore and loot his horn. Bring a group if needed.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 3 } },
                },
            },
            complete = { quest = { id = 776, state = "complete" } },
            route = {
                { mapID = 1412, x = 0.5125, y = 0.2482, label = "Arra'chea", offMapText = "Travel to Arra'chea." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-776-rites-of-the-earthmother" },
        },
        {
            id = "level-before-woven-accept-770-the-demon-scarred-cloak",
            kind = "note",
            text = "Reach level 6 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                },
            },
            complete = { level = { min = 6 } },
            requiredLevel = 6,
            checkpointQuest = 770,
            requiredQuests = {},
            excludeWhen = { all = {
                { ["not"] = { item = { name = "Demon Scarred Cloak", minCount = 1 } } },
                { ["not"] = { quest = { id = 770, state = "activeOrCompleted" } } },
            } },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "woven-accept-770-the-demon-scarred-cloak",
            kind = "accept",
            text = "Use the Demon Scarred Cloak to accept The Demon Scarred Cloak if you found it during this outing.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 6 } },
                },
            },
            complete = { quest = { id = 770, state = "activeOrCompleted" } },
            route = {
                { mapID = 1412, x = 0.4670, y = 0.2548, label = "Ghost Howl", offMapText = "Travel to Ghost Howl." },
            },
            requiredQuests = {},
            excludeWhen = { all = {
                { ["not"] = { item = { name = "Demon Scarred Cloak", minCount = 1 } } },
                { ["not"] = { quest = { id = 770, state = "activeOrCompleted" } } },
            } },
            useClientText = false,
            useClientPin = false,
            dependsOn = {  },
        },
        {
            id = "woven-turnin-759-wildmane-totem",
            kind = "turnin",
            text = "Turn in Wildmane Totem to Mull Thunderhorn.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 759, state = "completed" } },
            route = {
                { mapID = 1412, x = 0.4750, y = 0.6360, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-759-wildmane-totem", "woven-objective-759-wildmane-totem" },
        },
        {
            id = "level-before-woven-accept-760-wildmane-cleansing",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                },
            },
            complete = { level = { min = 4 } },
            requiredLevel = 4,
            checkpointQuest = 760,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "woven-accept-760-wildmane-cleansing",
            kind = "accept",
            text = "Accept Wildmane Cleansing from Mull Thunderhorn.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 760, state = "activeOrCompleted" } },
            route = {
                { mapID = 1412, x = 0.4750, y = 0.6360, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn." },
            },
            requiredQuests = {
                { mode = "any", quests = { 759 } },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-turnin-759-wildmane-totem" },
        },
        {
            id = "woven-turnin-770-the-demon-scarred-cloak",
            kind = "turnin",
            text = "Turn in The Demon Scarred Cloak to Skorn Whitecloud.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 6 } },
                },
            },
            complete = { quest = { id = 770, state = "completed" } },
            route = {
                { mapID = 1412, x = 0.4600, y = 0.6340, label = "Skorn Whitecloud", offMapText = "Travel to Skorn Whitecloud." },
            },
            requiredQuests = {},
            excludeWhen = { all = {
                { ["not"] = { item = { name = "Demon Scarred Cloak", minCount = 1 } } },
                { ["not"] = { quest = { id = 770, state = "activeOrCompleted" } } },
            } },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-770-the-demon-scarred-cloak" },
        },
        {
            id = "woven-objective-760-wildmane-cleansing",
            kind = "objective",
            text = "Use the supplied Wildmane Cleansing Totem at Wildmane Water Well north of Thunder Bluff.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 760, state = "complete" } },
            route = {
                { mapID = 1412, x = 0.4520, y = 0.1680, label = "Wildmane Water Well", offMapText = "Travel to Wildmane Water Well." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-760-wildmane-cleansing" },
        },
        {
            id = "woven-objective-861-the-hunters-way",
            kind = "objective",
            text = "Kill Flatland Prowlers in northern Mulgore until you have four Flatland Prowler Claws.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 10 } },
                },
            },
            complete = { questObjective = { id = 861, index = 1, text = "Flatland Prowler Claw" } },
            route = {
                { mapID = 1412, x = 0.526, y = 0.128, label = "Flatland Prowler", offMapText = "Travel to Flatland Prowler." },
            },
            requiredQuests = {},
            alternativeQuests = { 844 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-861-the-hunters-way" },
        },
        {
            id = "woven-turnin-760-wildmane-cleansing",
            kind = "turnin",
            text = "Turn in Wildmane Cleansing to Mull Thunderhorn.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 4 } },
                },
            },
            complete = { quest = { id = 760, state = "completed" } },
            route = {
                { mapID = 1412, x = 0.4750, y = 0.6360, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-760-wildmane-cleansing", "woven-objective-760-wildmane-cleansing" },
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
        },
        {
            route = {
                { y = 0.636, mapID = 1412, label = "Mull Thunderhorn", offMapText = "Travel to Mull Thunderhorn.", x = 0.475 },
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
            requiredQuests = { { mode = "all", quests = { 760 } } },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-turnin-760-wildmane-cleansing" },
        },
        {
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
            id = "woven-turnin-776-rites-of-the-earthmother",
            kind = "turnin",
            text = "Turn in Rites of the Earthmother to Cairne Bloodhoof.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 3 } },
                },
            },
            complete = { quest = { id = 776, state = "completed" } },
            route = {
                { mapID = 1456, x = 0.6030, y = 0.5168, label = "Cairne Bloodhoof", offMapText = "Travel to Cairne Bloodhoof." },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-776-rites-of-the-earthmother", "woven-objective-776-rites-of-the-earthmother" },
        },
        {
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
        {
            id = "woven-turnin-861-the-hunters-way",
            kind = "turnin",
            text = "Turn in The Hunter's Way to Melor Stonehoof on Hunter Rise in Thunder Bluff.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 10 } },
                },
            },
            complete = { quest = { id = 861, state = "completed" } },
            route = {
                { mapID = 1456, x = 0.6153, y = 0.809, label = "Melor Stonehoof", offMapText = "Travel to Melor Stonehoof." },
            },
            requiredQuests = {},
            alternativeQuests = { 844 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-861-the-hunters-way", "woven-objective-861-the-hunters-way" },
        },
        {
            id = "turnin-76156-stalk-with-the-earthmother",
            kind = "turnin",
            conditions = { all = {
                { faction = "Horde" }, { race = 6 },
                { class = { 1, 7, 11 } }, { level = { min = 4 } },
            } },
            text = "Turn in Stalk With The Earthmother to Boarton Shadetotem in Thunder Bluff.",
            complete = { quest = { id = 76156, state = "completed" } },
            route = { { mapID = 1456, x = 0.396, y = 0.656, label = "Boarton Shadetotem", offMapText = "Travel to Boarton Shadetotem in Thunder Bluff." } },
            dependsOn = { "accept-76156-stalk-with-the-earthmother", "objective-76156-stalk-with-the-earthmother-1" },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-woven-accept-860-sergra-darkthorn",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                },
            },
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 860,
            requiredQuests = {},
            alternativeQuests = { 844 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "woven-accept-860-sergra-darkthorn",
            kind = "accept",
            text = "Accept Sergra Darkthorn from Melor Stonehoof.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 10 } },
                },
            },
            complete = { quest = { id = 860, state = "activeOrCompleted" } },
            route = {
                { mapID = 1456, x = 0.6153, y = 0.809, label = "Melor Stonehoof", offMapText = "Travel to Melor Stonehoof." },
            },
            requiredQuests = {
                { mode = "any", quests = { 861 } },
            },
            alternativeQuests = { 844 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-turnin-861-the-hunters-way" },
        },
        {
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
            id = "woven-turnin-860-sergra-darkthorn",
            kind = "turnin",
            text = "Turn in Sergra Darkthorn to Sergra Darkthorn at the Crossroads.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    { race = { 6 } },
                    { level = { min = 10 } },
                },
            },
            complete = { quest = { id = 860, state = "completed" } },
            route = {
                { mapID = 1413, x = 0.5224, y = 0.3101, label = "Sergra Darkthorn", offMapText = "Travel to Sergra Darkthorn." },
            },
            requiredQuests = {},
            alternativeQuests = { 844 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-860-sergra-darkthorn" },
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
        },
        {
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
            id = "level-before-accept-1524-call-of-fire",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 1524,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            id = "level-before-accept-1525-call-of-fire",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 1525,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            useClientPin = true,
        },
        {
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
            id = "level-before-accept-1526-call-of-fire",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 1526,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
            id = "level-before-accept-1527-call-of-fire",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 1527,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
        },
        {
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
            id = "level-before-accept-1819-ulag-the-cleaver",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 1819,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
        },
        {
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
            useClientPin = true,
        },
        {
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
            id = "level-before-accept-1820-speak-with-coleman",
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
            complete = { level = { min = 10 } },
            requiredLevel = 10,
            checkpointQuest = 1820,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
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
        },
        {
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
    },
    casualSpine = true,
    routeMode = "ordered",
    nextGuide = { Horde = "leveling-casual-horde" },
})
