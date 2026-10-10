local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Azshara",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-azshara",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 54 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-3505-betrayed",
            kind = "note",
            text = "Reach level 44 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 44 },
            },
            requiredLevel = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3505,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.5148, mapID = 1447, label = "Ag'tor Bloodfist", offMapText = "Travel to Ag'tor Bloodfist in Azshara.", x = 0.2226 },
            },
            text = "Accept Betrayed from Ag'tor Bloodfist.",
            id = "accept-3505-betrayed",
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
                quest = { id = 3505, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3504 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-3562-magatha-s-payment-to-jediga",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3562,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.5142, mapID = 1447, label = "Jediga", offMapText = "Travel to Jediga in Azshara.", x = 0.2256 },
            },
            text = "Turn in Magatha's Payment to Jediga to Jediga.",
            id = "turnin-3562-magatha-s-payment-to-jediga",
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
                quest = { id = 3562, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3518 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { y = 0.5142, mapID = 1447, label = "Jediga", offMapText = "Travel to Jediga in Azshara.", x = 0.2256 },
            },
            text = "Turn in Jes'rimon's Payment to Jediga to Jediga.",
            id = "turnin-3563-jes-rimon-s-payment-to-jediga",
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
                quest = { id = 3563, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3541 },
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
                { y = 0.5142, mapID = 1447, label = "Jediga", offMapText = "Travel to Jediga in Azshara.", x = 0.2256 },
            },
            text = "Accept Delivery to Andron Gant from Jediga.",
            id = "accept-3542-delivery-to-andron-gant",
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
                quest = { id = 3542, state = "activeOrCompleted" },
            },
            sourceStep = 2,
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
            id = "level-before-accept-3601-kim-jael-indeed",
            kind = "note",
            text = "Reach level 47 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 47 },
            },
            requiredLevel = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3601,
            priority = 70,
        },
        {
            priority = 80,
            route = {
                { y = 0.2182, mapID = 1447, label = "Kim'jael", offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345 },
            },
            text = "Accept Kim'jael Indeed! from Kim'jael.",
            id = "accept-3601-kim-jael-indeed",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3601, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            text = "Kill 10 Blood Elf Reclaimer.",
            route = {
                { y = 0.274, mapID = 1447, label = "Blood Elf Reclaimer", offMapText = "Travel to Blood Elf Reclaimer.", x = 0.552 },
            },
            dependsOn = { "accept-3505-betrayed" },
            id = "objective-3505-1-blood-elf-reclaimer",
            kind = "objective",
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
                questObjective = { id = 3505, text = "Blood Elf Reclaimer", index = 1, count = 10 },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3504 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 100,
            text = "Kill 10 Blood Elf Surveyor.",
            route = {
                { y = 0.274, mapID = 1447, label = "Blood Elf Surveyor", offMapText = "Travel to Blood Elf Surveyor.", x = 0.552 },
            },
            dependsOn = { "accept-3505-betrayed" },
            id = "objective-3505-2-blood-elf-surveyor",
            kind = "objective",
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
                questObjective = { id = 3505, text = "Blood Elf Surveyor", index = 2, count = 10 },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3504 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            text = "Turn in Betrayed.",
            route = {
                { y = 0.313, mapID = 1447, label = "Betrayed", offMapText = "Travel to Betrayed.", x = 0.5951 },
            },
            dependsOn = { "accept-3505-betrayed", "objective-3505-1-blood-elf-reclaimer", "objective-3505-2-blood-elf-surveyor" },
            id = "turnin-3505-betrayed",
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
                quest = { id = 3505, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3504 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 120,
            route = {
                { y = 0.313, mapID = 1447, label = "Betrayed", offMapText = "Travel to Betrayed.", x = 0.5951 },
            },
            text = "Accept Betrayed.",
            id = "accept-3506-betrayed",
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
                quest = { id = 3506, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3505 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            text = "Collect 1 Head of Magus Rimtori.",
            route = {
                { y = 0.3152, mapID = 1447, label = "Blood Elf Defender", offMapText = "Travel to Blood Elf Defender.", x = 0.5955 },
            },
            dependsOn = { "accept-3506-betrayed" },
            id = "objective-3506-1-blood-elf-defender",
            kind = "objective",
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
                questObjective = { id = 3506, text = "Blood Elf Defender", index = 1, count = 1 },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3505 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-3601-1-kim-jael-s-compass",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 1 Kim'Jael's Compass.",
            complete = {
                questObjective = { id = 3601, index = 1, text = "Kim'Jael's Compass", count = 1 },
            },
            route = {
                { mapID = 1447, x = 0.561, y = 0.301, label = "Kim'Jael's Compass", offMapText = "Travel to Kim'Jael's Compass." },
            },
            sourceStep = 8,
            priority = 140,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3601-kim-jael-indeed" },
        },
        {
            id = "objective-3601-2-kim-jael-s-scope",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 1 Kim'Jael's Scope.",
            complete = {
                questObjective = { id = 3601, index = 2, text = "Kim'Jael's Scope", count = 1 },
            },
            route = {
                { mapID = 1447, x = 0.561, y = 0.301, label = "Kim'Jael's Scope", offMapText = "Travel to Kim'Jael's Scope." },
            },
            sourceStep = 8,
            priority = 150,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3601-kim-jael-indeed" },
        },
        {
            id = "objective-3601-3-kim-jael-s-stuffed-chicken",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 1 Kim'Jael's Stuffed Chicken.",
            complete = {
                questObjective = { id = 3601, index = 3, text = "Kim'Jael's Stuffed Chicken", count = 1 },
            },
            route = {
                { mapID = 1447, x = 0.561, y = 0.301, label = "Kim'Jael's Stuffed Chicken", offMapText = "Travel to Kim'Jael's Stuffed Chicken." },
            },
            sourceStep = 8,
            priority = 160,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3601-kim-jael-indeed" },
        },
        {
            id = "objective-3601-4-kim-jael-s-wizzlegoober",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            text = "Collect 1 Kim'Jael's Wizzlegoober.",
            complete = {
                questObjective = { id = 3601, index = 4, text = "Kim'Jael's Wizzlegoober", count = 1 },
            },
            route = {
                { mapID = 1447, x = 0.561, y = 0.301, label = "Kim'Jael's Wizzlegoober", offMapText = "Travel to Kim'Jael's Wizzlegoober." },
            },
            sourceStep = 8,
            priority = 170,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-3601-kim-jael-indeed" },
        },
        {
            priority = 180,
            text = "Turn in Kim'jael Indeed! to Kim'jael.",
            route = {
                { y = 0.2182, mapID = 1447, label = "Kim'jael", offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345 },
            },
            dependsOn = {
                "accept-3601-kim-jael-indeed",
                "objective-3601-1-kim-jael-s-compass",
                "objective-3601-2-kim-jael-s-scope",
                "objective-3601-3-kim-jael-s-stuffed-chicken",
                "objective-3601-4-kim-jael-s-wizzlegoober",
            },
            id = "turnin-3601-kim-jael-indeed",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 3601, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            route = {
                { y = 0.2182, mapID = 1447, label = "Kim'jael", offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345 },
            },
            text = "Accept Kim'jael's \"Missing\" Equipment from Kim'jael.",
            id = "accept-5534-kim-jael-s-missing-equipment",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 5534, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3601 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            text = "Collect 1 Some Rune.",
            route = {
                { y = 0.422, mapID = 1447, label = "Spitelash Siren", offMapText = "Travel to Spitelash Siren.", x = 0.48 },
            },
            dependsOn = { "accept-5534-kim-jael-s-missing-equipment" },
            id = "objective-5534-1-spitelash-siren",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5534, text = "Spitelash Siren", index = 1, count = 1 },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3601 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "Turn in Kim'jael's \"Missing\" Equipment to Kim'jael.",
            route = {
                { mapID = 1447, x = 0.5345, y = 0.2182, label = "Kim'jael", offMapText = "Travel to Kim'jael in Azshara." },
            },
            dependsOn = { "accept-5534-kim-jael-s-missing-equipment", "objective-5534-1-spitelash-siren" },
            id = "turnin-5534-kim-jael-s-missing-equipment",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 47 },
                    },
                },
            },
            complete = {
                quest = { id = 5534, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3601 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            text = "Turn in Betrayed to Ag'tor Bloodfist.",
            route = {
                { y = 0.5148, mapID = 1447, label = "Ag'tor Bloodfist", offMapText = "Travel to Ag'tor Bloodfist in Azshara.", x = 0.2226 },
            },
            dependsOn = { "accept-3506-betrayed", "objective-3506-1-blood-elf-defender" },
            id = "turnin-3506-betrayed",
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
                quest = { id = 3506, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3505 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            route = {
                { y = 0.5148, mapID = 1447, label = "Ag'tor Bloodfist", offMapText = "Travel to Ag'tor Bloodfist in Azshara.", x = 0.2226 },
            },
            text = "Accept Betrayed from Ag'tor Bloodfist.",
            id = "accept-3507-betrayed",
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
                quest = { id = 3507, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3506 },
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
