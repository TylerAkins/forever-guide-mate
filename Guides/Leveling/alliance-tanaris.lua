local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Tanaris",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-tanaris",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 43 },
            },
        },
    },
    goals = {
        {
            id = "level-before-turnin-1188-safety-first",
            kind = "note",
            text = "Reach level 29 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 29 },
            },
            requiredLevel = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1188,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.2724, mapID = 1446, label = "Shreev", offMapText = "Travel to Shreev in Tanaris.", x = 0.5096 },
            },
            text = "Turn in Safety First to Shreev.",
            id = "turnin-1188-safety-first",
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
                quest = { id = 1188, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1187 },
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
                { y = 0.2724, mapID = 1446, label = "Shreev", offMapText = "Travel to Shreev in Tanaris.", x = 0.5096 },
            },
            text = "Accept Safety First from Shreev.",
            id = "accept-1189-safety-first",
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
                quest = { id = 1189, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1188 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1119,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Turn in Zanzil's Mixture and a Fool's Stout to Kravel Koalbeard.",
            id = "turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 1119, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 621, 1118 },
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
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Get the Gnomes Drunk from Kravel Koalbeard.",
            id = "accept-1120-get-the-gnomes-drunk",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 1120, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1119 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1121 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            text = "Turn in Get the Gnomes Drunk to Gnome Pit Boss.",
            route = {
                { y = 0.7694, mapID = 1441, label = "Gnome Pit Boss", offMapText = "Travel to Gnome Pit Boss in Thousand Needles.", x = 0.7756 },
            },
            dependsOn = { "accept-1120-get-the-gnomes-drunk" },
            id = "turnin-1120-get-the-gnomes-drunk",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 1120, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1119 },
                    conditions = {},
                },
            },
            alternativeQuests = { 1121 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 80,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Report Back to Fizzlebub from Kravel Koalbeard.",
            id = "accept-1122-report-back-to-fizzlebub",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 1122, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1120, 1121 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { y = 0.7713, mapID = 1441, label = "Fizzle Brassbolts", offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.", x = 0.7806 },
            },
            text = "Turn in News for Fizzle to Fizzle Brassbolts.",
            id = "turnin-1137-news-for-fizzle",
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
                quest = { id = 1137, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1108 },
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
                { y = 0.7588, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            text = "Accept Keeping Pace from Pozzik.",
            id = "accept-1190-keeping-pace",
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
                quest = { id = 1190, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1137 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            text = "Turn in Safety First to Razzeric.",
            route = {
                { y = 0.761, mapID = 1441, label = "Razzeric", offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033 },
            },
            dependsOn = { "accept-1189-safety-first" },
            id = "turnin-1189-safety-first",
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
                quest = { id = 1189, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1188 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 120,
            route = {
                { y = 0.7702, mapID = 1441, label = "Zamek", offMapText = "Travel to Zamek in Thousand Needles.", x = 0.7981 },
            },
            text = "Accept Zamek's Distraction from Zamek.",
            id = "accept-1191-zamek-s-distraction",
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
                quest = { id = 1191, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            text = "Turn in Keeping Pace.",
            route = {
                { y = 0.7738, mapID = 1441, label = "Keeping Pace", offMapText = "Travel to Keeping Pace.", x = 0.7721 },
            },
            dependsOn = { "accept-1190-keeping-pace" },
            id = "turnin-1190-keeping-pace",
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
                quest = { id = 1190, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1137 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 140,
            route = {
                { y = 0.7738, mapID = 1441, label = "Rizzle's Schematics", offMapText = "Travel to Rizzle's Schematics.", x = 0.7721 },
            },
            text = "Accept Rizzle's Schematics.",
            id = "accept-1194-rizzle-s-schematics",
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
                quest = { id = 1194, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1190 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "Turn in Rizzle's Schematics to Pozzik.",
            route = {
                { y = 0.7588, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            dependsOn = { "accept-1194-rizzle-s-schematics" },
            id = "turnin-1194-rizzle-s-schematics",
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
                quest = { id = 1194, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1190 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1707-water-pouch-bounty",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1707,
            priority = 160,
        },
        {
            priority = 170,
            route = {
                { y = 0.2844, mapID = 1446, label = "Spigot Operator Luglunket", offMapText = "Travel to Spigot Operator Luglunket in Tanaris.", x = 0.5248 },
            },
            text = "Accept Water Pouch Bounty from Spigot Operator Luglunket.",
            id = "accept-1707-water-pouch-bounty",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1707, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            route = {
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            text = "Accept Wastewander Justice from Chief Engineer Bilgewhizzle.",
            id = "accept-1690-wastewander-justice",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1690, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            route = {
                { y = 0.2227, mapID = 1446, label = "Haughty Modiste", offMapText = "Travel to Haughty Modiste in Tanaris.", x = 0.6656 },
            },
            text = "Accept Pirate Hats Ahoy! from Haughty Modiste.",
            id = "accept-8365-pirate-hats-ahoy",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 8365, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            route = {
                { y = 0.2236, mapID = 1446, label = "Yeh'kinya", offMapText = "Travel to Yeh'kinya in Tanaris.", x = 0.6699 },
            },
            text = "Accept Screecher Spirits from Yeh'kinya.",
            id = "accept-3520-screecher-spirits",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3520, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            route = {
                { y = 0.2389, mapID = 1446, label = "Security Chief Bilgewhizzle", offMapText = "Travel to Security Chief Bilgewhizzle in Tanaris.", x = 0.6706 },
            },
            text = "Accept Southsea Shakedown from Security Chief Bilgewhizzle.",
            id = "accept-8366-southsea-shakedown",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 8366, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            route = {
                { y = 0.2398, mapID = 1446, label = "Stoley", offMapText = "Travel to Stoley in Tanaris.", x = 0.6711 },
            },
            text = "Turn in Stoley's Debt to Stoley.",
            id = "turnin-2872-stoley-s-debt",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2872, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            route = {
                { y = 0.2398, mapID = 1446, label = "Stoley", offMapText = "Travel to Stoley in Tanaris.", x = 0.6711 },
            },
            text = "Accept Stoley's Shipment from Stoley.",
            id = "accept-2873-stoley-s-shipment",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2873, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1707-1-wastewander-water-pouch",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Collect 5 Wastewander Water Pouch.",
            complete = {
                questObjective = { id = 1707, index = 1, text = "Wastewander Water Pouch", count = 5 },
            },
            route = {
                { mapID = 1446, x = 0.628, y = 0.304, label = "Wastewander Water Pouch", offMapText = "Travel to Wastewander Water Pouch." },
            },
            sourceStep = 21,
            priority = 240,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1707-water-pouch-bounty" },
        },
        {
            id = "objective-1690-1-wastewander-bandit",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Kill 10 Wastewander Bandit.",
            complete = {
                questObjective = { id = 1690, index = 1, text = "Wastewander Bandit", count = 10 },
            },
            route = {
                { mapID = 1446, x = 0.628, y = 0.304, label = "Wastewander Bandit", offMapText = "Travel to Wastewander Bandit." },
            },
            sourceStep = 22,
            priority = 250,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1690-wastewander-justice" },
        },
        {
            id = "objective-1690-2-wastewander-thief",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Kill 10 Wastewander Thief.",
            complete = {
                questObjective = { id = 1690, index = 2, text = "Wastewander Thief", count = 10 },
            },
            route = {
                { mapID = 1446, x = 0.628, y = 0.304, label = "Wastewander Thief", offMapText = "Travel to Wastewander Thief." },
            },
            sourceStep = 22,
            priority = 260,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1690-wastewander-justice" },
        },
        {
            priority = 270,
            text = "Turn in Wastewander Justice to Chief Engineer Bilgewhizzle.",
            route = {
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            dependsOn = {
                "accept-1690-wastewander-justice",
                "objective-1690-1-wastewander-bandit",
                "objective-1690-2-wastewander-thief",
            },
            id = "turnin-1690-wastewander-justice",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1690, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            text = "Turn in Water Pouch Bounty to Spigot Operator Luglunket.",
            route = {
                { y = 0.2844, mapID = 1446, label = "Spigot Operator Luglunket", offMapText = "Travel to Spigot Operator Luglunket in Tanaris.", x = 0.5248 },
            },
            dependsOn = { "accept-1707-water-pouch-bounty", "objective-1707-1-wastewander-water-pouch" },
            id = "turnin-1707-water-pouch-bounty",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1707, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-objective-1452-1-fire-roc",
            kind = "note",
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 1452,
            priority = 290,
        },
        {
            priority = 300,
            route = {
                { y = 0.3516, mapID = 1446, label = "Fire Roc", offMapText = "Travel to Fire Roc.", x = 0.4991 },
            },
            text = "Collect 3 Roc Gizzard.",
            id = "objective-1452-1-fire-roc",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1452, text = "Fire Roc", index = 1, count = 3 },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1451 },
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
