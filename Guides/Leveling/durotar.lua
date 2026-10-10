local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Orc & Troll Starter",
    category = "Leveling Quest Guides",
    id = "leveling-era-durotar",
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
                { y = 0.6853, mapID = 1411, label = "Kaltunk", offMapText = "Travel to Kaltunk in Durotar.", x = 0.4329 },
            },
            text = "Accept Your Place In The World from Kaltunk.",
            id = "accept-4641-your-place-in-the-world",
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
                quest = { id = 4641, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 20,
            route = {
                { y = 0.69, mapID = 1411, label = "Ruzan", offMapText = "Travel to Ruzan in Durotar.", x = 0.4259 },
            },
            text = "Accept Vile Familiars from Ruzan.",
            id = "accept-1485-vile-familiars",
            kind = "accept",
            conditions = {
                all = {
                    { class = 9 },
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
                quest = { id = 1485, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            alternativeQuests = { 1470 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            text = "Turn in Your Place In The World to Gornek.",
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            dependsOn = { "accept-4641-your-place-in-the-world" },
            id = "turnin-4641-your-place-in-the-world",
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
                quest = { id = 4641, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 40,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            id = "accept-788-cutting-teeth",
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
            sourceStep = 9,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-788-cutting-teeth",
        },
        {
            priority = 50,
            route = {
                { y = 0.662, mapID = 1411, label = "Mottled Boar", offMapText = "Travel to Mottled Boar.", x = 0.438 },
            },
            dependsOn = { "accept-788-cutting-teeth" },
            id = "objective-788-1-mottled-boar",
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
            sourceStep = 11,
            useClientPin = false,
            classAction = "objective-788-1-mottled-boar",
        },
        {
            id = "objective-1485-1-vile-familiar-head",
            kind = "objective",
            conditions = {
                all = {
                    { class = 9 },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 6 Vile Familiar Head.",
            complete = {
                questObjective = { id = 1485, index = 1, text = "Vile Familiar Head", count = 6 },
            },
            route = {
                { mapID = 1411, x = 0.45799999999999996, y = 0.574, label = "Vile Familiar Head", offMapText = "Travel to Vile Familiar Head." },
            },
            sourceStep = 13,
            priority = 60,
            requiredQuests = {},
            alternativeQuests = { 1470 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1485-vile-familiars" },
        },
        {
            priority = 70,
            route = {
                { y = 0.6259, mapID = 1411, label = "Hana'zua", offMapText = "Travel to Hana'zua in Durotar.", x = 0.406 },
            },
            text = "Accept Sarkoth from Hana'zua.",
            id = "accept-790-sarkoth",
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
                quest = { id = 790, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            text = "Collect 1 Sarkoth's Mangled Claw.",
            route = {
                { y = 0.654, mapID = 1411, label = "Sarkoth", offMapText = "Travel to Sarkoth.", x = 0.406 },
            },
            dependsOn = { "accept-790-sarkoth" },
            id = "objective-790-1-sarkoth",
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
                questObjective = { id = 790, text = "Sarkoth", index = 1, count = 1 },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 90,
            text = "Turn in Sarkoth to Hana'zua.",
            route = {
                { y = 0.6259, mapID = 1411, label = "Hana'zua", offMapText = "Travel to Hana'zua in Durotar.", x = 0.406 },
            },
            dependsOn = { "accept-790-sarkoth", "objective-790-1-sarkoth" },
            id = "turnin-790-sarkoth",
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
                quest = { id = 790, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 100,
            route = {
                { y = 0.6259, mapID = 1411, label = "Hana'zua", offMapText = "Travel to Hana'zua in Durotar.", x = 0.406 },
            },
            text = "Accept Sarkoth from Hana'zua.",
            id = "accept-804-sarkoth",
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
                quest = { id = 804, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 790 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            text = "Turn in Vile Familiars to Ruzan.",
            route = {
                { y = 0.69, mapID = 1411, label = "Ruzan", offMapText = "Travel to Ruzan in Durotar.", x = 0.4259 },
            },
            dependsOn = { "accept-1485-vile-familiars", "objective-1485-1-vile-familiar-head" },
            id = "turnin-1485-vile-familiars",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 9 },
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
                quest = { id = 1485, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {},
            alternativeQuests = { 1470 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Vile Familiars from Ruzan.",
            priority = 120,
            route = {
                { y = 0.69, mapID = 1411, label = "Ruzan", offMapText = "Travel to Ruzan in Durotar.", x = 0.4259 },
            },
            dependsOn = { "turnin-1485-vile-familiars" },
            id = "accept-1499-vile-familiars",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
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
                quest = { id = 1499, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1470, 1485 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            text = "Turn in Vile Familiars to Zureetha Fargaze.",
            route = {
                { y = 0.6915, mapID = 1411, label = "Zureetha Fargaze", offMapText = "Travel to Zureetha Fargaze in Durotar.", x = 0.4285 },
            },
            dependsOn = { "accept-1499-vile-familiars" },
            id = "turnin-1499-vile-familiars",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
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
                quest = { id = 1499, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1470, 1485 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 140,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            dependsOn = { "accept-788-cutting-teeth", "objective-788-1-mottled-boar" },
            id = "turnin-788-cutting-teeth",
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
            sourceStep = 21,
            useClientPin = false,
            classAction = "turnin-788-cutting-teeth",
        },
        {
            priority = 150,
            text = "Turn in Sarkoth to Gornek.",
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            dependsOn = { "accept-804-sarkoth" },
            id = "turnin-804-sarkoth",
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
                quest = { id = 804, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 790 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            text = "Accept Simple Parchment from Gornek.",
            id = "accept-2383-simple-parchment",
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
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 2383, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 170,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            text = "Accept Rune-Inscribed Parchment from Gornek.",
            id = "accept-3089-rune-inscribed-parchment",
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
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 3089, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
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
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            text = "Accept Encrypted Parchment from Gornek.",
            id = "accept-3088-encrypted-parchment",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 3088, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
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
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            text = "Accept Etched Parchment from Gornek.",
            id = "accept-3087-etched-parchment",
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
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 3087, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            text = "Accept Tainted Parchment from Gornek.",
            id = "accept-3090-tainted-parchment",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 3090, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            text = "Accept Simple Tablet from Gornek.",
            id = "accept-3065-simple-tablet",
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
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 3065, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            text = "Accept Etched Tablet from Gornek.",
            id = "accept-3082-etched-tablet",
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
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 3082, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            text = "Accept Encrypted Tablet from Gornek.",
            id = "accept-3083-encrypted-tablet",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 3083, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
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
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            text = "Accept Hallowed Tablet from Gornek.",
            id = "accept-3085-hallowed-tablet",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 3085, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            text = "Accept Rune-Inscribed Tablet from Gornek.",
            id = "accept-3084-rune-inscribed-tablet",
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
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 3084, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
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
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            text = "Accept Glyphic Tablet from Gornek.",
            id = "accept-3086-glyphic-tablet",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 3086, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
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
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            text = "Accept Sting of the Scorpid from Gornek.",
            id = "accept-789-sting-of-the-scorpid",
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
                quest = { id = 789, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 280,
            text = "Read Encrypted Parchment in your bags. Turn in Encrypted Parchment to Rwag.",
            route = {
                { y = 0.68, mapID = 1411, label = "Rwag", offMapText = "Travel to Rwag in Durotar.", x = 0.4128 },
            },
            dependsOn = { "accept-3088-encrypted-parchment" },
            id = "turnin-3088-encrypted-parchment",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 3088, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 290,
            text = "Read Encrypted Tablet in your bags. Turn in Encrypted Tablet to Rwag.",
            route = {
                { y = 0.68, mapID = 1411, label = "Rwag", offMapText = "Travel to Rwag in Durotar.", x = 0.4128 },
            },
            dependsOn = { "accept-3083-encrypted-tablet" },
            id = "turnin-3083-encrypted-tablet",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 3083, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            text = "Read Tainted Parchment in your bags. Turn in Tainted Parchment to Nartok.",
            route = {
                { y = 0.6851, mapID = 1411, label = "Nartok", offMapText = "Travel to Nartok in Durotar.", x = 0.4065 },
            },
            dependsOn = { "accept-3090-tainted-parchment" },
            id = "turnin-3090-tainted-parchment",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 3090, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            route = {
                { y = 0.6724, mapID = 1411, label = "Galgar", offMapText = "Travel to Galgar in Durotar.", x = 0.4273 },
            },
            text = "Accept Galgar's Cactus Apple Surprise from Galgar.",
            id = "accept-4402-galgar-s-cactus-apple-surprise",
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
                quest = { id = 4402, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 320,
            text = "Read Hallowed Tablet in your bags. Turn in Hallowed Tablet to Ken'jai.",
            route = {
                { y = 0.6882, mapID = 1411, label = "Ken'jai", offMapText = "Travel to Ken'jai in Durotar.", x = 0.4236 },
            },
            dependsOn = { "accept-3085-hallowed-tablet" },
            id = "turnin-3085-hallowed-tablet",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 3085, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            text = "Read Rune-Inscribed Parchment in your bags. Turn in Rune-Inscribed Parchment to Shikrik.",
            route = {
                { y = 0.69, mapID = 1411, label = "Shikrik", offMapText = "Travel to Shikrik in Durotar.", x = 0.4239 },
            },
            dependsOn = { "accept-3089-rune-inscribed-parchment" },
            id = "turnin-3089-rune-inscribed-parchment",
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
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 3089, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            text = "Turn in Rune-Inscribed Tablet to Shikrik.",
            route = {
                { y = 0.69, mapID = 1411, label = "Shikrik", offMapText = "Travel to Shikrik in Durotar.", x = 0.4239 },
            },
            dependsOn = { "accept-3084-rune-inscribed-tablet" },
            id = "turnin-3084-rune-inscribed-tablet",
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
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 3084, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1516-call-of-earth",
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
                },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1516,
            alternativeQuests = { 1519, 92466 },
            priority = 350,
        },
        {
            priority = 360,
            route = {
                { y = 0.6917, mapID = 1411, label = "Canaga Earthcaller", offMapText = "Travel to Canaga Earthcaller in Durotar.", x = 0.4241 },
            },
            text = "Accept Call of Earth from Canaga Earthcaller.",
            id = "accept-1516-call-of-earth",
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
                },
            },
            complete = {
                quest = { id = 1516, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {},
            alternativeQuests = { 1519, 92466 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            text = "Read Glyphic Tablet in your bags. Turn in Glyphic Tablet to Mai'ah.",
            route = {
                { y = 0.6904, mapID = 1411, label = "Mai'ah", offMapText = "Travel to Mai'ah in Durotar.", x = 0.4251 },
            },
            dependsOn = { "accept-3086-glyphic-tablet" },
            id = "turnin-3086-glyphic-tablet",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 3086, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-792-vile-familiars",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1, 2, 3, 4, 5, 7, 8, 11 },
                    },
                    { faction = "Horde" },
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
            checkpointQuest = 792,
            priority = 380,
        },
        {
            priority = 390,
            route = {
                { y = 0.6914, mapID = 1411, label = "Zureetha Fargaze", offMapText = "Travel to Zureetha Fargaze in Durotar.", x = 0.4285 },
            },
            text = "Accept Vile Familiars from Zureetha Fargaze.",
            id = "accept-792-vile-familiars",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1, 2, 3, 4, 5, 7, 8, 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 792, state = "activeOrCompleted" },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            text = "Read Simple Parchment in your bags. Turn in Simple Parchment to Frang.",
            route = {
                { y = 0.6943, mapID = 1411, label = "Frang", offMapText = "Travel to Frang in Durotar.", x = 0.4289 },
            },
            dependsOn = { "accept-2383-simple-parchment" },
            id = "turnin-2383-simple-parchment",
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
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 2383, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            text = "Read Simple Tablet in your bags. Turn in Simple Tablet to Frang.",
            route = {
                { y = 0.6943, mapID = 1411, label = "Frang", offMapText = "Travel to Frang in Durotar.", x = 0.4289 },
            },
            dependsOn = { "accept-3065-simple-tablet" },
            id = "turnin-3065-simple-tablet",
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
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 3065, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            text = "Read Etched Parchment in your bags. Turn in Etched Parchment to Jen'shan.",
            route = {
                { y = 0.6932, mapID = 1411, label = "Jen'shan", offMapText = "Travel to Jen'shan in Durotar.", x = 0.4284 },
            },
            dependsOn = { "accept-3087-etched-parchment" },
            id = "turnin-3087-etched-parchment",
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
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 3087, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            text = "Turn in Etched Tablet to Jen'shan.",
            route = {
                { y = 0.6932, mapID = 1411, label = "Jen'shan", offMapText = "Travel to Jen'shan in Durotar.", x = 0.4284 },
            },
            dependsOn = { "accept-3082-etched-tablet" },
            id = "turnin-3082-etched-tablet",
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
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 3082, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5441-lazy-peons",
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
            checkpointQuest = 5441,
            priority = 440,
        },
        {
            priority = 450,
            route = {
                { y = 0.6864, mapID = 1411, label = "Foreman Thazz'ril", offMapText = "Travel to Foreman Thazz'ril in Durotar.", x = 0.4462 },
            },
            text = "Accept Lazy Peons from Foreman Thazz'ril.",
            id = "accept-5441-lazy-peons",
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
                quest = { id = 5441, state = "activeOrCompleted" },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            text = "Kill 12 Vile Familiar.",
            route = {
                { y = 0.574, mapID = 1411, label = "Vile Familiar", offMapText = "Travel to Vile Familiar.", x = 0.458 },
            },
            dependsOn = { "accept-792-vile-familiars" },
            id = "objective-792-1-vile-familiar",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 1, 2, 3, 4, 5, 7, 8, 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 792, text = "Vile Familiar", index = 1, count = 12 },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-789-1-scorpid-worker-tail",
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
            text = "Collect 10 Scorpid Worker Tail.",
            complete = {
                questObjective = { id = 789, index = 1, text = "Scorpid Worker Tail", count = 10 },
            },
            route = {
                { mapID = 1411, x = 0.414, y = 0.59, label = "Scorpid Worker Tail", offMapText = "Travel to Scorpid Worker Tail." },
            },
            sourceStep = 42,
            priority = 470,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-789-sting-of-the-scorpid" },
        },
        {
            id = "objective-4402-1-cactus-apple",
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
            text = "Collect 10 Cactus Apple.",
            complete = {
                questObjective = { id = 4402, index = 1, text = "Cactus Apple", count = 10 },
            },
            route = {
                { mapID = 1411, x = 0.457, y = 0.644, label = "Cactus Apple", offMapText = "Travel to Cactus Apple." },
            },
            sourceStep = 44,
            priority = 480,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4402-galgar-s-cactus-apple-surprise" },
        },
        {
            priority = 490,
            text = "Turn in Galgar's Cactus Apple Surprise to Galgar.",
            route = {
                { y = 0.6724, mapID = 1411, label = "Galgar", offMapText = "Travel to Galgar in Durotar.", x = 0.4273 },
            },
            dependsOn = { "accept-4402-galgar-s-cactus-apple-surprise", "objective-4402-1-cactus-apple" },
            id = "turnin-4402-galgar-s-cactus-apple-surprise",
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
                quest = { id = 4402, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            text = "Turn in Sting of the Scorpid to Gornek.",
            route = {
                { y = 0.6832, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4205 },
            },
            dependsOn = { "accept-789-sting-of-the-scorpid", "objective-789-1-scorpid-worker-tail" },
            id = "turnin-789-sting-of-the-scorpid",
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
                quest = { id = 789, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 788 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            text = "Turn in Vile Familiars to Zureetha Fargaze.",
            route = {
                { y = 0.6915, mapID = 1411, label = "Zureetha Fargaze", offMapText = "Travel to Zureetha Fargaze in Durotar.", x = 0.4285 },
            },
            dependsOn = { "accept-792-vile-familiars", "objective-792-1-vile-familiar" },
            id = "turnin-792-vile-familiars",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1, 2, 3, 4, 5, 7, 8, 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 792, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            route = {
                { y = 0.6915, mapID = 1411, label = "Zureetha Fargaze", offMapText = "Travel to Zureetha Fargaze in Durotar.", x = 0.4285 },
            },
            text = "Accept Burning Blade Medallion from Zureetha Fargaze.",
            id = "accept-794-burning-blade-medallion",
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
                quest = { id = 794, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 792, 1499 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            text = "For Lazy Peons: Use the Foreman's Blackjack on Lazy Peons when they're sleeping. Wake up 5 peons.",
            id = "objective-5441-quest-work",
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
                quest = { id = 5441, state = "complete" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-5441-lazy-peons" },
        },
        {
            priority = 540,
            text = "Turn in Lazy Peons to Foreman Thazz'ril.",
            route = {
                { y = 0.6864, mapID = 1411, label = "Foreman Thazz'ril", offMapText = "Travel to Foreman Thazz'ril in Durotar.", x = 0.4462 },
            },
            dependsOn = { "accept-5441-lazy-peons", "objective-5441-quest-work" },
            id = "turnin-5441-lazy-peons",
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
                quest = { id = 5441, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            route = {
                { y = 0.6864, mapID = 1411, label = "Foreman Thazz'ril", offMapText = "Travel to Foreman Thazz'ril in Durotar.", x = 0.4462 },
            },
            text = "Accept Thazz'ril's Pick from Foreman Thazz'ril.",
            id = "accept-6394-thazz-ril-s-pick",
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
                quest = { id = 6394, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5441 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-6394-1-thazz-ril-s-pick",
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
            text = "Collect 1 Thazz'ril's Pick.",
            complete = {
                questObjective = { id = 6394, index = 1, text = "Thazz'ril's Pick", count = 1 },
            },
            route = {
                { mapID = 1411, x = 0.43729999999999997, y = 0.5379, label = "Thazz'ril's Pick", offMapText = "Travel to Thazz'ril's Pick." },
            },
            sourceStep = 49,
            priority = 560,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5441 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6394-thazz-ril-s-pick" },
        },
        {
            id = "objective-1516-1-felstalker-hoof",
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
                },
            },
            text = "Collect 2 Felstalker Hoof.",
            complete = {
                questObjective = { id = 1516, index = 1, text = "Felstalker Hoof", count = 2 },
            },
            route = {
                { mapID = 1411, x = 0.4534, y = 0.5636, label = "Felstalker Hoof", offMapText = "Travel to Felstalker Hoof." },
            },
            sourceStep = 51,
            priority = 570,
            requiredQuests = {},
            alternativeQuests = { 1519, 92466 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1516-call-of-earth" },
        },
        {
            priority = 580,
            text = "For Burning Blade Medallion: Bring the Burning Blade Medallion to Zureetha Fargaze, outside The Den.",
            id = "objective-794-quest-work",
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
                quest = { id = 794, state = "complete" },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 792, 1499 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-794-burning-blade-medallion" },
        },
        {
            priority = 590,
            text = "Turn in Burning Blade Medallion to Zureetha Fargaze.",
            route = {
                { y = 0.6915, mapID = 1411, label = "Zureetha Fargaze", offMapText = "Travel to Zureetha Fargaze in Durotar.", x = 0.4285 },
            },
            dependsOn = { "accept-794-burning-blade-medallion", "objective-794-quest-work" },
            id = "turnin-794-burning-blade-medallion",
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
                quest = { id = 794, state = "completed" },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 792, 1499 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            route = {
                { y = 0.6915, mapID = 1411, label = "Zureetha Fargaze", offMapText = "Travel to Zureetha Fargaze in Durotar.", x = 0.4285 },
            },
            text = "Accept Report to Sen'jin Village from Zureetha Fargaze.",
            id = "accept-805-report-to-sen-jin-village",
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
                quest = { id = 805, state = "activeOrCompleted" },
            },
            sourceStep = 56,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 794 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5649-in-favor-of-spirituality",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 8 },
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
            checkpointQuest = 5649,
            priority = 610,
        },
        {
            priority = 620,
            route = {
                { y = 0.6881, mapID = 1411, label = "Ken'jai", offMapText = "Travel to Ken'jai in Durotar.", x = 0.4236 },
            },
            text = "Accept In Favor of Spirituality from Ken'jai.",
            id = "accept-5649-in-favor-of-spirituality",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 5649, state = "activeOrCompleted" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 630,
            text = "Turn in Call of Earth to Canaga Earthcaller.",
            route = {
                { y = 0.6917, mapID = 1411, label = "Canaga Earthcaller", offMapText = "Travel to Canaga Earthcaller in Durotar.", x = 0.4241 },
            },
            dependsOn = { "accept-1516-call-of-earth", "objective-1516-1-felstalker-hoof" },
            id = "turnin-1516-call-of-earth",
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
                },
            },
            complete = {
                quest = { id = 1516, state = "completed" },
            },
            sourceStep = 59,
            requiredQuests = {},
            alternativeQuests = { 1519, 92466 },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Call of Earth from Canaga Earthcaller.",
            priority = 640,
            route = {
                { y = 0.6917, mapID = 1411, label = "Canaga Earthcaller", offMapText = "Travel to Canaga Earthcaller in Durotar.", x = 0.4241 },
            },
            dependsOn = { "turnin-1516-call-of-earth" },
            id = "accept-1517-call-of-earth",
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
                },
            },
            complete = {
                quest = { id = 1517, state = "activeOrCompleted" },
            },
            sourceStep = 59,
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
            priority = 650,
            route = {
                { mapID = 1411, x = 0.4403, y = 0.762, label = "Minor Manifestation of Earth", offMapText = "Travel to Minor Manifestation of Earth in Durotar." },
            },
            id = "objective-1517-earth-sapta",
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
                },
            },
            sourceStep = 61,
            useClientPin = false,
            dependsOn = { "accept-1517-call-of-earth" },
            classAction = "objective-1517-earth-sapta",
        },
        {
            priority = 660,
            text = "Turn in Call of Earth to Minor Manifestation of Earth.",
            route = {
                { mapID = 1411, x = 0.4403, y = 0.762, label = "Minor Manifestation of Earth", offMapText = "Travel to Minor Manifestation of Earth in Durotar." },
            },
            dependsOn = { "accept-1517-call-of-earth", "objective-1517-earth-sapta" },
            id = "turnin-1517-call-of-earth",
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
                },
            },
            complete = {
                quest = { id = 1517, state = "completed" },
            },
            sourceStep = 61,
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
            priority = 670,
            route = {
                { mapID = 1411, x = 0.4403, y = 0.762, label = "Minor Manifestation of Earth", offMapText = "Travel to Minor Manifestation of Earth in Durotar." },
            },
            text = "Accept Call of Earth from Minor Manifestation of Earth.",
            id = "accept-1518-call-of-earth",
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
                },
            },
            complete = {
                quest = { id = 1518, state = "activeOrCompleted" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1517 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 680,
            text = "Turn in Call of Earth to Canaga Earthcaller.",
            route = {
                { y = 0.6917, mapID = 1411, label = "Canaga Earthcaller", offMapText = "Travel to Canaga Earthcaller in Durotar.", x = 0.4241 },
            },
            dependsOn = { "accept-1518-call-of-earth" },
            id = "turnin-1518-call-of-earth",
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
                },
            },
            complete = {
                quest = { id = 1518, state = "completed" },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1517 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            text = "Turn in Thazz'ril's Pick to Foreman Thazz'ril.",
            route = {
                { y = 0.6864, mapID = 1411, label = "Foreman Thazz'ril", offMapText = "Travel to Foreman Thazz'ril in Durotar.", x = 0.4462 },
            },
            dependsOn = { "accept-6394-thazz-ril-s-pick", "objective-6394-1-thazz-ril-s-pick" },
            id = "turnin-6394-thazz-ril-s-pick",
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
                quest = { id = 6394, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5441 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 700,
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
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-786-thwarting-kolkar-aggression",
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
            checkpointQuest = 786,
            priority = 710,
        },
        {
            priority = 720,
            route = {
                { y = 0.7329, mapID = 1411, label = "Lar Prowltusk", offMapText = "Travel to Lar Prowltusk in Durotar.", x = 0.5419 },
            },
            text = "Accept Thwarting Kolkar Aggression from Lar Prowltusk.",
            id = "accept-786-thwarting-kolkar-aggression",
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
                quest = { id = 786, state = "activeOrCompleted" },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 730,
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
            sourceStep = 70,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 740,
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
            sourceStep = 71,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 750,
            text = "Turn in Report to Sen'jin Village to Master Gadrin.",
            route = {
                { y = 0.7472, mapID = 1411, label = "Master Gadrin", offMapText = "Travel to Master Gadrin in Durotar.", x = 0.5595 },
            },
            dependsOn = { "accept-805-report-to-sen-jin-village" },
            id = "turnin-805-report-to-sen-jin-village",
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
                quest = { id = 805, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 794 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 760,
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
            sourceStep = 72,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 770,
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
            sourceStep = 72,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 780,
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
            sourceStep = 72,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 790,
            text = "Collect 4 Intact Makrura Eye.",
            route = {
                { y = 0.708, mapID = 1411, label = "Makrura Clacker", offMapText = "Travel to Makrura Clacker.", x = 0.602 },
            },
            dependsOn = { "accept-818-a-solvent-spirit" },
            id = "objective-818-1-makrura-clacker",
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
                questObjective = { id = 818, text = "Makrura Clacker", index = 1, count = 4 },
            },
            sourceStep = 73,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
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
            sourceStep = 74,
            priority = 800,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-818-a-solvent-spirit" },
        },
        {
            priority = 810,
            text = "Turn in A Solvent Spirit to Master Vornal.",
            route = {
                { y = 0.7439, mapID = 1411, label = "Master Vornal", offMapText = "Travel to Master Vornal in Durotar.", x = 0.5594 },
            },
            dependsOn = { "accept-818-a-solvent-spirit", "objective-818-1-makrura-clacker", "objective-818-2-crawler-mucus" },
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
            sourceStep = 80,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 820,
            text = "Open and destroy the Attack Plan: Valley of Trials in Kolkar Crag.",
            id = "objective-786-1-authored-Valley-of-Trials-plan",
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
                questObjective = { id = 786, index = 1, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            route = {
                { mapID = 1411, x = 0.4982, y = 0.8128, label = "Valley-of-Trials-plan", offMapText = "Travel to Valley-of-Trials-plan." },
            },
        },
        {
            priority = 830,
            text = "Open and destroy the Attack Plan: Sen'jin Village in Kolkar Crag.",
            id = "objective-786-2-authored-Senjin-plan",
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
                questObjective = { id = 786, index = 2, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            route = {
                { mapID = 1411, x = 0.47659999999999997, y = 0.7734000000000001, label = "Senjin-plan", offMapText = "Travel to Senjin-plan." },
            },
        },
        {
            priority = 840,
            text = "Open and destroy the Attack Plan: Orgrimmar in Kolkar Crag.",
            id = "objective-786-3-authored-Orgrimmar-plan",
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
                questObjective = { id = 786, index = 3, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            route = {
                { mapID = 1411, x = 0.4623, y = 0.7895, label = "Orgrimmar-plan", offMapText = "Travel to Orgrimmar-plan." },
            },
        },
        {
            priority = 850,
            text = "Turn in Thwarting Kolkar Aggression to Lar Prowltusk.",
            route = {
                { y = 0.7329, mapID = 1411, label = "Lar Prowltusk", offMapText = "Travel to Lar Prowltusk in Durotar.", x = 0.5419 },
            },
            dependsOn = {
                "accept-786-thwarting-kolkar-aggression",
                "objective-786-1-authored-Valley-of-Trials-plan",
                "objective-786-2-authored-Senjin-plan",
                "objective-786-3-authored-Orgrimmar-plan",
            },
            id = "turnin-786-thwarting-kolkar-aggression",
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
                quest = { id = 786, state = "completed" },
            },
            sourceStep = 81,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 860,
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
            sourceStep = 82,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-806-dark-storms",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1, 7 },
                    },
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
            checkpointQuest = 806,
            priority = 870,
        },
        {
            priority = 880,
            route = {
                { y = 0.4315, mapID = 1411, label = "Orgnil Soulscar", offMapText = "Travel to Orgnil Soulscar in Durotar.", x = 0.5225 },
            },
            text = "Accept Dark Storms from Orgnil Soulscar.",
            id = "accept-806-dark-storms",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1, 7 },
                    },
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
                quest = { id = 806, state = "activeOrCompleted" },
            },
            sourceStep = 82,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 823 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 890,
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
            sourceStep = 83,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-837-encroachment",
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
            checkpointQuest = 837,
            priority = 900,
        },
        {
            priority = 910,
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
            sourceStep = 83,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 920,
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
            sourceStep = 84,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 930,
            route = {
                { mapID = 1411, x = 0.4989, y = 0.40380000000000005, label = "Furl Scornbrow", offMapText = "Travel to Furl Scornbrow in Durotar." },
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
            sourceStep = 85,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 940,
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
            sourceStep = 86,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 950,
            text = "Turn in In Favor of Spirituality to Tai'jin.",
            route = {
                { y = 0.4293, mapID = 1411, label = "Tai'jin", offMapText = "Travel to Tai'jin in Durotar.", x = 0.5426 },
            },
            dependsOn = { "accept-5649-in-favor-of-spirituality" },
            id = "turnin-5649-in-favor-of-spirituality",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 5649, state = "completed" },
            },
            sourceStep = 91,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 960,
            route = {
                { y = 0.4293, mapID = 1411, label = "Tai'jin", offMapText = "Travel to Tai'jin in Durotar.", x = 0.5426 },
            },
            text = "Accept Garments of Spirituality from Tai'jin.",
            id = "accept-5648-garments-of-spirituality",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 5648, state = "activeOrCompleted" },
            },
            sourceStep = 91,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 970,
            id = "objective-5648-quest-work",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            sourceStep = 93,
            useClientPin = true,
            dependsOn = { "accept-5648-garments-of-spirituality" },
            classAction = "objective-5648-quest-work",
        },
        {
            priority = 980,
            text = "Turn in Garments of Spirituality to Tai'jin.",
            route = {
                { y = 0.4293, mapID = 1411, label = "Tai'jin", offMapText = "Travel to Tai'jin in Durotar.", x = 0.5426 },
            },
            dependsOn = { "accept-5648-garments-of-spirituality", "objective-5648-quest-work" },
            id = "turnin-5648-garments-of-spirituality",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 5648, state = "completed" },
            },
            sourceStep = 93,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 990,
            text = "Kill Lieutenant Benedict.",
            route = {
                { y = 0.583, mapID = 1411, label = "Lieutenant Benedict", offMapText = "Travel to Lieutenant Benedict.", x = 0.5899 },
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
            sourceStep = 94,
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
            priority = 1000,
        },
        {
            priority = 1010,
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
            sourceStep = 96,
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
            sourceStep = 97,
            priority = 1020,
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
            sourceStep = 98,
            priority = 1030,
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
            sourceStep = 98,
            priority = 1040,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-784-vanquish-the-betrayers" },
        },
        {
            priority = 1050,
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
            sourceStep = 104,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1060,
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            text = "Accept From The Wreckage.... from Gar'Thok.",
            id = "accept-825-from-the-wreckage",
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
                quest = { id = 825, state = "activeOrCompleted" },
            },
            sourceStep = 104,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 784 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1070,
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
            sourceStep = 104,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1080,
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
            sourceStep = 104,
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
            priority = 1090,
            text = "Turn in Carry Your Weight to Furl Scornbrow.",
            route = {
                { mapID = 1411, x = 0.4989, y = 0.40380000000000005, label = "Furl Scornbrow", offMapText = "Travel to Furl Scornbrow in Durotar." },
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
            sourceStep = 105,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1100,
            text = "Collect 3 Gnomish Tools.",
            route = {
                { y = 0.562, mapID = 1411, label = "Gnomish Tools", offMapText = "Travel to Gnomish Tools.", x = 0.614 },
            },
            dependsOn = { "accept-825-from-the-wreckage" },
            id = "objective-825-1-gnomish-tools",
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
                questObjective = { id = 825, text = "Gnomish Tools", index = 1, count = 3 },
            },
            sourceStep = 114,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 784 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1110,
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
            sourceStep = 115,
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
            sourceStep = 116,
            priority = 1120,
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
            sourceStep = 117,
            priority = 1130,
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
            sourceStep = 118,
            priority = 1140,
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
            sourceStep = 119,
            priority = 1150,
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
            sourceStep = 120,
            priority = 1160,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-817-practical-prey" },
        },
        {
            priority = 1170,
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
            sourceStep = 126,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1180,
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
            sourceStep = 126,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1190,
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
            sourceStep = 128,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1200,
            text = "Turn in From The Wreckage.... to Gar'Thok.",
            route = {
                { y = 0.435, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok in Durotar.", x = 0.5195 },
            },
            dependsOn = { "accept-825-from-the-wreckage", "objective-825-1-gnomish-tools" },
            id = "turnin-825-from-the-wreckage",
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
                quest = { id = 825, state = "completed" },
            },
            sourceStep = 129,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 784 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1210,
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
            sourceStep = 130,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1220,
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
            sourceStep = 131,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1230,
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
            sourceStep = 131,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1240,
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
            sourceStep = 132,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1250,
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
            sourceStep = 132,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1260,
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
            sourceStep = 136,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5654-hex-of-weakness",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 8 },
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
            checkpointQuest = 5654,
            alternativeQuests = { 5652, 5655, 5656, 5657 },
            priority = 1270,
        },
        {
            priority = 1280,
            route = {
                { y = 0.4293, mapID = 1411, label = "Tai'jin", offMapText = "Travel to Tai'jin in Durotar.", x = 0.5426 },
            },
            text = "Accept Hex of Weakness from Tai'jin.",
            id = "accept-5654-hex-of-weakness",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 5654, state = "activeOrCompleted" },
            },
            sourceStep = 138,
            requiredQuests = {},
            alternativeQuests = { 5652, 5655, 5656, 5657 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-6062-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 8 },
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
            checkpointQuest = 6062,
            priority = 1290,
        },
        {
            priority = 1300,
            route = {
                { y = 0.4349, mapID = 1411, label = "Thotar", offMapText = "Travel to Thotar in Durotar.", x = 0.5185 },
            },
            text = "Accept Taming the Beast from Thotar.",
            id = "accept-6062-taming-the-beast",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6062, state = "activeOrCompleted" },
            },
            sourceStep = 145,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-6062-1-taming-rod",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 8 },
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
            checkpointQuest = 6062,
            priority = 1310,
        },
        {
            priority = 1320,
            text = "Use Taming Rod.",
            route = {
                { y = 0.48, mapID = 1411, label = "Taming Rod", offMapText = "Travel to Taming Rod.", x = 0.514 },
            },
            dependsOn = { "accept-6062-taming-the-beast" },
            id = "objective-6062-1-taming-rod",
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
                    {
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6062, text = "Taming Rod", index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1330,
            text = "Turn in Taming the Beast to Thotar.",
            route = {
                { y = 0.4349, mapID = 1411, label = "Thotar", offMapText = "Travel to Thotar in Durotar.", x = 0.5185 },
            },
            dependsOn = { "accept-6062-taming-the-beast", "objective-6062-1-taming-rod" },
            id = "turnin-6062-taming-the-beast",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6062, state = "completed" },
            },
            sourceStep = 147,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1340,
            route = {
                { y = 0.4349, mapID = 1411, label = "Thotar", offMapText = "Travel to Thotar in Durotar.", x = 0.5185 },
            },
            text = "Accept Taming the Beast from Thotar.",
            id = "accept-6083-taming-the-beast",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6083, state = "activeOrCompleted" },
            },
            sourceStep = 147,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1350,
            text = "Use Taming Rod.",
            route = {
                { y = 0.28, mapID = 1411, label = "Taming Rod", offMapText = "Travel to Taming Rod.", x = 0.578 },
            },
            dependsOn = { "accept-6083-taming-the-beast" },
            id = "objective-6083-1-taming-rod",
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
                    {
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6083, text = "Taming Rod", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1360,
            text = "Turn in Taming the Beast to Thotar.",
            route = {
                { y = 0.4349, mapID = 1411, label = "Thotar", offMapText = "Travel to Thotar in Durotar.", x = 0.5185 },
            },
            dependsOn = { "accept-6083-taming-the-beast", "objective-6083-1-taming-rod" },
            id = "turnin-6083-taming-the-beast",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6083, state = "completed" },
            },
            sourceStep = 149,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1370,
            route = {
                { y = 0.4349, mapID = 1411, label = "Thotar", offMapText = "Travel to Thotar in Durotar.", x = 0.5185 },
            },
            text = "Accept Taming the Beast from Thotar.",
            id = "accept-6082-taming-the-beast",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6082, state = "activeOrCompleted" },
            },
            sourceStep = 149,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6083 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1380,
            text = "Use Taming Rod.",
            route = {
                { y = 0.382, mapID = 1411, label = "Taming Rod", offMapText = "Travel to Taming Rod.", x = 0.55 },
            },
            dependsOn = { "accept-6082-taming-the-beast" },
            id = "objective-6082-1-taming-rod",
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
                    {
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6082, text = "Taming Rod", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6083 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1390,
            text = "Turn in Taming the Beast to Thotar.",
            route = {
                { y = 0.4349, mapID = 1411, label = "Thotar", offMapText = "Travel to Thotar in Durotar.", x = 0.5185 },
            },
            dependsOn = { "accept-6082-taming-the-beast", "objective-6082-1-taming-rod" },
            id = "turnin-6082-taming-the-beast",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6082, state = "completed" },
            },
            sourceStep = 151,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6083 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1400,
            route = {
                { y = 0.4349, mapID = 1411, label = "Thotar", offMapText = "Travel to Thotar in Durotar.", x = 0.5185 },
            },
            text = "Accept Training the Beast from Thotar.",
            id = "accept-6081-training-the-beast",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6081, state = "activeOrCompleted" },
            },
            sourceStep = 151,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6082 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-812-need-for-a-cure",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
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
            checkpointQuest = 812,
            priority = 1410,
        },
        {
            priority = 1420,
            route = {
                { y = 0.1861, mapID = 1411, label = "Rhinag", offMapText = "Travel to Rhinag in Durotar.", x = 0.4155 },
            },
            text = "Accept Need for a Cure from Rhinag.",
            id = "accept-812-need-for-a-cure",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
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
            sourceStep = 153,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1430,
            text = "Turn in The Admiral's Orders to Nazgrel.",
            route = {
                { y = 0.358, mapID = 1454, label = "Nazgrel", offMapText = "Travel to Nazgrel in Orgrimmar.", x = 0.3227 },
            },
            dependsOn = { "accept-831-the-admiral-s-orders" },
            id = "turnin-831-the-admiral-s-orders",
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
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 831, state = "completed" },
            },
            sourceStep = 155,
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
            priority = 1440,
            route = {
                { y = 0.5358, mapID = 1454, label = "Kor'ghan", offMapText = "Travel to Kor'ghan in Orgrimmar.", x = 0.4724 },
            },
            text = "Accept Finding the Antidote from Kor'ghan.",
            id = "accept-813-finding-the-antidote",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 3 },
                    },
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
            sourceStep = 156,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1450,
            text = "Turn in Training the Beast to Ormak Grimshot.",
            route = {
                { y = 0.1854, mapID = 1454, label = "Ormak Grimshot", offMapText = "Travel to Ormak Grimshot in Orgrimmar.", x = 0.6605 },
            },
            dependsOn = { "accept-6081-training-the-beast" },
            id = "turnin-6081-training-the-beast",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 6081, state = "completed" },
            },
            sourceStep = 158,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6082 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-2983-call-of-fire",
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
            checkpointQuest = 2983,
            alternativeQuests = { 1522, 1523, 2984 },
            priority = 1460,
        },
        {
            priority = 1470,
            route = {
                { y = 0.4259, mapID = 1411, label = "Swart", offMapText = "Travel to Swart in Durotar.", x = 0.5442 },
            },
            text = "Accept Call of Fire from Swart.",
            id = "accept-2983-call-of-fire",
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
                quest = { id = 2983, state = "activeOrCompleted" },
            },
            sourceStep = 163,
            requiredQuests = {},
            alternativeQuests = { 1522, 1523, 2984 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1480,
            text = "Turn in Call of Fire to Kranal Fiss.",
            route = {
                { y = 0.1989, mapID = 1413, label = "Kranal Fiss", offMapText = "Travel to Kranal Fiss in The Barrens.", x = 0.5603 },
            },
            dependsOn = { "accept-2983-call-of-fire" },
            id = "turnin-2983-call-of-fire",
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
                quest = { id = 2983, state = "completed" },
            },
            sourceStep = 164,
            requiredQuests = {},
            alternativeQuests = { 1522, 1523, 2984 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1490,
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
            sourceStep = 164,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1500,
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
            sourceStep = 165,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1510,
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
            sourceStep = 165,
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
            priority = 1520,
            text = "Collect 1 Fire Tar.",
            route = {
                { y = 0.254, mapID = 1413, label = "Razormane Geomancer", offMapText = "Travel to Razormane Geomancer.", x = 0.556 },
            },
            dependsOn = { "accept-1525-call-of-fire" },
            id = "objective-1525-1-razormane-geomancer",
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
                questObjective = { id = 1525, text = "Razormane Geomancer", index = 1, count = 1 },
            },
            sourceStep = 166,
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
            priority = 1530,
        },
        {
            priority = 1540,
            route = {
                { mapID = 1411, x = 0.4637, y = 0.22940000000000002, label = "Rezlak", offMapText = "Travel to Rezlak in Durotar." },
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
            sourceStep = 168,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1550,
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
            sourceStep = 169,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1560,
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
            sourceStep = 170,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1570,
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
            sourceStep = 170,
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
            priority = 1580,
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
            sourceStep = 174,
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
            priority = 1590,
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
            sourceStep = 174,
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
            priority = 1600,
        },
        {
            priority = 1610,
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
            sourceStep = 175,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1620,
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
            sourceStep = 176,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1630,
            text = "Turn in Call of Fire to Telf Joolam.",
            route = {
                { mapID = 1411, x = 0.38549999999999995, y = 0.5896, label = "Telf Joolam", offMapText = "Travel to Telf Joolam in Durotar." },
            },
            dependsOn = { "accept-1525-call-of-fire", "objective-1525-1-razormane-geomancer" },
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
            sourceStep = 177,
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
            priority = 1640,
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
            sourceStep = 177,
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
            priority = 1650,
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
            sourceStep = 179,
            useClientPin = false,
            classAction = "objective-1526-call-of-fire",
        },
        {
            priority = 1660,
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
            sourceStep = 180,
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
            priority = 1670,
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
            sourceStep = 180,
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
            priority = 1680,
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
            sourceStep = 181,
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
            priority = 1690,
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
            sourceStep = 183,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-812-need-for-a-cure-2",
            kind = "note",
            text = "Reach level 7 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1, 2, 4, 5, 7, 8, 9, 11 },
                    },
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
            checkpointQuest = 812,
            priority = 1700,
        },
        {
            id = "accept-812-need-for-a-cure-2",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1, 2, 4, 5, 7, 8, 9, 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 7 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Accept Need for a Cure from Rhinag.",
            complete = {
                quest = { id = 812, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 1411, x = 0.4155, y = 0.1861, label = "Rhinag", offMapText = "Travel to Rhinag in Durotar." },
            },
            sourceStep = 184,
            priority = 1710,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-806-1-fizzle-s-claw",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        any = {
                            { class = 1 },
                            { class = 7 },
                        },
                    },
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
            checkpointQuest = 806,
            priority = 1720,
        },
        {
            priority = 1730,
            text = "Collect Fizzle's Claw from Fizzle Darkstorm on Thunder Ridge.",
            route = {
                { y = 0.266, mapID = 1411, label = "Fizzle Darkstorm", offMapText = "Travel to Fizzle Darkstorm.", x = 0.42 },
            },
            dependsOn = { "accept-806-dark-storms" },
            id = "objective-806-1-fizzle-s-claw",
            kind = "objective",
            conditions = {
                all = {
                    {
                        any = {
                            { class = 1 },
                            { class = 7 },
                        },
                    },
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
                questObjective = { id = 806, text = "Fizzle's Claw", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 823 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1740,
            text = "Turn in Dark Storms.",
            route = {
                { y = 0.4315, mapID = 1411, label = "Dark Storms", offMapText = "Travel to Dark Storms.", x = 0.5225 },
            },
            dependsOn = { "accept-806-dark-storms", "objective-806-1-fizzle-s-claw" },
            id = "turnin-806-dark-storms",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        any = {
                            { class = 1 },
                            { class = 7 },
                        },
                    },
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
                quest = { id = 806, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 823 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1750,
            text = "Turn in Hex of Weakness to Ur'kyo.",
            route = {
                { y = 0.878, mapID = 1454, label = "Ur'kyo", offMapText = "Travel to Ur'kyo in Orgrimmar.", x = 0.3559 },
            },
            dependsOn = { "accept-5654-hex-of-weakness" },
            id = "turnin-5654-hex-of-weakness",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 5654, state = "completed" },
            },
            sourceStep = 186,
            requiredQuests = {},
            alternativeQuests = { 5652, 5655, 5656, 5657 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1760,
            text = "Turn in The Admiral's Orders to Nazgrel.",
            route = {
                { y = 0.358, mapID = 1454, label = "Nazgrel", offMapText = "Travel to Nazgrel in Orgrimmar.", x = 0.3227 },
            },
            dependsOn = { "accept-831-the-admiral-s-orders" },
            id = "turnin-831-the-admiral-s-orders-2",
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
            sourceStep = 187,
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
            id = "accept-813-finding-the-antidote-2",
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
            text = "Accept Finding the Antidote from Kor'ghan.",
            complete = {
                quest = { id = 813, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 1454, x = 0.47240000000000004, y = 0.5357999999999999, label = "Kor'ghan", offMapText = "Travel to Kor'ghan in Orgrimmar." },
            },
            sourceStep = 188,
            priority = 1770,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1780,
            text = "Collect 4 Venomtail Poison Sac.",
            route = {
                { mapID = 1411, x = 0.434, y = 0.166, label = "Venomtail Poison Sac", offMapText = "Travel to Venomtail Poison Sac." },
            },
            dependsOn = { "accept-813-finding-the-antidote", "accept-813-finding-the-antidote-2" },
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
            sourceStep = 190,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1790,
            text = "Turn in Finding the Antidote to Kor'ghan.",
            route = {
                { y = 0.5359, mapID = 1454, label = "Kor'ghan", offMapText = "Travel to Kor'ghan in Orgrimmar.", x = 0.4724 },
            },
            dependsOn = { "accept-813-finding-the-antidote-2", "objective-813-1-venomtail-scorpid", "accept-813-finding-the-antidote" },
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
            sourceStep = 191,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "accept-812-need-for-a-cure-3",
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
            text = "Accept Need for a Cure from Rhinag.",
            complete = {
                quest = { id = 812, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 1411, x = 0.4155, y = 0.1861, label = "Rhinag", offMapText = "Travel to Rhinag in Durotar." },
            },
            sourceStep = 192,
            priority = 1800,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1810,
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
            sourceStep = 193,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-812-need-for-a-cure-3", "accept-812-need-for-a-cure", "accept-812-need-for-a-cure-2" },
        },
        {
            priority = 1820,
            text = "Turn in Need for a Cure to Rhinag.",
            route = {
                { y = 0.1861, mapID = 1411, label = "Rhinag", offMapText = "Travel to Rhinag in Durotar.", x = 0.4155 },
            },
            dependsOn = {
                "accept-812-need-for-a-cure-3",
                "objective-812-quest-work",
                "accept-812-need-for-a-cure",
                "accept-812-need-for-a-cure-2",
            },
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
            sourceStep = 193,
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
            priority = 1830,
        },
        {
            priority = 1840,
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
            sourceStep = 206,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1850,
            route = {
                { y = 0.5229, mapID = 1420, label = "Coleman Farthing", offMapText = "Travel to Coleman Farthing in Tirisfal Glades.", x = 0.6172 },
            },
            text = "Accept Deaths in the Family from Coleman Farthing.",
            id = "accept-354-deaths-in-the-family",
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
                quest = { id = 354, state = "activeOrCompleted" },
            },
            sourceStep = 207,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1860,
            route = {
                { y = 0.5229, mapID = 1420, label = "Coleman Farthing", offMapText = "Travel to Coleman Farthing in Tirisfal Glades.", x = 0.6172 },
            },
            text = "Accept The Haunted Mills from Coleman Farthing.",
            id = "accept-362-the-haunted-mills",
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
                quest = { id = 362, state = "activeOrCompleted" },
            },
            sourceStep = 207,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1881-speak-with-anastasia",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 5, 8 },
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
            checkpointQuest = 1881,
            alternativeQuests = { 1884 },
            priority = 1870,
        },
        {
            priority = 1880,
            route = {
                { y = 0.5247, mapID = 1420, label = "Cain Firesong", offMapText = "Travel to Cain Firesong in Tirisfal Glades.", x = 0.6197 },
            },
            text = "Accept Speak with Anastasia from Cain Firesong.",
            id = "accept-1881-speak-with-anastasia",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 1881, state = "activeOrCompleted" },
            },
            sourceStep = 208,
            requiredQuests = {},
            alternativeQuests = { 1884 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1890,
            route = {
                { y = 0.5273, mapID = 1420, label = "Gretchen Dedmar", offMapText = "Travel to Gretchen Dedmar in Tirisfal Glades.", x = 0.6189 },
            },
            text = "Accept The Chill of Death from Gretchen Dedmar.",
            id = "accept-375-the-chill-of-death",
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
                quest = { id = 375, state = "activeOrCompleted" },
            },
            sourceStep = 209,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1478-halgar-s-summons",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
            checkpointQuest = 1478,
            priority = 1900,
        },
        {
            priority = 1910,
            route = {
                { y = 0.5268, mapID = 1420, label = "Ageron Kargal", offMapText = "Travel to Ageron Kargal in Tirisfal Glades.", x = 0.6162 },
            },
            text = "Accept Halgar's Summons from Ageron Kargal.",
            id = "accept-1478-halgar-s-summons",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
                quest = { id = 1478, state = "activeOrCompleted" },
            },
            sourceStep = 210,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1920,
            route = {
                { y = 0.5084, mapID = 1420, label = "Magistrate Sevren", offMapText = "Travel to Magistrate Sevren in Tirisfal Glades.", x = 0.6126 },
            },
            text = "Accept Graverobbers from Magistrate Sevren.",
            id = "accept-358-graverobbers",
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
                quest = { id = 358, state = "activeOrCompleted" },
            },
            sourceStep = 211,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1930,
            route = {
                { y = 0.5152, mapID = 1420, label = "Wanted: Maggot Eye", offMapText = "Travel to Wanted: Maggot Eye.", x = 0.6073 },
            },
            text = "Accept Wanted: Maggot Eye.",
            id = "accept-398-wanted-maggot-eye",
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
                quest = { id = 398, state = "activeOrCompleted" },
            },
            sourceStep = 212,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1940,
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            text = "Accept A New Plague from Apothecary Johaan.",
            id = "accept-367-a-new-plague",
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
                quest = { id = 367, state = "activeOrCompleted" },
            },
            sourceStep = 213,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1950,
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
            sourceStep = 214,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1960,
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
            sourceStep = 214,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1970,
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
            sourceStep = 215,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1980,
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
            sourceStep = 216,
            requiredQuests = {},
            alternativeQuests = { 1498 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1990,
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
            sourceStep = 216,
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
            priority = 2000,
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
            sourceStep = 217,
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
            priority = 2010,
            text = "Turn in Halgar's Summons to Carendin Halgar.",
            route = {
                { y = 0.2601, mapID = 1458, label = "Carendin Halgar", offMapText = "Travel to Carendin Halgar in Undercity.", x = 0.8504 },
            },
            dependsOn = { "accept-1478-halgar-s-summons" },
            id = "turnin-1478-halgar-s-summons",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
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
                quest = { id = 1478, state = "completed" },
            },
            sourceStep = 220,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1473-creature-of-the-void",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 5 },
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
            checkpointQuest = 1473,
            priority = 2020,
        },
        {
            priority = 2030,
            route = {
                { y = 0.2601, mapID = 1458, label = "Carendin Halgar", offMapText = "Travel to Carendin Halgar in Undercity.", x = 0.8504 },
            },
            text = "Accept Creature of the Void from Carendin Halgar.",
            id = "accept-1473-creature-of-the-void",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1473, state = "activeOrCompleted" },
            },
            sourceStep = 220,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1473-1-egalin-s-grimoire",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            text = "Collect 1 Egalin's Grimoire.",
            complete = {
                questObjective = { id = 1473, index = 1, text = "Egalin's Grimoire", count = 1 },
            },
            route = {
                { mapID = 1420, x = 0.5106, y = 0.6757, label = "Egalin's Grimoire", offMapText = "Travel to Egalin's Grimoire." },
            },
            sourceStep = 221,
            priority = 2040,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1473-creature-of-the-void" },
        },
        {
            priority = 2050,
            text = "Turn in Creature of the Void to Carendin Halgar.",
            route = {
                { y = 0.2601, mapID = 1458, label = "Carendin Halgar", offMapText = "Travel to Carendin Halgar in Undercity.", x = 0.8504 },
            },
            dependsOn = { "accept-1473-creature-of-the-void", "objective-1473-1-egalin-s-grimoire" },
            id = "turnin-1473-creature-of-the-void",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1473, state = "completed" },
            },
            sourceStep = 222,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2060,
            route = {
                { y = 0.2601, mapID = 1458, label = "Carendin Halgar", offMapText = "Travel to Carendin Halgar in Undercity.", x = 0.8504 },
            },
            text = "Accept The Binding from Carendin Halgar.",
            id = "accept-1471-the-binding",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1471, state = "activeOrCompleted" },
            },
            sourceStep = 222,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1473 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2070,
            text = "Kill Summoned Voidwalker.",
            route = {
                { y = 0.271, mapID = 1458, label = "Runes of Summoning", offMapText = "Travel to Runes of Summoning.", x = 0.8662 },
            },
            dependsOn = { "accept-1471-the-binding" },
            id = "objective-1471-1-runes-of-summoning",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1471, text = "Runes of Summoning", index = 1 },
            },
            sourceStep = 223,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1473 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2080,
            text = "Turn in The Binding to Carendin Halgar.",
            route = {
                { y = 0.2601, mapID = 1458, label = "Carendin Halgar", offMapText = "Travel to Carendin Halgar in Undercity.", x = 0.8504 },
            },
            dependsOn = { "accept-1471-the-binding", "objective-1471-1-runes-of-summoning" },
            id = "turnin-1471-the-binding",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 1471, state = "completed" },
            },
            sourceStep = 224,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1473 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2090,
            text = "Turn in Speak with Anastasia to Anastasia Hartwell.",
            route = {
                { y = 0.1003, mapID = 1458, label = "Anastasia Hartwell", offMapText = "Travel to Anastasia Hartwell in Undercity.", x = 0.8514 },
            },
            dependsOn = { "accept-1881-speak-with-anastasia" },
            id = "turnin-1881-speak-with-anastasia",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 1881, state = "completed" },
            },
            sourceStep = 225,
            requiredQuests = {},
            alternativeQuests = { 1884 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2100,
            route = {
                { y = 0.1003, mapID = 1458, label = "Anastasia Hartwell", offMapText = "Travel to Anastasia Hartwell in Undercity.", x = 0.8514 },
            },
            text = "Accept The Balnir Farmstead from Anastasia Hartwell.",
            id = "accept-1882-the-balnir-farmstead",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 1882, state = "activeOrCompleted" },
            },
            sourceStep = 225,
            requiredQuests = {},
            alternativeQuests = { 1884 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2110,
            text = "Collect 5 Duskbat Pelt.",
            route = {
                { y = 0.614, mapID = 1420, label = "Vampiric Duskbat", offMapText = "Travel to Vampiric Duskbat.", x = 0.512 },
            },
            dependsOn = { "accept-375-the-chill-of-death" },
            id = "objective-375-1-vampiric-duskbat",
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
                questObjective = { id = 375, text = "Vampiric Duskbat", index = 1, count = 5 },
            },
            sourceStep = 226,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-367-1-darkhound-blood",
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
            text = "Collect 5 Darkhound Blood.",
            complete = {
                questObjective = { id = 367, index = 1, text = "Darkhound Blood", count = 5 },
            },
            sourceStep = 227,
            priority = 2120,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-367-a-new-plague" },
        },
        {
            priority = 2130,
            text = "Turn in A New Plague to Apothecary Johaan.",
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            dependsOn = { "accept-367-a-new-plague", "objective-367-1-darkhound-blood" },
            id = "turnin-367-a-new-plague",
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
                quest = { id = 367, state = "completed" },
            },
            sourceStep = 228,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2140,
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            text = "Accept A New Plague from Apothecary Johaan.",
            id = "accept-368-a-new-plague",
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
                quest = { id = 368, state = "activeOrCompleted" },
            },
            sourceStep = 228,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 367 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2150,
            text = "Turn in The Chill of Death to Gretchen Dedmar.",
            route = {
                { y = 0.5273, mapID = 1420, label = "Gretchen Dedmar", offMapText = "Travel to Gretchen Dedmar in Tirisfal Glades.", x = 0.6189 },
            },
            dependsOn = { "accept-375-the-chill-of-death", "objective-375-1-vampiric-duskbat" },
            id = "turnin-375-the-chill-of-death",
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
                quest = { id = 375, state = "completed" },
            },
            sourceStep = 230,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2160,
            text = "Collect 1 Devlin's Remains.",
            route = {
                { y = 0.416, mapID = 1420, label = "Devlin Agamand", offMapText = "Travel to Devlin Agamand.", x = 0.474 },
            },
            dependsOn = { "accept-362-the-haunted-mills" },
            id = "objective-362-1-devlin-agamand",
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
                questObjective = { id = 362, text = "Devlin Agamand", index = 1, count = 1 },
            },
            sourceStep = 231,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2170,
            text = "Collect 1 Nissa's Remains.",
            route = {
                { y = 0.3602, mapID = 1420, label = "Nissa Agamand", offMapText = "Travel to Nissa Agamand.", x = 0.4954 },
            },
            dependsOn = { "accept-354-deaths-in-the-family" },
            id = "objective-354-2-nissa-agamand",
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
                questObjective = { id = 354, text = "Nissa Agamand", index = 2, count = 1 },
            },
            sourceStep = 232,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2180,
            text = "Collect 1 Gregor's Remains.",
            route = {
                { y = 0.306, mapID = 1420, label = "Gregor Agamand", offMapText = "Travel to Gregor Agamand.", x = 0.464 },
            },
            dependsOn = { "accept-354-deaths-in-the-family" },
            id = "objective-354-1-gregor-agamand",
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
                questObjective = { id = 354, text = "Gregor Agamand", index = 1, count = 1 },
            },
            sourceStep = 233,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2190,
            text = "Collect 1 Thurman's Remains.",
            route = {
                { y = 0.342, mapID = 1420, label = "Thurman Agamand", offMapText = "Travel to Thurman Agamand.", x = 0.434 },
            },
            dependsOn = { "accept-354-deaths-in-the-family" },
            id = "objective-354-3-thurman-agamand",
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
                questObjective = { id = 354, text = "Thurman Agamand", index = 3, count = 1 },
            },
            sourceStep = 234,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "loot-starter-before-accept-361-a-letter-undelivered",
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
            text = "Loot A Letter to Yvette from Darkeye Bonecaster, Cracked Skull Soldier, Shadowvale Mystic. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "A Letter to Yvette", minCount = 1 },
                    },
                    {
                        quest = { id = 361, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1420, x = 0.08650000000000001, y = 0.5952000000000001, label = "Darkeye Bonecaster", offMapText = "Travel to Darkeye Bonecaster." },
            },
            dependsOn = {},
            priority = 2200,
        },
        {
            priority = 2210,
            text = "Use the A Letter to Yvette to accept A Letter Undelivered.",
            id = "accept-361-a-letter-undelivered",
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
                quest = { id = 361, state = "activeOrCompleted" },
            },
            sourceStep = 235,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2220,
            text = "Collect 1 Maggot Eye's Paw.",
            route = {
                { mapID = 1420, x = 0.5866, y = 0.30760000000000004, label = "Maggot Eye's Paw", offMapText = "Travel to Maggot Eye's Paw." },
            },
            dependsOn = { "accept-398-wanted-maggot-eye" },
            id = "objective-398-1-maggot-eye",
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
                questObjective = { id = 398, text = "Maggot Eye", index = 1, count = 1 },
            },
            sourceStep = 236,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2230,
            text = "Collect 5 Vile Fin Scale.",
            route = {
                { y = 0.288, mapID = 1420, label = "Vile Fin Puddlejumper", offMapText = "Travel to Vile Fin Puddlejumper.", x = 0.624 },
            },
            dependsOn = { "accept-368-a-new-plague" },
            id = "objective-368-1-vile-fin-puddlejumper",
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
                questObjective = { id = 368, text = "Vile Fin Puddlejumper", index = 1, count = 5 },
            },
            sourceStep = 237,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 367 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-358-2-rot-hide-mongrel",
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
            text = "Kill 5 Rot Hide Mongrel.",
            complete = {
                questObjective = { id = 358, index = 2, text = "Rot Hide Mongrel", count = 5 },
            },
            route = {
                { mapID = 1420, x = 0.594, y = 0.336, label = "Rot Hide Mongrel", offMapText = "Travel to Rot Hide Mongrel." },
            },
            sourceStep = 238,
            priority = 2240,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-358-graverobbers" },
        },
        {
            priority = 2250,
            text = "Kill 8 Rot Hide Graverobber.",
            route = {
                { y = 0.4234, mapID = 1420, label = "Rot Hide Graverobber", offMapText = "Travel to Rot Hide Graverobber.", x = 0.5537 },
            },
            dependsOn = { "accept-358-graverobbers" },
            id = "objective-358-1-rot-hide-graverobber",
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
                questObjective = { id = 358, text = "Rot Hide Graverobber", index = 1, count = 8 },
            },
            sourceStep = 239,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-358-3-embalming-ichor",
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
            text = "Collect 8 Embalming Ichor.",
            complete = {
                questObjective = { id = 358, index = 3, text = "Embalming Ichor", count = 8 },
            },
            route = {
                { mapID = 1420, x = 0.5820000000000001, y = 0.41200000000000003, label = "Embalming Ichor", offMapText = "Travel to Embalming Ichor." },
            },
            sourceStep = 240,
            priority = 2260,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-358-graverobbers" },
        },
        {
            priority = 2270,
            text = "Turn in A Letter Undelivered to Yvette Farthing.",
            route = {
                { y = 0.526, mapID = 1420, label = "Yvette Farthing", offMapText = "Travel to Yvette Farthing in Tirisfal Glades.", x = 0.6158 },
            },
            dependsOn = { "accept-361-a-letter-undelivered" },
            id = "turnin-361-a-letter-undelivered",
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
                quest = { id = 361, state = "completed" },
            },
            sourceStep = 241,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2280,
            text = "Turn in Deaths in the Family to Coleman Farthing.",
            route = {
                { y = 0.5229, mapID = 1420, label = "Coleman Farthing", offMapText = "Travel to Coleman Farthing in Tirisfal Glades.", x = 0.6172 },
            },
            dependsOn = {
                "accept-354-deaths-in-the-family",
                "objective-354-2-nissa-agamand",
                "objective-354-1-gregor-agamand",
                "objective-354-3-thurman-agamand",
            },
            id = "turnin-354-deaths-in-the-family",
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
                quest = { id = 354, state = "completed" },
            },
            sourceStep = 242,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2290,
            text = "Turn in The Haunted Mills to Coleman Farthing.",
            route = {
                { y = 0.5229, mapID = 1420, label = "Coleman Farthing", offMapText = "Travel to Coleman Farthing in Tirisfal Glades.", x = 0.6172 },
            },
            dependsOn = { "accept-362-the-haunted-mills", "objective-362-1-devlin-agamand" },
            id = "turnin-362-the-haunted-mills",
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
                quest = { id = 362, state = "completed" },
            },
            sourceStep = 242,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2300,
            route = {
                { y = 0.5229, mapID = 1420, label = "Coleman Farthing", offMapText = "Travel to Coleman Farthing in Tirisfal Glades.", x = 0.6172 },
            },
            text = "Accept Speak with Sevren from Coleman Farthing.",
            id = "accept-355-speak-with-sevren",
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
                quest = { id = 355, state = "activeOrCompleted" },
            },
            sourceStep = 242,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 354, 362 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2310,
            text = "Turn in Speak with Sevren to Magistrate Sevren.",
            route = {
                { y = 0.5084, mapID = 1420, label = "Magistrate Sevren", offMapText = "Travel to Magistrate Sevren in Tirisfal Glades.", x = 0.6126 },
            },
            dependsOn = { "accept-355-speak-with-sevren" },
            id = "turnin-355-speak-with-sevren",
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
                quest = { id = 355, state = "completed" },
            },
            sourceStep = 243,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 354, 362 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2320,
            text = "Turn in Graverobbers to Magistrate Sevren.",
            route = {
                { y = 0.5084, mapID = 1420, label = "Magistrate Sevren", offMapText = "Travel to Magistrate Sevren in Tirisfal Glades.", x = 0.6126 },
            },
            dependsOn = {
                "accept-358-graverobbers",
                "objective-358-2-rot-hide-mongrel",
                "objective-358-1-rot-hide-graverobber",
                "objective-358-3-embalming-ichor",
            },
            id = "turnin-358-graverobbers",
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
                quest = { id = 358, state = "completed" },
            },
            sourceStep = 243,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2330,
            text = "Turn in Wanted: Maggot Eye to Executor Zygand.",
            route = {
                { y = 0.5176, mapID = 1420, label = "Executor Zygand", offMapText = "Travel to Executor Zygand in Tirisfal Glades.", x = 0.6059 },
            },
            dependsOn = { "accept-398-wanted-maggot-eye", "objective-398-1-maggot-eye" },
            id = "turnin-398-wanted-maggot-eye",
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
                quest = { id = 398, state = "completed" },
            },
            sourceStep = 244,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2340,
            text = "Turn in A New Plague to Apothecary Johaan.",
            route = {
                { y = 0.524, mapID = 1420, label = "Apothecary Johaan", offMapText = "Travel to Apothecary Johaan in Tirisfal Glades.", x = 0.5945 },
            },
            dependsOn = { "accept-368-a-new-plague", "objective-368-1-vile-fin-puddlejumper" },
            id = "turnin-368-a-new-plague",
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
                quest = { id = 368, state = "completed" },
            },
            sourceStep = 245,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 367 },
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
            priority = 2350,
        },
        {
            priority = 2360,
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
            sourceStep = 245,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2370,
            route = {
                { y = 0.6025, mapID = 1420, label = "Deathguard Linnea", offMapText = "Travel to Deathguard Linnea in Tirisfal Glades.", x = 0.6549 },
            },
            text = "Accept Rear Guard Patrol from Deathguard Linnea.",
            id = "accept-356-rear-guard-patrol",
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
                quest = { id = 356, state = "activeOrCompleted" },
            },
            sourceStep = 246,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1882-1-balnir-snapdragons",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            text = "Collect 1 Balnir Snapdragons.",
            complete = {
                questObjective = { id = 1882, index = 1, text = "Balnir Snapdragons", count = 1 },
            },
            route = {
                { mapID = 1420, x = 0.7694, y = 0.6238, label = "Balnir Snapdragons", offMapText = "Travel to Balnir Snapdragons." },
            },
            sourceStep = 247,
            priority = 2380,
            requiredQuests = {},
            alternativeQuests = { 1884 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1882-the-balnir-farmstead" },
        },
        {
            id = "objective-356-1-bleeding-horror",
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
            text = "Kill 8 Bleeding Horror.",
            complete = {
                questObjective = { id = 356, index = 1, text = "Bleeding Horror", count = 8 },
            },
            route = {
                { mapID = 1420, x = 0.7554000000000001, y = 0.6085, label = "Bleeding Horror", offMapText = "Travel to Bleeding Horror." },
            },
            sourceStep = 248,
            priority = 2390,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-356-rear-guard-patrol" },
        },
        {
            id = "objective-356-2-wandering-spirit",
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
            text = "Kill 8 Wandering Spirit.",
            complete = {
                questObjective = { id = 356, index = 2, text = "Wandering Spirit", count = 8 },
            },
            route = {
                { mapID = 1420, x = 0.7554000000000001, y = 0.6085, label = "Wandering Spirit", offMapText = "Travel to Wandering Spirit." },
            },
            sourceStep = 248,
            priority = 2400,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-356-rear-guard-patrol" },
        },
        {
            priority = 2410,
            text = "Turn in Rear Guard Patrol to Deathguard Linnea.",
            route = {
                { y = 0.6025, mapID = 1420, label = "Deathguard Linnea", offMapText = "Travel to Deathguard Linnea in Tirisfal Glades.", x = 0.6549 },
            },
            dependsOn = { "accept-356-rear-guard-patrol", "objective-356-1-bleeding-horror", "objective-356-2-wandering-spirit" },
            id = "turnin-356-rear-guard-patrol",
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
                quest = { id = 356, state = "completed" },
            },
            sourceStep = 250,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2420,
            text = "Turn in The Balnir Farmstead to Anastasia Hartwell.",
            route = {
                { y = 0.1003, mapID = 1458, label = "Anastasia Hartwell", offMapText = "Travel to Anastasia Hartwell in Undercity.", x = 0.8514 },
            },
            dependsOn = { "accept-1882-the-balnir-farmstead", "objective-1882-1-balnir-snapdragons" },
            id = "turnin-1882-the-balnir-farmstead",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 1882, state = "completed" },
            },
            sourceStep = 251,
            requiredQuests = {},
            alternativeQuests = { 1884 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 2430,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek.", x = 0.42 },
            },
            text = "Accept Wayward Weapons from Gornek in The Den.",
            id = "woven-accept-97279-wayward-weapons",
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
                    {
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 97279, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Collect 6 Abandoned Training Weapons around the Valley of Trials. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 2440,
            route = {
                { y = 0.684, mapID = 1411, label = "Valley of Trials", offMapText = "Travel to Valley of Trials.", x = 0.42 },
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
                    {
                        race = { 2, 8 },
                    },
                },
            },
            id = "woven-objective-97279-wayward-weapons",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 97279, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-97279-wayward-weapons" },
        },
        {
            priority = 2450,
            route = {
                { y = 0.68, mapID = 1411, label = "Kzan Thornslash", offMapText = "Travel to Kzan Thornslash.", x = 0.404 },
            },
            text = "Turn in Wayward Weapons to Kzan Thornslash in The Den.",
            id = "woven-turnin-97279-wayward-weapons",
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
                    {
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                quest = { id = 97279, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97279-wayward-weapons", "woven-objective-97279-wayward-weapons" },
        },
        {
            priority = 2460,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek.", x = 0.42 },
            },
            text = "Accept Glyphic Parchment from Gornek in the Den.",
            id = "woven-accept-98576-glyphic-parchment",
            kind = "accept",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 2 },
                    {
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 98576, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2470,
            route = {
                { y = 0.69, mapID = 1411, label = "Mai'ah", offMapText = "Travel to Mai'ah.", x = 0.424 },
            },
            text = "Read Glyphic Parchment in your bags. Turn in Glyphic Parchment to Mai'ah in the Valley of Trials.",
            id = "woven-turnin-98576-glyphic-parchment",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 2 },
                    {
                        race = { 2 },
                    },
                },
            },
            complete = {
                quest = { id = 98576, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98576-glyphic-parchment" },
        },
        {
            priority = 2480,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek.", x = 0.42 },
            },
            text = "Accept Tainted Tablet from Gornek in the Den.",
            id = "woven-accept-98575-tainted-tablet",
            kind = "accept",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 98575, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2490,
            route = {
                { y = 0.684, mapID = 1411, label = "Nartok", offMapText = "Travel to Nartok.", x = 0.406 },
            },
            text = "Read Tainted Tablet in your bags. Turn in Tainted Tablet to Nartok in the Valley of Trials.",
            id = "woven-turnin-98575-tainted-tablet",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                quest = { id = 98575, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-98575-tainted-tablet" },
        },
        {
            id = "level-before-woven-accept-96652-the-adventurer",
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
            checkpointQuest = 96652,
            alternativeQuests = { 96627, 96628, 96630, 96638, 96656, 96659 },
            priority = 2500,
        },
        {
            text = "Accept The Adventurer from the Lost Journal. No saved spot for the journal, so the guide follows the pin in your quest log.",
            priority = 2510,
            route = {
                { y = 0.684, mapID = 1411, label = "Valley of Trials", offMapText = "Travel to the Valley of Trials.", x = 0.42 },
            },
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
            id = "woven-accept-96652-the-adventurer",
            kind = "accept",
            useClientPin = false,
            complete = {
                quest = { id = 96652, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 794 },
                    conditions = {},
                },
            },
            alternativeQuests = { 96627, 96628, 96630, 96638, 96656, 96659 },
            useClientText = false,
            dependsOn = {},
        },
        {
            priority = 2520,
            route = {
                { y = 0.74, mapID = 1411, label = "Vel'rin Fang", offMapText = "Travel to Vel'rin Fang.", x = 0.558 },
            },
            text = "Accept Legging It from Vel'rin Fang in Sen'jin Village.",
            id = "woven-accept-96821-legging-it",
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
                quest = { id = 96821, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2530,
            route = {
                { y = 0.744, mapID = 1411, label = "Master Vornal", offMapText = "Travel to Master Vornal.", x = 0.558 },
            },
            text = "Accept Forgotten Loa Idols from Master Vornal in Sen'jin Village.",
            id = "woven-accept-97225-forgotten-loa-idols",
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
                quest = { id = 97225, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-accept-97223-bloodtalon-matriarch",
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
            checkpointQuest = 97223,
            priority = 2540,
        },
        {
            priority = 2550,
            route = {
                { y = 0.754, mapID = 1411, label = "Xar'Ti", offMapText = "Travel to Xar'Ti.", x = 0.552 },
            },
            text = "Accept Bloodtalon Matriarch from Xar'Ti in Sen'jin Village.",
            id = "woven-accept-97223-bloodtalon-matriarch",
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
                quest = { id = 97223, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2560,
            route = {
                { y = 0.574, mapID = 1411, label = "Ridgeshade Creeper", offMapText = "Travel to Ridgeshade Creeper.", x = 0.516 },
            },
            text = "Legging It: kill Ridgeshade Creepers on the way to Razor Hill.",
            id = "woven-objective-96821-legging-it-1",
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
                questObjective = { id = 96821, index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96821-legging-it" },
        },
        {
            priority = 2570,
            route = {
                { y = 0.518, mapID = 1411, label = "Ridgeshade Lurker", offMapText = "Travel to Ridgeshade Lurker.", x = 0.504 },
            },
            text = "Legging It: kill Ridgeshade Lurkers on the way to Razor Hill. A lost pack can drop for Ukor.",
            id = "woven-objective-96821-legging-it-2",
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
                questObjective = { id = 96821, index = 2 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96821-legging-it" },
        },
        {
            id = "loot-starter-before-accept-96876-verified-pickup",
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
            text = "Loot Ukor's Lost Pack from Ukorsbane. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Ukor's Lost Pack", minCount = 1 },
                    },
                    {
                        quest = { id = 96876, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1411, x = 0.4917, y = 0.5696, label = "Ukorsbane", offMapText = "Travel to Ukorsbane." },
            },
            dependsOn = {},
            priority = 2580,
        },
        {
            priority = 2590,
            text = "Use the Ukor's Lost Pack to accept Ukor's Lost Pack.",
            id = "accept-96876-verified-pickup",
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
                quest = { id = 96876, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2600,
            route = {
                { y = 0.682, mapID = 1411, label = "Ukor", offMapText = "Travel to Ukor.", x = 0.52 },
            },
            text = "Turn in Ukor's Lost Pack to Ukor in the Valley of Trials if you found the pack.",
            id = "woven-turnin-96876-ukors-lost-pack",
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
                quest = { id = 96876, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-96876-verified-pickup" },
        },
        {
            priority = 2610,
            route = {
                { y = 0.474, mapID = 1411, label = "Brakk", offMapText = "Travel to Brakk.", x = 0.52 },
            },
            text = "Turn in The Adventurer to Brakk near Razor Hill.",
            id = "woven-turnin-96652-the-adventurer",
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
                quest = { id = 96652, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 794 },
                    conditions = {},
                },
            },
            alternativeQuests = { 96627, 96628, 96630, 96638, 96656, 96659 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96652-the-adventurer" },
        },
        {
            priority = 2620,
            route = {
                { mapID = 1411, x = 0.5203, y = 0.47409999999999997, label = "Brakk", offMapText = "Travel to Brakk." },
            },
            text = "Accept The Great Outdoors from Brakk.",
            id = "woven-accept-96604-the-great-outdoors",
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
                quest = { id = 96604, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2630,
            text = "Type /sit beside Brakk's Basic Campfire and wait until you receive the Boosted Rest buff.",
            id = "woven-objective-96604-the-great-outdoors",
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
                quest = { id = 96604, state = "complete" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96604-the-great-outdoors" },
            route = {
                { mapID = 1411, x = 0.5203, y = 0.47409999999999997, label = "Brakk", offMapText = "Travel to Brakk." },
            },
        },
        {
            priority = 2640,
            route = {
                { mapID = 1411, x = 0.5203, y = 0.47409999999999997, label = "Brakk", offMapText = "Travel to Brakk." },
            },
            text = "Turn in The Great Outdoors to Brakk.",
            id = "woven-turnin-96604-the-great-outdoors",
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
                quest = { id = 96604, state = "completed" },
            },
            requiredQuests = {},
            alternativeQuests = { 95998, 96604, 96605, 96606, 96607, 96608 },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96604-the-great-outdoors", "woven-objective-96604-the-great-outdoors" },
        },
        {
            priority = 2650,
            route = {
                { y = 0.434, mapID = 1411, label = "Gar'Thok", offMapText = "Travel to Gar'Thok.", x = 0.52 },
            },
            text = "Turn in Legging It to Gar'Thok in Razor Hill.",
            id = "woven-turnin-96821-legging-it",
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
                quest = { id = 96821, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96821-legging-it", "woven-objective-96821-legging-it-1", "woven-objective-96821-legging-it-2" },
        },
        {
            priority = 2660,
            route = {
                { y = 0.426, mapID = 1411, label = "Turroc", offMapText = "Travel to Turroc.", x = 0.54 },
            },
            text = "Accept For Honor from Turroc in Razor Hill Barracks.",
            id = "woven-accept-96822-for-honor",
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
                quest = { id = 96822, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2670,
            route = {
                { y = 0.424, mapID = 1411, label = "Cook Torka", offMapText = "Travel to Cook Torka.", x = 0.512 },
            },
            text = "Accept This Fruit Could Bite Back from Cook Torka in Razor Hill.",
            id = "woven-accept-96825-this-fruit-could-bite-back",
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
                quest = { id = 96825, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2680,
            route = {
                { y = 0.426, mapID = 1411, label = "Turroc", offMapText = "Travel to Turroc.", x = 0.54 },
            },
            text = "Turn in For Honor to Turroc in Razor Hill Barracks.",
            id = "woven-turnin-96822-for-honor",
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
                quest = { id = 96822, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96822-for-honor", "woven-objective-96822-for-honor" },
        },
        {
            priority = 2690,
            route = {
                { y = 0.424, mapID = 1411, label = "Cook Torka", offMapText = "Travel to Cook Torka.", x = 0.512 },
            },
            text = "Turn in This Fruit Could Bite Back to Cook Torka in Razor Hill.",
            id = "woven-turnin-96825-this-fruit-could-bite-back",
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
                quest = { id = 96825, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-96825-this-fruit-could-bite-back", "woven-objective-96825-this-fruit-could-bite-back" },
        },
        {
            text = "Collect Prickly Pear Fruit on the Razormane grounds. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 2700,
            route = {
                { y = 0.398, mapID = 1411, label = "Razormane grounds", offMapText = "Travel to Razormane grounds.", x = 0.43 },
            },
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
            id = "woven-objective-96825-this-fruit-could-bite-back",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 96825, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-96825-this-fruit-could-bite-back" },
        },
        {
            text = "For Honor: collect the Raider's Bow, Battleaxe, and Shield on the Tiragarde Keep outskirts. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 2710,
            route = {
                { y = 0.588, mapID = 1411, label = "Tiragarde Keep outskirts", offMapText = "Travel to Tiragarde Keep outskirts.", x = 0.594 },
            },
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
            id = "woven-objective-96822-for-honor",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 96822, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-96822-for-honor" },
        },
        {
            priority = 2720,
            route = {
                { y = 0.786, mapID = 1411, label = "Pal'juh", offMapText = "Travel to Pal'juh.", x = 0.462 },
            },
            text = "Accept Lost in the Shadows from Pal'juh inside Kolkar Crag.",
            id = "woven-accept-99123-lost-in-the-shadows",
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
                quest = { id = 99123, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2730,
            route = {
                { y = 0.786, mapID = 1411, label = "Pal'juh", offMapText = "Travel to Pal'juh.", x = 0.462 },
            },
            text = "Escort Pal'juh out of Kolkar Crag.",
            id = "woven-objective-99123-lost-in-the-shadows",
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
                quest = { id = 99123, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99123-lost-in-the-shadows" },
        },
        {
            priority = 2740,
            route = {
                { y = 0.744, mapID = 1411, label = "Master Vornal", offMapText = "Travel to Master Vornal.", x = 0.558 },
            },
            text = "Turn in Lost in the Shadows to Master Vornal in Sen'jin Village.",
            id = "woven-turnin-99123-lost-in-the-shadows",
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
                quest = { id = 99123, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99123-lost-in-the-shadows", "woven-objective-99123-lost-in-the-shadows" },
        },
        {
            text = "Collect Forgotten Loa Idols on the Echo Isles. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 2750,
            route = {
                { y = 0.834, mapID = 1411, label = "Echo Isles", offMapText = "Travel to Echo Isles.", x = 0.676 },
            },
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
            id = "woven-objective-97225-forgotten-loa-idols",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 97225, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-97225-forgotten-loa-idols" },
        },
        {
            priority = 2760,
            route = {
                { y = 0.716, mapID = 1411, label = "Bloodtalon Matriarch", offMapText = "Travel to Bloodtalon Matriarch.", x = 0.686 },
            },
            text = "Collect Bloodtalon Matriarch Eggs.",
            id = "woven-objective-97223-bloodtalon-matriarch",
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
                quest = { id = 97223, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97223-bloodtalon-matriarch" },
        },
        {
            priority = 2770,
            route = {
                { y = 0.746, mapID = 1411, label = "Master Gadrin", offMapText = "Travel to Master Gadrin.", x = 0.56 },
            },
            text = "Turn in Forgotten Loa Idols to Master Gadrin in Sen'jin Village.",
            id = "woven-turnin-97225-forgotten-loa-idols",
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
                quest = { id = 97225, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97225-forgotten-loa-idols", "woven-objective-97225-forgotten-loa-idols" },
        },
        {
            priority = 2780,
            route = {
                { y = 0.754, mapID = 1411, label = "Xar'Ti", offMapText = "Travel to Xar'Ti.", x = 0.552 },
            },
            text = "Turn in Bloodtalon Matriarch to Xar'Ti in Sen'jin Village.",
            id = "woven-turnin-97223-bloodtalon-matriarch",
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
                quest = { id = 97223, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97223-bloodtalon-matriarch", "woven-objective-97223-bloodtalon-matriarch" },
        },
        {
            id = "loot-starter-before-accept-97281-verified-pickup",
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
            text = "Loot Dull Storm Orb from Dustwind Storm Witch, Dustwind Eggtender. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Dull Storm Orb", minCount = 1 },
                    },
                    {
                        quest = { id = 97281, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1411, x = 0.512, y = 0.20600000000000002, label = "Dustwind Storm Witch", offMapText = "Travel to Dustwind Storm Witch." },
            },
            dependsOn = {},
            priority = 2790,
        },
        {
            id = "level-before-accept-97281-verified-pickup",
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
            checkpointQuest = 97281,
            priority = 2800,
        },
        {
            priority = 2810,
            text = "Use the Dull Storm Orb to accept A Simmering Storm.",
            id = "accept-97281-verified-pickup",
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
                quest = { id = 97281, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2820,
            route = {
                { y = 0.23, mapID = 1411, label = "Rezlak", offMapText = "Travel to Rezlak.", x = 0.464 },
            },
            text = "Turn in A Simmering Storm to Rezlak if a thunder lizard dropped the Dull Stormy Orb.",
            id = "woven-turnin-97281-a-simmering-storm",
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
                quest = { id = 97281, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-97281-verified-pickup" },
        },
        {
            priority = 2830,
            route = {
                { y = 0.23, mapID = 1411, label = "Rezlak", offMapText = "Travel to Rezlak.", x = 0.464 },
            },
            text = "Accept Stormy Potential from Rezlak.",
            id = "woven-accept-97282-stormy-potential",
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
                quest = { id = 97282, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2840,
            route = {
                { y = 0.284, mapID = 1411, label = "Thunder Lizard", offMapText = "Travel to Thunder Lizard.", x = 0.392 },
            },
            text = "Collect a Charged Thunder Lizard Organ from the thunder lizards on Thunder Ridge.",
            id = "woven-objective-97282-stormy-potential",
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
                quest = { id = 97282, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97282-stormy-potential" },
        },
        {
            priority = 2850,
            route = {
                { y = 0.23, mapID = 1411, label = "Rezlak", offMapText = "Travel to Rezlak.", x = 0.464 },
            },
            text = "Turn in Stormy Potential to Rezlak.",
            id = "woven-turnin-97282-stormy-potential",
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
                quest = { id = 97282, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-97282-stormy-potential", "woven-objective-97282-stormy-potential" },
        },
        {
            id = "level-before-woven-accept-99048-a-missing-hand",
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
            checkpointQuest = 99048,
            priority = 2860,
        },
        {
            priority = 2870,
            route = {
                { y = 0.432, mapID = 1411, label = "Orgnil Soulscar", offMapText = "Travel to Orgnil Soulscar.", x = 0.522 },
            },
            text = "Accept A Missing Hand from Orgnil Soulscar in Razor Hill.",
            id = "woven-accept-99048-a-missing-hand",
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
                quest = { id = 99048, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2880,
            route = {
                { y = 0.456, mapID = 1411, label = "Heglan Shadeeye", offMapText = "Travel to Heglan Shadeeye.", x = 0.586 },
            },
            text = "Turn in A Missing Hand to Heglan Shadeeye, north of Tiragarde Keep.",
            id = "woven-turnin-99048-a-missing-hand",
            kind = "turnin",
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
                quest = { id = 99048, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99048-a-missing-hand" },
        },
        {
            priority = 2890,
            route = {
                { y = 0.456, mapID = 1411, label = "Heglan Shadeeye", offMapText = "Travel to Heglan Shadeeye.", x = 0.586 },
            },
            text = "Accept Threat from Below from Heglan Shadeeye.",
            id = "woven-accept-99049-threat-from-below",
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
                quest = { id = 99049, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            text = "Collect the Orcish Dagger, Banner Scrap, and Broken Bone Trident on the destroyed ground north of Tiragarde Keep. No saved spot for this, so the guide follows the pin in your quest log.",
            priority = 2900,
            route = {
                { y = 0.456, mapID = 1411, label = "Skirmish site", offMapText = "Travel to Skirmish site.", x = 0.586 },
            },
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
            id = "woven-objective-99049-threat-from-below",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 99049, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "woven-accept-99049-threat-from-below" },
        },
        {
            priority = 2910,
            route = {
                { y = 0.432, mapID = 1411, label = "Orgnil Soulscar", offMapText = "Travel to Orgnil Soulscar.", x = 0.522 },
            },
            text = "Turn in Threat from Below to Orgnil Soulscar in Razor Hill.",
            id = "woven-turnin-99049-threat-from-below",
            kind = "turnin",
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
                quest = { id = 99049, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99049-threat-from-below", "woven-objective-99049-threat-from-below" },
        },
        {
            priority = 2920,
            route = {
                { y = 0.432, mapID = 1411, label = "Orgnil Soulscar", offMapText = "Travel to Orgnil Soulscar.", x = 0.522 },
            },
            text = "Accept the next Threat from Below from Orgnil Soulscar.",
            id = "woven-accept-99051-threat-from-below",
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
                quest = { id = 99051, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2930,
            route = {
                { y = 0.238, mapID = 1411, label = "Spitelash Scout", offMapText = "Travel to Spitelash Scout.", x = 0.59 },
            },
            text = "Collect 9 Naga Spinefins from Spitelash naga on the north coast.",
            id = "woven-objective-99051-threat-from-below",
            kind = "objective",
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
                quest = { id = 99051, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99051-threat-from-below" },
        },
        {
            priority = 2940,
            route = {
                { y = 0.432, mapID = 1411, label = "Orgnil Soulscar", offMapText = "Travel to Orgnil Soulscar.", x = 0.522 },
            },
            text = "Turn in Threat from Below to Orgnil Soulscar in Razor Hill.",
            id = "woven-turnin-99051-threat-from-below",
            kind = "turnin",
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
                quest = { id = 99051, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99051-threat-from-below", "woven-objective-99051-threat-from-below" },
        },
        {
            id = "level-before-woven-accept-99052-threat-from-below",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
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
            checkpointQuest = 99052,
            priority = 2950,
        },
        {
            priority = 2960,
            route = {
                { y = 0.432, mapID = 1411, label = "Orgnil Soulscar", offMapText = "Travel to Orgnil Soulscar.", x = 0.522 },
            },
            text = "Accept the next Threat from Below from Orgnil Soulscar. This is an elite. Bring a group.",
            id = "woven-accept-99052-threat-from-below",
            kind = "accept",
            conditions = {
                all = {
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
                quest = { id = 99052, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 2970,
            route = {
                { y = 0.174, mapID = 1411, label = "Aggor the Young", offMapText = "Travel to Aggor the Young.", x = 0.59 },
            },
            text = "Kill Aggor the Young on the north coast and take Aggor's Belt. This is an elite. Bring a group.",
            id = "woven-objective-99052-threat-from-below",
            kind = "objective",
            conditions = {
                all = {
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
                quest = { id = 99052, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99052-threat-from-below" },
        },
        {
            priority = 2980,
            route = {
                { y = 0.432, mapID = 1411, label = "Orgnil Soulscar", offMapText = "Travel to Orgnil Soulscar.", x = 0.522 },
            },
            text = "Turn in Threat from Below to Orgnil Soulscar in Razor Hill.",
            id = "woven-turnin-99052-threat-from-below",
            kind = "turnin",
            conditions = {
                all = {
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
                quest = { id = 99052, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-99052-threat-from-below", "woven-objective-99052-threat-from-below" },
        },
        {
            id = "loot-starter-before-accept-96877-verified-pickup",
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
            text = "Loot Halikor's Hoof from Halikor. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Halikor's Hoof", minCount = 1 },
                    },
                    {
                        quest = { id = 96877, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1411, x = 0.4177, y = 0.251, label = "Halikor", offMapText = "Travel to Halikor." },
            },
            dependsOn = {},
            priority = 2990,
        },
        {
            priority = 3000,
            text = "Use the Halikor's Hoof to accept Halikor's Hoof.",
            id = "accept-96877-verified-pickup",
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
                quest = { id = 96877, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 3010,
            route = {
                { y = 0.45, mapID = 1454, label = "Kamari", offMapText = "Travel to Kamari.", x = 0.63 },
            },
            text = "Turn in Halikor's Hoof to Kamari if a thunder lizard dropped the hoof.",
            id = "woven-turnin-96877-halikors-hoof",
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
                quest = { id = 96877, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-96877-verified-pickup" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
    nextGuide = { Horde = "leveling-casual-horde" },
})
