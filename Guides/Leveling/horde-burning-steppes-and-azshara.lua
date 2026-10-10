local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Burning Steppes & Azshara",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-burning-steppes-and-azshara",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 51 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-4726-broodling-essence",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4726,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.24, mapID = 1428, label = "Tinkee Steamboil", offMapText = "Travel to Tinkee Steamboil in Burning Steppes.", x = 0.6524 },
            },
            text = "Accept Broodling Essence from Tinkee Steamboil.",
            id = "accept-4726-broodling-essence",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4726, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.2392, mapID = 1428, label = "Maxwort Uberglint", offMapText = "Travel to Maxwort Uberglint in Burning Steppes.", x = 0.6516 },
            },
            text = "Accept Tablet of the Seven from Maxwort Uberglint.",
            id = "accept-4296-tablet-of-the-seven",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4296, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-4296-1-tablet-transcript",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            text = "Collect 1 Tablet Transcript.",
            complete = {
                questObjective = { id = 4296, index = 1, text = "Tablet Transcript", count = 1 },
            },
            route = {
                { mapID = 1428, x = 0.5409, y = 0.4073, label = "Tablet Transcript", offMapText = "Travel to Tablet Transcript." },
            },
            sourceStep = 7,
            priority = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4296-tablet-of-the-seven" },
        },
        {
            id = "level-before-turnin-3821-dreadmaul-rock",
            kind = "note",
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 48 },
            },
            requiredLevel = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3821,
            priority = 50,
        },
        {
            priority = 60,
            route = {
                { mapID = 1428, x = 0.7979, y = 0.45520000000000005, label = "Sha'ni Proudtusk", offMapText = "Travel to Sha'ni Proudtusk in Burning Steppes." },
            },
            text = "Turn in Dreadmaul Rock to Sha'ni Proudtusk.",
            id = "turnin-3821-dreadmaul-rock",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3821, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-4022-a-taste-of-flame",
            kind = "note",
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 52 },
            },
            requiredLevel = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4022,
            alternativeQuests = { 4023 },
            priority = 70,
        },
        {
            priority = 80,
            route = {
                { y = 0.3157, mapID = 1428, label = "Cyrus Therepentous", offMapText = "Travel to Cyrus Therepentous in Burning Steppes.", x = 0.9506 },
            },
            text = "Accept A Taste of Flame from Cyrus Therepentous.",
            id = "accept-4022-a-taste-of-flame",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 4022, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3481 },
                    conditions = {},
                },
            },
            alternativeQuests = { 4023 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            text = "For A Taste of Flame: Show Cyrus Therepentous the Black Dragonflight Molt you received from Kalaran Windblade.",
            route = {
                { mapID = 1428, x = 0.9506, y = 0.3157, label = "Black Dragonflight Molt", offMapText = "Travel to Black Dragonflight Molt." },
            },
            id = "objective-4022-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 4022, state = "complete" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3481 },
                    conditions = {},
                },
            },
            alternativeQuests = { 4023 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4022-a-taste-of-flame" },
        },
        {
            priority = 100,
            text = "Turn in A Taste of Flame to Cyrus Therepentous.",
            route = {
                { y = 0.3157, mapID = 1428, label = "Cyrus Therepentous", offMapText = "Travel to Cyrus Therepentous in Burning Steppes.", x = 0.9506 },
            },
            dependsOn = { "accept-4022-a-taste-of-flame", "objective-4022-quest-work" },
            id = "turnin-4022-a-taste-of-flame",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 4022, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3481 },
                    conditions = {},
                },
            },
            alternativeQuests = { 4023 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-4726-1-broodling-essence",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            text = "Use the Draco-Incarcinatrix 900 on a Black Broodling before killing it. Open the red crystal on its corpse to collect a Broodling Essence. Collect 8 essences.",
            complete = {
                questObjective = { id = 4726, index = 1, text = "Broodling Essence", count = 8 },
            },
            route = {
                { mapID = 1428, x = 0.914, y = 0.314, label = "Broodling Essence", offMapText = "Travel to Broodling Essence." },
            },
            sourceStep = 13,
            priority = 110,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4726-broodling-essence" },
        },
        {
            priority = 120,
            text = "Turn in Broodling Essence to Tinkee Steamboil.",
            route = {
                { y = 0.2399, mapID = 1428, label = "Tinkee Steamboil", offMapText = "Travel to Tinkee Steamboil in Burning Steppes.", x = 0.6523 },
            },
            dependsOn = { "accept-4726-broodling-essence", "objective-4726-1-broodling-essence" },
            id = "turnin-4726-broodling-essence",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4726, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            route = {
                { y = 0.2399, mapID = 1428, label = "Tinkee Steamboil", offMapText = "Travel to Tinkee Steamboil in Burning Steppes.", x = 0.6523 },
            },
            text = "Accept Felnok Steelspring from Tinkee Steamboil.",
            id = "accept-4808-felnok-steelspring",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4808, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4726 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            text = "Turn in Tablet of the Seven to Maxwort Uberglint.",
            route = {
                { y = 0.2391, mapID = 1428, label = "Maxwort Uberglint", offMapText = "Travel to Maxwort Uberglint in Burning Steppes.", x = 0.6515 },
            },
            dependsOn = { "accept-4296-tablet-of-the-seven", "objective-4296-1-tablet-transcript" },
            id = "turnin-4296-tablet-of-the-seven",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4296, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            route = {
                { y = 0.3423, mapID = 1454, label = "Belgrom Rockmaul", offMapText = "Travel to Belgrom Rockmaul in Orgrimmar.", x = 0.7523 },
            },
            text = "Accept Betrayed from Belgrom Rockmaul.",
            id = "accept-3504-betrayed",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3504, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-4494-march-of-the-silithid",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 4494,
            priority = 160,
        },
        {
            priority = 170,
            route = {
                { mapID = 1454, x = 0.5627, y = 0.4667, label = "Zilzibin Drumlore", offMapText = "Travel to Zilzibin Drumlore in Orgrimmar." },
            },
            text = "Accept March of the Silithid from Zilzibin Drumlore.",
            id = "accept-4494-march-of-the-silithid",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4494, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 32, 7732 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            route = {
                { y = 0.7816, mapID = 1447, label = "Loh'atu", offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137 },
            },
            text = "Accept Spiritual Unrest from Loh'atu.",
            id = "accept-5535-spiritual-unrest",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 5535, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            route = {
                { y = 0.7816, mapID = 1447, label = "Loh'atu", offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137 },
            },
            text = "Accept A Land Filled with Hatred from Loh'atu.",
            id = "accept-5536-a-land-filled-with-hatred",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 5536, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            text = "Kill 6 Highborne Apparition.",
            route = {
                { y = 0.734, mapID = 1447, label = "Highborne Apparition", offMapText = "Travel to Highborne Apparition.", x = 0.134 },
            },
            dependsOn = { "accept-5535-spiritual-unrest" },
            id = "objective-5535-1-highborne-apparition",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5535, text = "Highborne Apparition", index = 1, count = 6 },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "Kill 6 Highborne Lichling.",
            route = {
                { y = 0.734, mapID = 1447, label = "Highborne Lichling", offMapText = "Travel to Highborne Lichling.", x = 0.134 },
            },
            dependsOn = { "accept-5535-spiritual-unrest" },
            id = "objective-5535-2-highborne-lichling",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5535, text = "Highborne Lichling", index = 2, count = 6 },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            text = "Kill 2 Haldarr Trickster.",
            route = {
                { y = 0.646, mapID = 1447, label = "Haldarr Trickster", offMapText = "Travel to Haldarr Trickster.", x = 0.198 },
            },
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            id = "objective-5536-2-haldarr-trickster",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5536, text = "Haldarr Trickster", index = 2, count = 2 },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            text = "Kill 2 Haldarr Felsworn.",
            route = {
                { y = 0.646, mapID = 1447, label = "Haldarr Felsworn", offMapText = "Travel to Haldarr Felsworn.", x = 0.198 },
            },
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            id = "objective-5536-3-haldarr-felsworn",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5536, text = "Haldarr Felsworn", index = 3, count = 2 },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            text = "Kill 6 Haldarr Satyr.",
            route = {
                { y = 0.646, mapID = 1447, label = "Haldarr Satyr", offMapText = "Travel to Haldarr Satyr.", x = 0.198 },
            },
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            id = "objective-5536-1-haldarr-satyr",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5536, text = "Haldarr Satyr", index = 1, count = 6 },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            text = "Turn in Spiritual Unrest to Loh'atu.",
            route = {
                { y = 0.7817, mapID = 1447, label = "Loh'atu", offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137 },
            },
            dependsOn = {
                "accept-5535-spiritual-unrest",
                "objective-5535-1-highborne-apparition",
                "objective-5535-2-highborne-lichling",
            },
            id = "turnin-5535-spiritual-unrest",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 5535, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            text = "Turn in A Land Filled with Hatred to Loh'atu.",
            route = {
                { y = 0.7817, mapID = 1447, label = "Loh'atu", offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137 },
            },
            dependsOn = {
                "accept-5536-a-land-filled-with-hatred",
                "objective-5536-2-haldarr-trickster",
                "objective-5536-3-haldarr-felsworn",
                "objective-5536-1-haldarr-satyr",
            },
            id = "turnin-5536-a-land-filled-with-hatred",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            complete = {
                quest = { id = 5536, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            text = "Turn in Betrayed to Ag'tor Bloodfist.",
            route = {
                { y = 0.5148, mapID = 1447, label = "Ag'tor Bloodfist", offMapText = "Travel to Ag'tor Bloodfist in Azshara.", x = 0.2226 },
            },
            dependsOn = { "accept-3504-betrayed" },
            id = "turnin-3504-betrayed",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3504, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            route = {
                { y = 0.5142, mapID = 1447, label = "Jediga", offMapText = "Travel to Jediga in Azshara.", x = 0.2256 },
            },
            text = "Accept Stealing Knowledge from Jediga.",
            id = "accept-3517-stealing-knowledge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3517, state = "activeOrCompleted" },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            text = "Collect 1 Tablet of Markri.",
            route = {
                { y = 0.546, mapID = 1447, label = "Tablet of Markri", offMapText = "Travel to Tablet of Markri.", x = 0.35 },
            },
            dependsOn = { "accept-3517-stealing-knowledge" },
            id = "objective-3517-3-tablet-of-markri",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3517, text = "Tablet of Markri", index = 3, count = 1 },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-3517-1-tablet-of-beth-amara",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Tablet of Beth'Amara.",
            complete = {
                questObjective = { id = 3517, index = 1, text = "Tablet of Beth'Amara", count = 1 },
            },
            route = {
                { mapID = 1447, x = 0.35200000000000004, y = 0.5579999999999999, label = "Tablet of Beth'Amara", offMapText = "Travel to Tablet of Beth'Amara." },
            },
            sourceStep = 42,
            priority = 300,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3517-stealing-knowledge" },
        },
        {
            id = "objective-3517-2-tablet-of-jin-yael",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Tablet of Jin'yael.",
            complete = {
                questObjective = { id = 3517, index = 2, text = "Tablet of Jin'yael", count = 1 },
            },
            route = {
                { mapID = 1447, x = 0.348, y = 0.5329999999999999, label = "Tablet of Jin'yael", offMapText = "Travel to Tablet of Jin'yael." },
            },
            sourceStep = 43,
            priority = 310,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3517-stealing-knowledge" },
        },
        {
            id = "objective-3517-4-tablet-of-sael-hai",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Tablet of Sael'hai.",
            complete = {
                questObjective = { id = 3517, index = 4, text = "Tablet of Sael'hai", count = 1 },
            },
            route = {
                { mapID = 1447, x = 0.348, y = 0.541, label = "Tablet of Sael'hai", offMapText = "Travel to Tablet of Sael'hai." },
            },
            sourceStep = 44,
            priority = 320,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3517-stealing-knowledge" },
        },
        {
            priority = 330,
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Open the Box of Empty Vials to obtain the four numbered empty vials.",
            id = "objective-3568-1-box-of-empty-vials",
            kind = "note",
            useClientPin = false,
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Empty Vial Labeled #1", minCount = 1 },
                            },
                            {
                                item = { name = "Empty Vial Labeled #2", minCount = 1 },
                            },
                            {
                                item = { name = "Empty Vial Labeled #3", minCount = 1 },
                            },
                            {
                                item = { name = "Empty Vial Labeled #4", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 3568, state = "complete" },
                    },
                },
            },
            route = {
                { mapID = 1447, x = 0.47700000000000004, y = 0.6104999999999999, label = "Filled Vial Labeled #1", offMapText = "Travel to Filled Vial Labeled #1." },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = {},
            sourceInstructionStep = 46,
            sourceInstructionIndex = 1,
            checkpointQuest = 3568,
            instructionOnly = true,
            rememberPreparation = 3568,
        },
        {
            priority = 340,
            route = {
                { mapID = 1447, x = 0.47700000000000004, y = 0.6104999999999999, label = "Tide pool #1", offMapText = "Travel to Tide pool #1." },
            },
            text = "Stand in the coastal tide pool and use Empty Vial Labeled #1 to collect its water sample.",
            id = "objective-3568-1-empty-vial-labeled-1",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3568, index = 1, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 350,
            route = {
                { mapID = 1447, x = 0.47859999999999997, y = 0.5155, label = "Tide pool #2", offMapText = "Travel to Tide pool #2." },
            },
            text = "Stand in the coastal tide pool and use Empty Vial Labeled #2 to collect its water sample.",
            id = "objective-3568-2-empty-vial-labeled-2",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3568, index = 2, count = 1 },
            },
            sourceStep = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            route = {
                { mapID = 1447, x = 0.486, y = 0.48560000000000003, label = "Tide pool #3", offMapText = "Travel to Tide pool #3." },
            },
            text = "Stand in the coastal tide pool and use Empty Vial Labeled #3 to collect its water sample.",
            id = "objective-3568-3-empty-vial-labeled-3",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3568, index = 3, count = 1 },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            route = {
                { mapID = 1447, x = 0.47409999999999997, y = 0.4628, label = "Tide pool #4", offMapText = "Travel to Tide pool #4." },
            },
            text = "Stand in the coastal tide pool and use Empty Vial Labeled #4 to collect its water sample.",
            id = "objective-3568-4-empty-vial-labeled-4",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3568, index = 4, count = 1 },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            text = "Turn in Stealing Knowledge to Jediga.",
            route = {
                { mapID = 1447, x = 0.2256, y = 0.5142, label = "Jediga", offMapText = "Travel to Jediga in Azshara." },
            },
            dependsOn = {
                "accept-3517-stealing-knowledge",
                "objective-3517-3-tablet-of-markri",
                "objective-3517-1-tablet-of-beth-amara",
                "objective-3517-2-tablet-of-jin-yael",
                "objective-3517-4-tablet-of-sael-hai",
            },
            id = "turnin-3517-stealing-knowledge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3517, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { mapID = 1447, x = 0.2256, y = 0.5142, label = "Jediga", offMapText = "Travel to Jediga in Azshara." },
            },
            text = "Accept Delivery to Magatha from Jediga.",
            id = "accept-3518-delivery-to-magatha",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3518, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3517 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            route = {
                { mapID = 1447, x = 0.2256, y = 0.5142, label = "Jediga", offMapText = "Travel to Jediga in Azshara." },
            },
            text = "Accept Delivery to Jes'rimon from Jediga.",
            id = "accept-3541-delivery-to-jes-rimon",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3541, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3517 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 410,
            route = {
                { mapID = 1447, x = 0.2256, y = 0.5142, label = "Jediga", offMapText = "Travel to Jediga in Azshara." },
            },
            text = "Accept Delivery to Archmage Xylem from Jediga.",
            id = "accept-3561-delivery-to-archmage-xylem",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3561, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3517 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            route = {
                { y = 0.5009, mapID = 1447, label = "Sanath Lim-yo", offMapText = "Travel to Sanath Lim-yo in Azshara.", x = 0.2811 },
            },
            text = "Speak with Sanath Lim-yo in Azshara and ask to visit Archmage Xylem.",
            id = "travel-3503-xylem-teleport",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            sourceStep = 51,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            text = "Turn in Delivery to Archmage Xylem to Archmage Xylem.",
            route = {
                { y = 0.4052, mapID = 1447, label = "Archmage Xylem", offMapText = "Travel to Archmage Xylem in Azshara.", x = 0.2971 },
            },
            dependsOn = { "accept-3561-delivery-to-archmage-xylem" },
            id = "turnin-3561-delivery-to-archmage-xylem",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3561, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3517 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            route = {
                { y = 0.4052, mapID = 1447, label = "Archmage Xylem", offMapText = "Travel to Archmage Xylem in Azshara.", x = 0.2971 },
            },
            text = "Accept Xylem's Payment to Jediga from Archmage Xylem.",
            id = "accept-3565-xylem-s-payment-to-jediga",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3565, state = "activeOrCompleted" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3561 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 450,
            route = {
                { y = 0.4628, mapID = 1447, label = "Nyrill", offMapText = "Travel to Nyrill in Azshara.", x = 0.2647 },
            },
            text = "Speak with Nyrill by Archmage Xylem in Azshara and ask to return to the path below.",
            id = "travel-3421-xylem-teleport",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            text = "Turn in Xylem's Payment to Jediga to Jediga.",
            route = {
                { y = 0.5142, mapID = 1447, label = "Jediga", offMapText = "Travel to Jediga in Azshara.", x = 0.2256 },
            },
            dependsOn = { "accept-3565-xylem-s-payment-to-jediga" },
            id = "turnin-3565-xylem-s-payment-to-jediga",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3565, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3561 },
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
