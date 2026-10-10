local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Ashenvale & Stonetalon Mountains",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 21 },
            },
        },
    },
    goals = {
        {
            id = "level-before-turnin-967-the-tower-of-althalaxx",
            kind = "note",
            text = "Reach level 13 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 13 },
            },
            requiredLevel = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 967,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.387, mapID = 1440, label = "Delgren the Purifier", offMapText = "Travel to Delgren the Purifier in Ashenvale.", x = 0.262 },
            },
            text = "Turn in The Tower of Althalaxx to Delgren the Purifier.",
            id = "turnin-967-the-tower-of-althalaxx",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 967, state = "completed" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 966 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.387, mapID = 1440, label = "Delgren the Purifier", offMapText = "Travel to Delgren the Purifier in Ashenvale.", x = 0.262 },
            },
            text = "Accept The Tower of Althalaxx from Delgren the Purifier.",
            id = "accept-970-the-tower-of-althalaxx",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 970, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 967 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1010-bathran-s-hair",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1010,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.3859, mapID = 1440, label = "Orendil Broadleaf", offMapText = "Travel to Orendil Broadleaf in Ashenvale.", x = 0.2644 },
            },
            text = "Accept Bathran's Hair from Orendil Broadleaf.",
            id = "accept-1010-bathran-s-hair",
            kind = "accept",
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
                quest = { id = 1010, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            text = "Collect 1 Glowing Soul Gem.",
            route = {
                { y = 0.3062, mapID = 1440, label = "Dark Strand Cultist", offMapText = "Travel to Dark Strand Cultist.", x = 0.3139 },
            },
            dependsOn = { "accept-970-the-tower-of-althalaxx" },
            id = "objective-970-1-dark-strand-cultist",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 970, text = "Dark Strand Cultist", index = 1, count = 1 },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 967 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 70,
            text = "Collect 5 Bathran's Hair.",
            route = {
                { y = 0.247, mapID = 1440, label = "Bathran's Hair", offMapText = "Travel to Bathran's Hair.", x = 0.301 },
            },
            dependsOn = { "accept-1010-bathran-s-hair" },
            id = "objective-1010-1-bathran-s-hair",
            kind = "objective",
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
                questObjective = { id = 1010, text = "Bathran's Hair", index = 1, count = 5 },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 80,
            text = "Turn in Bathran's Hair to Orendil Broadleaf.",
            route = {
                { y = 0.3859, mapID = 1440, label = "Orendil Broadleaf", offMapText = "Travel to Orendil Broadleaf in Ashenvale.", x = 0.2644 },
            },
            dependsOn = { "accept-1010-bathran-s-hair", "objective-1010-1-bathran-s-hair" },
            id = "turnin-1010-bathran-s-hair",
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
                quest = { id = 1010, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 90,
            route = {
                { y = 0.3859, mapID = 1440, label = "Orendil Broadleaf", offMapText = "Travel to Orendil Broadleaf in Ashenvale.", x = 0.2644 },
            },
            text = "Accept Orendil's Cure from Orendil Broadleaf.",
            id = "accept-1020-orendil-s-cure",
            kind = "accept",
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
                quest = { id = 1020, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1010 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "Turn in The Tower of Althalaxx to Delgren the Purifier.",
            route = {
                { y = 0.387, mapID = 1440, label = "Delgren the Purifier", offMapText = "Travel to Delgren the Purifier in Ashenvale.", x = 0.262 },
            },
            dependsOn = { "accept-970-the-tower-of-althalaxx", "objective-970-1-dark-strand-cultist" },
            id = "turnin-970-the-tower-of-althalaxx",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 970, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 967 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            route = {
                { y = 0.387, mapID = 1440, label = "Delgren the Purifier", offMapText = "Travel to Delgren the Purifier in Ashenvale.", x = 0.262 },
            },
            text = "Accept The Tower of Althalaxx from Delgren the Purifier.",
            id = "accept-973-the-tower-of-althalaxx",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 973, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 970 },
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
                { y = 0.5191, mapID = 1440, label = "Therysil", offMapText = "Travel to Therysil in Ashenvale.", x = 0.2265 },
            },
            text = "Turn in Therylune's Escape to Therysil.",
            id = "turnin-945-therylune-s-escape",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 945, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            route = {
                { y = 0.4884, mapID = 1440, label = "Shindrell Swiftfire", offMapText = "Travel to Shindrell Swiftfire in Ashenvale.", x = 0.3467 },
            },
            text = "Accept The Zoram Strand from Shindrell Swiftfire.",
            id = "accept-1008-the-zoram-strand",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1008, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            route = {
                { y = 0.4979, mapID = 1440, label = "Sentinel Thenysil", offMapText = "Travel to Sentinel Thenysil in Ashenvale.", x = 0.3489 },
            },
            text = "Accept On Guard in Stonetalon from Sentinel Thenysil.",
            id = "accept-1070-on-guard-in-stonetalon",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1070, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            route = {
                { y = 0.491, mapID = 1440, label = "Faldreas Goeth'Shael", offMapText = "Travel to Faldreas Goeth'Shael in Ashenvale.", x = 0.3576 },
            },
            text = "Accept Journey to Stonetalon Peak from Faldreas Goeth'Shael.",
            id = "accept-1056-journey-to-stonetalon-peak",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1056, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            route = {
                { y = 0.4958, mapID = 1440, label = "Raene Wolfrunner", offMapText = "Travel to Raene Wolfrunner in Ashenvale.", x = 0.3662 },
            },
            text = "Accept Raene's Cleansing from Raene Wolfrunner.",
            id = "accept-991-raene-s-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 991, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 170,
            route = {
                { y = 0.4958, mapID = 1440, label = "Raene Wolfrunner", offMapText = "Travel to Raene Wolfrunner in Ashenvale.", x = 0.3662 },
            },
            text = "Accept Culling the Threat from Raene Wolfrunner.",
            id = "accept-1054-culling-the-threat",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1054, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "Turn in Orendil's Cure to Pelturas Whitemoon.",
            route = {
                { y = 0.5179, mapID = 1440, label = "Pelturas Whitemoon", offMapText = "Travel to Pelturas Whitemoon in Ashenvale.", x = 0.3737 },
            },
            dependsOn = { "accept-1020-orendil-s-cure" },
            id = "turnin-1020-orendil-s-cure",
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
                quest = { id = 1020, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1010 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            route = {
                { y = 0.5179, mapID = 1440, label = "Pelturas Whitemoon", offMapText = "Travel to Pelturas Whitemoon in Ashenvale.", x = 0.3737 },
            },
            text = "Accept Elune's Tear from Pelturas Whitemoon.",
            id = "accept-1033-elune-s-tear",
            kind = "accept",
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
                quest = { id = 1033, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1020 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1716-devourer-of-souls",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1716,
            priority = 200,
        },
        {
            priority = 210,
            route = {
                { mapID = 1413, x = 0.49310000000000004, y = 0.5710000000000001, label = "Takar the Seer", offMapText = "Travel to Takar the Seer in The Barrens." },
            },
            text = "Turn in Devourer of Souls to Takar the Seer.",
            id = "turnin-1716-devourer-of-souls",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
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
                quest = { id = 1716, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-class-warlock-accept-65602-what-is-love",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 65602,
            priority = 220,
        },
        {
            priority = 230,
            route = {
                { y = 0.57, mapID = 1413, label = "Takar the Seer", x = 0.492, offMapText = "Travel to Takar the Seer in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-65602-what-is-love",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-65602-what-is-love",
        },
        {
            priority = 240,
            id = "woven-class-warlock-objective-65602-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-65602-what-is-love" },
            classAction = "objective-65602-quest-work",
        },
        {
            priority = 250,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "woven-class-warlock-accept-65602-what-is-love", "woven-class-warlock-objective-65602-quest-work" },
            id = "woven-class-warlock-turnin-65602-what-is-love",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-65602-what-is-love",
        },
        {
            priority = 260,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-65603-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-65603-the-binding",
        },
        {
            priority = 270,
            id = "woven-class-warlock-objective-65603-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-65603-the-binding" },
            classAction = "objective-65603-quest-work",
        },
        {
            priority = 280,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "woven-class-warlock-accept-65603-the-binding", "woven-class-warlock-objective-65603-quest-work" },
            id = "woven-class-warlock-turnin-65603-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-65603-the-binding",
        },
        {
            priority = 290,
            route = {
                { mapID = 1413, x = 0.49310000000000004, y = 0.5710000000000001, label = "Takar the Seer", offMapText = "Travel to Takar the Seer in The Barrens." },
            },
            text = "Accept Heartswood from Takar the Seer.",
            id = "accept-1738-heartswood",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
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
                quest = { id = 1738, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1716 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1033-1-elune-s-tear",
            kind = "objective",
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
            text = "Collect 1 Elune's Tear.",
            complete = {
                questObjective = { id = 1033, index = 1, text = "Elune's Tear", count = 1 },
            },
            route = {
                { mapID = 1440, x = 0.46240000000000003, y = 0.4596, label = "Elune's Tear", offMapText = "Travel to Elune's Tear." },
            },
            sourceStep = 21,
            priority = 300,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1020 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1033-elune-s-tear" },
        },
        {
            priority = 310,
            text = "Collect 1 Dal Bloodclaw's Skull.",
            route = {
                { y = 0.366, mapID = 1440, label = "Dal Bloodclaw", offMapText = "Travel to Dal Bloodclaw.", x = 0.384 },
            },
            dependsOn = { "accept-1054-culling-the-threat" },
            id = "objective-1054-1-dal-bloodclaw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1054, text = "Dal Bloodclaw", index = 1, count = 1 },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Turn in Culling the Threat to Raene Wolfrunner.",
            route = {
                { y = 0.4958, mapID = 1440, label = "Raene Wolfrunner", offMapText = "Travel to Raene Wolfrunner in Ashenvale.", x = 0.3662 },
            },
            dependsOn = { "accept-1054-culling-the-threat", "objective-1054-1-dal-bloodclaw" },
            id = "turnin-1054-culling-the-threat",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1054, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            text = "Turn in Elune's Tear to Pelturas Whitemoon.",
            route = {
                { y = 0.5179, mapID = 1440, label = "Pelturas Whitemoon", offMapText = "Travel to Pelturas Whitemoon in Ashenvale.", x = 0.3737 },
            },
            dependsOn = { "accept-1033-elune-s-tear", "objective-1033-1-elune-s-tear" },
            id = "turnin-1033-elune-s-tear",
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
                quest = { id = 1033, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1020 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            route = {
                { y = 0.5179, mapID = 1440, label = "Pelturas Whitemoon", offMapText = "Travel to Pelturas Whitemoon in Ashenvale.", x = 0.3737 },
            },
            text = "Accept The Ruins of Stardust from Pelturas Whitemoon.",
            id = "accept-1034-the-ruins-of-stardust",
            kind = "accept",
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
                quest = { id = 1034, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1033 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 350,
            text = "Collect 5 Handful of Stardust.",
            route = {
                { y = 0.6736, mapID = 1440, label = "Handful of Stardust", offMapText = "Travel to Handful of Stardust.", x = 0.3342 },
            },
            dependsOn = { "accept-1034-the-ruins-of-stardust" },
            id = "objective-1034-1-handful-of-stardust",
            kind = "objective",
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
                questObjective = { id = 1034, text = "Handful of Stardust", index = 1, count = 5 },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1033 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            text = "Collect 1 Ilkrud Magthrull's Tome.",
            route = {
                { mapID = 1440, x = 0.2528, y = 0.6069, label = "Ilkrud Magthrull's Tome", offMapText = "Travel to Ilkrud Magthrull's Tome." },
            },
            dependsOn = { "accept-973-the-tower-of-althalaxx" },
            id = "objective-973-1-ilkrud-magthrull",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 973, text = "Ilkrud Magthrull", index = 1, count = 1 },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 970 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            text = "Turn in The Tower of Althalaxx to Delgren the Purifier.",
            route = {
                { mapID = 1440, x = 0.262, y = 0.387, label = "Delgren the Purifier", offMapText = "Travel to Delgren the Purifier in Ashenvale." },
            },
            dependsOn = { "accept-973-the-tower-of-althalaxx", "objective-973-1-ilkrud-magthrull" },
            id = "turnin-973-the-tower-of-althalaxx",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 973, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 970 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1738-1-heartswood",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Heartswood.",
            complete = {
                questObjective = { id = 1738, index = 1, text = "Heartswood", count = 1 },
            },
            route = {
                { mapID = 1440, x = 0.31489999999999996, y = 0.3145, label = "Heartswood", offMapText = "Travel to Heartswood." },
            },
            sourceStep = 30,
            priority = 380,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1716 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1738-heartswood" },
        },
        {
            priority = 390,
            text = "Turn in Raene's Cleansing.",
            route = {
                { y = 0.4233, mapID = 1440, label = "Raene's Cleansing", offMapText = "Travel to Raene's Cleansing.", x = 0.2031 },
            },
            dependsOn = { "accept-991-raene-s-cleansing" },
            id = "turnin-991-raene-s-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 991, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            route = {
                { y = 0.4233, mapID = 1440, label = "Raene's Cleansing", offMapText = "Travel to Raene's Cleansing.", x = 0.2031 },
            },
            text = "Accept Raene's Cleansing.",
            id = "accept-1023-raene-s-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1023, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 991 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 410,
            text = "Collect 1 Glowing Gem.",
            route = {
                { y = 0.43, mapID = 1440, label = "Saltspittle Puddlejumper", offMapText = "Travel to Saltspittle Puddlejumper.", x = 0.192 },
            },
            dependsOn = { "accept-1023-raene-s-cleansing" },
            id = "objective-1023-1-saltspittle-puddlejumper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1023, text = "Saltspittle Puddlejumper", index = 1, count = 1 },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 991 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            route = {
                { y = 0.313, mapID = 1440, label = "Talen", offMapText = "Travel to Talen in Ashenvale.", x = 0.1479 },
            },
            text = "Accept The Ancient Statuette from Talen.",
            id = "accept-1007-the-ancient-statuette",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1007, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1007-1-ancient-statuette",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Ancient Statuette.",
            complete = {
                questObjective = { id = 1007, index = 1, text = "Ancient Statuette", count = 1 },
            },
            route = {
                { mapID = 1440, x = 0.142, y = 0.2064, label = "Ancient Statuette", offMapText = "Travel to Ancient Statuette." },
            },
            sourceStep = 34,
            priority = 430,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1007-the-ancient-statuette" },
        },
        {
            priority = 440,
            text = "Turn in The Ancient Statuette to Talen.",
            route = {
                { y = 0.313, mapID = 1440, label = "Talen", offMapText = "Travel to Talen in Ashenvale.", x = 0.1479 },
            },
            dependsOn = { "accept-1007-the-ancient-statuette", "objective-1007-1-ancient-statuette" },
            id = "turnin-1007-the-ancient-statuette",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1007, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            route = {
                { y = 0.313, mapID = 1440, label = "Talen", offMapText = "Travel to Talen in Ashenvale.", x = 0.1479 },
            },
            text = "Accept Ruuzel from Talen.",
            id = "accept-1009-ruuzel",
            kind = "accept",
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
                quest = { id = 1009, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1007 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            text = "Kill Ruuzel on the island in the northern Zoram Strand and loot the Ring of Zoram. The rare Lady Vespia can also drop the ring if she is present.",
            route = {
                { mapID = 1440, x = 0.07200000000000001, y = 0.13, label = "Ruuzel", offMapText = "Travel to Ruuzel." },
            },
            dependsOn = { "accept-1009-ruuzel" },
            id = "objective-1009-1-ruuzel",
            kind = "objective",
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
                questObjective = { id = 1009, index = 1, count = 1 },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1007 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            text = "Turn in Ruuzel to Talen.",
            route = {
                { y = 0.313, mapID = 1440, label = "Talen", offMapText = "Travel to Talen in Ashenvale.", x = 0.1479 },
            },
            dependsOn = { "accept-1009-ruuzel", "objective-1009-1-ruuzel" },
            id = "turnin-1009-ruuzel",
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
                quest = { id = 1009, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1007 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1008-1-wrathtail-head",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 20 Wrathtail Head.",
            complete = {
                questObjective = { id = 1008, index = 1, text = "Wrathtail Head", count = 20 },
            },
            route = {
                { mapID = 1440, x = 0.15, y = 0.266, label = "Wrathtail Head", offMapText = "Travel to Wrathtail Head." },
            },
            sourceStep = 41,
            priority = 480,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1008-the-zoram-strand" },
        },
        {
            priority = 490,
            text = "Turn in Raene's Cleansing to Raene Wolfrunner.",
            route = {
                { y = 0.4958, mapID = 1440, label = "Raene Wolfrunner", offMapText = "Travel to Raene Wolfrunner in Ashenvale.", x = 0.3662 },
            },
            dependsOn = { "accept-1023-raene-s-cleansing", "objective-1023-1-saltspittle-puddlejumper" },
            id = "turnin-1023-raene-s-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1023, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 991 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            text = "Turn in The Ruins of Stardust to Pelturas Whitemoon.",
            route = {
                { y = 0.5179, mapID = 1440, label = "Pelturas Whitemoon", offMapText = "Travel to Pelturas Whitemoon in Ashenvale.", x = 0.3737 },
            },
            dependsOn = { "accept-1034-the-ruins-of-stardust", "objective-1034-1-handful-of-stardust" },
            id = "turnin-1034-the-ruins-of-stardust",
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
                quest = { id = 1034, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1033 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            text = "Turn in The Zoram Strand to Shindrell Swiftfire.",
            route = {
                { y = 0.4884, mapID = 1440, label = "Shindrell Swiftfire", offMapText = "Travel to Shindrell Swiftfire in Ashenvale.", x = 0.3467 },
            },
            dependsOn = { "accept-1008-the-zoram-strand", "objective-1008-1-wrathtail-head" },
            id = "turnin-1008-the-zoram-strand",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1008, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            route = {
                { y = 0.4884, mapID = 1440, label = "Shindrell Swiftfire", offMapText = "Travel to Shindrell Swiftfire in Ashenvale.", x = 0.3467 },
            },
            text = "Accept Pridewings of Stonetalon from Shindrell Swiftfire.",
            id = "accept-1134-pridewings-of-stonetalon",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1134, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1008 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            route = {
                { y = 0.4559, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            text = "Turn in Beached Sea Creature to Gwennyth Bly'Leggonde.",
            id = "turnin-4730-beached-sea-creature",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4730, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            route = {
                { y = 0.4559, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            text = "Turn in Beached Sea Turtle to Gwennyth Bly'Leggonde.",
            id = "turnin-4731-beached-sea-turtle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4731, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 550,
            route = {
                { y = 0.4559, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            text = "Turn in Beached Sea Turtle to Gwennyth Bly'Leggonde.",
            id = "turnin-4732-beached-sea-turtle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4732, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            route = {
                { y = 0.4559, mapID = 1439, label = "Gwennyth Bly'Leggonde", offMapText = "Travel to Gwennyth Bly'Leggonde in Darkshore.", x = 0.3662 },
            },
            text = "Turn in Beached Sea Creature to Gwennyth Bly'Leggonde.",
            id = "turnin-4733-beached-sea-creature",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4733, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4681 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 570,
            route = {
                { mapID = 1439, x = 0.3651, y = 0.7659, label = "Murkdeep", offMapText = "Travel to Murkdeep." },
            },
            text = "For WANTED: Murkdeep!: Find and slay the murloc known as Murkdeep. The creature is thought to be defending the murloc huts south of Auberdine along the water. Report the death of Murkdeep to Sentinel Glynda Nal'Shea in Auberdine.",
            id = "objective-4740-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4740, state = "complete" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 580,
            route = {
                { y = 0.4339, mapID = 1439, label = "Sentinel Glynda Nal'Shea", offMapText = "Travel to Sentinel Glynda Nal'Shea in Darkshore.", x = 0.3771 },
            },
            text = "Turn in WANTED: Murkdeep! to Sentinel Glynda Nal'Shea.",
            id = "turnin-4740-wanted-murkdeep",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4740, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-4740-quest-work" },
        },
        {
            priority = 590,
            route = {
                { y = 0.4184, mapID = 1439, label = "Archaeologist Hollee", offMapText = "Travel to Archaeologist Hollee in Darkshore.", x = 0.3744 },
            },
            text = "Turn in The Absent Minded Prospector to Archaeologist Hollee.",
            id = "turnin-731-the-absent-minded-prospector",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 731, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 729 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 600,
            route = {
                { y = 0.4184, mapID = 1439, label = "Archaeologist Hollee", offMapText = "Travel to Archaeologist Hollee in Darkshore.", x = 0.3744 },
            },
            text = "Accept The Absent Minded Prospector from Archaeologist Hollee.",
            id = "accept-741-the-absent-minded-prospector",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 741, state = "activeOrCompleted" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 731 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 610,
            route = {
                { y = 0.4348, mapID = 1439, label = "Terenthis", offMapText = "Travel to Terenthis in Darkshore.", x = 0.3937 },
            },
            text = "Turn in Escape Through Stealth to Terenthis.",
            id = "turnin-995-escape-through-stealth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 995, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 993 },
                    conditions = {},
                },
            },
            alternativeQuests = { 994 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 620,
            route = {
                { y = 0.4348, mapID = 1439, label = "Terenthis", offMapText = "Travel to Terenthis in Darkshore.", x = 0.3937 },
            },
            text = "Turn in Escape Through Force to Terenthis.",
            id = "turnin-994-escape-through-force",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 994, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 993 },
                    conditions = {},
                },
            },
            alternativeQuests = { 995 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 630,
            text = "Turn in The Absent Minded Prospector to Chief Archaeologist Greywhisker.",
            route = {
                { y = 0.845, mapID = 1457, label = "Chief Archaeologist Greywhisker", offMapText = "Travel to Chief Archaeologist Greywhisker in Darnassus.", x = 0.3125 },
            },
            dependsOn = { "accept-741-the-absent-minded-prospector" },
            id = "turnin-741-the-absent-minded-prospector",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 741, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 731 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            route = {
                { y = 0.845, mapID = 1457, label = "Chief Archaeologist Greywhisker", offMapText = "Travel to Chief Archaeologist Greywhisker in Darnassus.", x = 0.3125 },
            },
            text = "Accept The Absent Minded Prospector from Chief Archaeologist Greywhisker.",
            id = "accept-942-the-absent-minded-prospector",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 942, state = "activeOrCompleted" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 741 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 650,
            text = "Turn in On Guard in Stonetalon to Kaela Shadowspear.",
            route = {
                { mapID = 1442, x = 0.599, y = 0.6685, label = "Kaela Shadowspear", offMapText = "Travel to Kaela Shadowspear in Stonetalon Mountains." },
            },
            dependsOn = { "accept-1070-on-guard-in-stonetalon" },
            id = "turnin-1070-on-guard-in-stonetalon",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1070, state = "completed" },
            },
            sourceStep = 63,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            route = {
                { mapID = 1442, x = 0.599, y = 0.6685, label = "Kaela Shadowspear", offMapText = "Travel to Kaela Shadowspear in Stonetalon Mountains." },
            },
            text = "Accept On Guard in Stonetalon from Kaela Shadowspear.",
            id = "accept-1085-on-guard-in-stonetalon",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1085, state = "activeOrCompleted" },
            },
            sourceStep = 63,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 670,
            text = "Turn in On Guard in Stonetalon to Gaxim Rustfizzle.",
            route = {
                { y = 0.6715, mapID = 1442, label = "Gaxim Rustfizzle", offMapText = "Travel to Gaxim Rustfizzle in Stonetalon Mountains.", x = 0.5952 },
            },
            dependsOn = { "accept-1085-on-guard-in-stonetalon" },
            id = "turnin-1085-on-guard-in-stonetalon",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1085, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            route = {
                { y = 0.6715, mapID = 1442, label = "Gaxim Rustfizzle", offMapText = "Travel to Gaxim Rustfizzle in Stonetalon Mountains.", x = 0.5952 },
            },
            text = "Accept A Gnome's Respite from Gaxim Rustfizzle.",
            id = "accept-1071-a-gnome-s-respite",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1071, state = "activeOrCompleted" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1085 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1093-super-reaper-6000",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 16 },
            },
            requiredLevel = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1093,
            priority = 690,
        },
        {
            priority = 700,
            route = {
                { y = 0.626, mapID = 1442, label = "Ziz Fizziks", offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.", x = 0.5899 },
            },
            text = "Accept Super Reaper 6000 from Ziz Fizziks.",
            id = "accept-1093-super-reaper-6000",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1093, state = "activeOrCompleted" },
            },
            sourceStep = 65,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 710,
            text = "Collect 1 Super Reaper 6000 Blueprints.",
            route = {
                { y = 0.52, mapID = 1442, label = "Venture Co. Operator", offMapText = "Travel to Venture Co. Operator.", x = 0.622 },
            },
            dependsOn = { "accept-1093-super-reaper-6000" },
            id = "objective-1093-1-venture-co-operator",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1093, text = "Venture Co. Operator", index = 1, count = 1 },
            },
            sourceStep = 66,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1071-1-venture-co-logger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 10 Venture Co. Logger.",
            complete = {
                questObjective = { id = 1071, index = 1, text = "Venture Co. Logger", count = 10 },
            },
            route = {
                { mapID = 1442, x = 0.6659999999999999, y = 0.55, label = "Venture Co. Logger", offMapText = "Travel to Venture Co. Logger." },
            },
            sourceStep = 67,
            priority = 720,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1085 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1071-a-gnome-s-respite" },
        },
        {
            id = "objective-1071-2-venture-co-deforester",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 10 Venture Co. Deforester.",
            complete = {
                questObjective = { id = 1071, index = 2, text = "Venture Co. Deforester", count = 10 },
            },
            route = {
                { mapID = 1442, x = 0.6659999999999999, y = 0.55, label = "Venture Co. Deforester", offMapText = "Travel to Venture Co. Deforester." },
            },
            sourceStep = 67,
            priority = 730,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1085 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1071-a-gnome-s-respite" },
        },
        {
            priority = 740,
            text = "Turn in Super Reaper 6000 to Ziz Fizziks.",
            route = {
                { y = 0.626, mapID = 1442, label = "Ziz Fizziks", offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.", x = 0.5899 },
            },
            dependsOn = { "accept-1093-super-reaper-6000", "objective-1093-1-venture-co-operator" },
            id = "turnin-1093-super-reaper-6000",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1093, state = "completed" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            text = "Turn in A Gnome's Respite to Gaxim Rustfizzle.",
            route = {
                { y = 0.6715, mapID = 1442, label = "Gaxim Rustfizzle", offMapText = "Travel to Gaxim Rustfizzle in Stonetalon Mountains.", x = 0.5952 },
            },
            dependsOn = {
                "accept-1071-a-gnome-s-respite",
                "objective-1071-1-venture-co-logger",
                "objective-1071-2-venture-co-deforester",
            },
            id = "turnin-1071-a-gnome-s-respite",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1071, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1085 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 760,
            route = {
                { y = 0.6715, mapID = 1442, label = "Gaxim Rustfizzle", offMapText = "Travel to Gaxim Rustfizzle in Stonetalon Mountains.", x = 0.5952 },
            },
            text = "Accept An Old Colleague from Gaxim Rustfizzle.",
            id = "accept-1072-an-old-colleague",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1072, state = "activeOrCompleted" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1071 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 770,
            route = {
                { y = 0.6715, mapID = 1442, label = "Gaxim Rustfizzle", offMapText = "Travel to Gaxim Rustfizzle in Stonetalon Mountains.", x = 0.5952 },
            },
            text = "Accept A Scroll from Mauren from Gaxim Rustfizzle.",
            id = "accept-1075-a-scroll-from-mauren",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1075, state = "activeOrCompleted" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1071 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 780,
            text = "Collect 12 Pridewing Venom Sac.",
            route = {
                { y = 0.456, mapID = 1442, label = "Pridewing Wyvern", offMapText = "Travel to Pridewing Wyvern.", x = 0.504 },
            },
            dependsOn = { "accept-1134-pridewings-of-stonetalon" },
            id = "objective-1134-1-pridewing-wyvern",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1134, text = "Pridewing Wyvern", index = 1, count = 12 },
            },
            sourceStep = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1008 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 790,
            text = "Turn in Journey to Stonetalon Peak to Keeper Albagorm.",
            route = {
                { y = 0.081, mapID = 1442, label = "Keeper Albagorm", offMapText = "Travel to Keeper Albagorm in Stonetalon Mountains.", x = 0.371 },
            },
            dependsOn = { "accept-1056-journey-to-stonetalon-peak" },
            id = "turnin-1056-journey-to-stonetalon-peak",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1056, state = "completed" },
            },
            sourceStep = 71,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 800,
            text = "Turn in Pridewings of Stonetalon to Shindrell Swiftfire.",
            route = {
                { y = 0.4884, mapID = 1440, label = "Shindrell Swiftfire", offMapText = "Travel to Shindrell Swiftfire in Ashenvale.", x = 0.3467 },
            },
            dependsOn = { "accept-1134-pridewings-of-stonetalon", "objective-1134-1-pridewing-wyvern" },
            id = "turnin-1134-pridewings-of-stonetalon",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1134, state = "completed" },
            },
            sourceStep = 74,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1008 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 810,
            route = {
                { y = 0.4958, mapID = 1440, label = "Raene Wolfrunner", offMapText = "Travel to Raene Wolfrunner in Ashenvale.", x = 0.3662 },
            },
            text = "Accept An Aggressive Defense from Raene Wolfrunner.",
            id = "accept-1025-an-aggressive-defense",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1025, state = "activeOrCompleted" },
            },
            sourceStep = 75,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1023 },
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
                { y = 0.6721, mapID = 1440, label = "Sentinel Velene Starstrike", offMapText = "Travel to Sentinel Velene Starstrike in Ashenvale.", x = 0.498 },
            },
            text = "Accept Elemental Bracers from Sentinel Velene Starstrike.",
            id = "accept-1016-elemental-bracers",
            kind = "accept",
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
                quest = { id = 1016, state = "activeOrCompleted" },
            },
            sourceStep = 76,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 830,
            text = "Kill elementals around Mystral Lake and collect 5 Intact Elemental Bracers. Use the Divining Scroll with the bracers in your bags to obtain the Divined Scroll.",
            route = {
                { y = 0.692, mapID = 1440, label = "Befouled Water Elemental", offMapText = "Travel to Befouled Water Elemental.", x = 0.496 },
            },
            dependsOn = { "accept-1016-elemental-bracers" },
            id = "objective-1016-1-befouled-water-elemental",
            kind = "objective",
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
                questObjective = { id = 1016, text = "Befouled Water Elemental", index = 1, count = 1 },
            },
            sourceStep = 77,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 840,
            text = "Turn in Elemental Bracers to Sentinel Velene Starstrike.",
            route = {
                { y = 0.6721, mapID = 1440, label = "Sentinel Velene Starstrike", offMapText = "Travel to Sentinel Velene Starstrike in Ashenvale.", x = 0.498 },
            },
            dependsOn = { "accept-1016-elemental-bracers", "objective-1016-1-befouled-water-elemental" },
            id = "turnin-1016-elemental-bracers",
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
                quest = { id = 1016, state = "completed" },
            },
            sourceStep = 78,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 850,
            text = "Kill Foulweald Den Watcher.",
            route = {
                { y = 0.628, mapID = 1440, label = "Foulweald Den Watcher", offMapText = "Travel to Foulweald Den Watcher.", x = 0.524 },
            },
            dependsOn = { "accept-1025-an-aggressive-defense" },
            id = "objective-1025-1-foulweald-den-watcher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1025, text = "Foulweald Den Watcher", index = 1 },
            },
            sourceStep = 81,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1023 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 860,
            text = "Kill 2 Foulweald Ursa.",
            route = {
                { y = 0.628, mapID = 1440, label = "Foulweald Ursa", offMapText = "Travel to Foulweald Ursa.", x = 0.524 },
            },
            dependsOn = { "accept-1025-an-aggressive-defense" },
            id = "objective-1025-2-foulweald-ursa",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1025, text = "Foulweald Ursa", index = 2, count = 2 },
            },
            sourceStep = 81,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1023 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 870,
            text = "Kill 10 Foulweald Totemic.",
            route = {
                { y = 0.628, mapID = 1440, label = "Foulweald Totemic", offMapText = "Travel to Foulweald Totemic.", x = 0.524 },
            },
            dependsOn = { "accept-1025-an-aggressive-defense" },
            id = "objective-1025-3-foulweald-totemic",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1025, text = "Foulweald Totemic", index = 3, count = 10 },
            },
            sourceStep = 81,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1023 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 880,
            text = "Kill 12 Foulweald Warrior.",
            route = {
                { y = 0.628, mapID = 1440, label = "Foulweald Warrior", offMapText = "Travel to Foulweald Warrior.", x = 0.524 },
            },
            dependsOn = { "accept-1025-an-aggressive-defense" },
            id = "objective-1025-4-foulweald-warrior",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1025, text = "Foulweald Warrior", index = 4, count = 12 },
            },
            sourceStep = 81,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1023 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 890,
            text = "Turn in An Aggressive Defense to Raene Wolfrunner.",
            route = {
                { y = 0.4958, mapID = 1440, label = "Raene Wolfrunner", offMapText = "Travel to Raene Wolfrunner in Ashenvale.", x = 0.3662 },
            },
            dependsOn = {
                "accept-1025-an-aggressive-defense",
                "objective-1025-1-foulweald-den-watcher",
                "objective-1025-2-foulweald-ursa",
                "objective-1025-3-foulweald-totemic",
                "objective-1025-4-foulweald-warrior",
            },
            id = "turnin-1025-an-aggressive-defense",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1025, state = "completed" },
            },
            sourceStep = 96,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1023 },
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
