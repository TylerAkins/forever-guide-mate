local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Tanaris",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-tanaris",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 41 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-1707-water-pouch-bounty",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1707,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.2844, mapID = 1446, label = "Spigot Operator Luglunket", offMapText = "Travel to Spigot Operator Luglunket in Tanaris.", x = 0.5248 },
            },
            text = "Accept Water Pouch Bounty from Spigot Operator Luglunket.",
            id = "accept-1707-water-pouch-bounty",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1707, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-243-into-the-field",
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
            checkpointQuest = 243,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            text = "Turn in Into the Field to Chief Engineer Bilgewhizzle.",
            id = "turnin-243-into-the-field",
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
                quest = { id = 243, state = "completed" },
            },
            sourceStep = 7,
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
            priority = 50,
            route = {
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            text = "Accept Slake That Thirst from Chief Engineer Bilgewhizzle.",
            id = "accept-379-slake-that-thirst",
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
                quest = { id = 379, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 243 },
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
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            text = "Accept Wastewander Justice from Chief Engineer Bilgewhizzle.",
            id = "accept-1690-wastewander-justice",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1690, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.2236, mapID = 1446, label = "Yeh'kinya", offMapText = "Travel to Yeh'kinya in Tanaris.", x = 0.6699 },
            },
            text = "Accept Screecher Spirits from Yeh'kinya.",
            id = "accept-3520-screecher-spirits",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 3520, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.2398, mapID = 1446, label = "Stoley", offMapText = "Travel to Stoley in Tanaris.", x = 0.6711 },
            },
            text = "Turn in Stoley's Debt to Stoley.",
            id = "turnin-2872-stoley-s-debt",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 2872, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1690-1-wastewander-bandit",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
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
            sourceStep = 15,
            priority = 90,
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
                    { faction = "Horde" },
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
            sourceStep = 15,
            priority = 100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1690-wastewander-justice" },
        },
        {
            priority = 110,
            text = "For Slake That Thirst: Bring 5 Wastewander Water Pouches to Chief Engineer Bilgewhizzle in Gadgetzan.",
            id = "objective-379-quest-work",
            kind = "objective",
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
                quest = { id = 379, state = "complete" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 243 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-379-slake-that-thirst" },
        },
        {
            priority = 120,
            text = "Turn in Slake That Thirst to Chief Engineer Bilgewhizzle.",
            route = {
                { y = 0.2851, mapID = 1446, label = "Chief Engineer Bilgewhizzle", offMapText = "Travel to Chief Engineer Bilgewhizzle in Tanaris.", x = 0.5246 },
            },
            dependsOn = { "accept-379-slake-that-thirst", "objective-379-quest-work" },
            id = "turnin-379-slake-that-thirst",
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
                quest = { id = 379, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 243 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
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
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1690, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 140,
            text = "For Water Pouch Bounty: Bring 5 Wastewander Water Pouches to Spigot Operator Luglunket in Gadgetzan.",
            route = {
                { mapID = 1446, x = 0.628, y = 0.304, label = "Wastewander Water Pouch", offMapText = "Travel to Wastewander Water Pouch." },
            },
            id = "objective-1707-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1707, state = "complete" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1707-water-pouch-bounty" },
        },
        {
            priority = 150,
            text = "Turn in Water Pouch Bounty to Spigot Operator Luglunket.",
            route = {
                { y = 0.2844, mapID = 1446, label = "Spigot Operator Luglunket", offMapText = "Travel to Spigot Operator Luglunket in Tanaris.", x = 0.5248 },
            },
            dependsOn = { "accept-1707-water-pouch-bounty", "objective-1707-quest-work" },
            id = "turnin-1707-water-pouch-bounty",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            complete = {
                quest = { id = 1707, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Turn in Rumors for Kravel to Kravel Koalbeard.",
            id = "turnin-1117-rumors-for-kravel",
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
                quest = { id = 1117, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1116 },
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
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Back to Booty Bay from Kravel Koalbeard.",
            id = "accept-1118-back-to-booty-bay",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 1118, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1117 },
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
                { y = 0.7713, mapID = 1441, label = "Fizzle Brassbolts", offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.", x = 0.7806 },
            },
            text = "Turn in News for Fizzle to Fizzle Brassbolts.",
            id = "turnin-1137-news-for-fizzle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1137, state = "completed" },
            },
            sourceStep = 24,
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
            priority = 190,
            route = {
                { y = 0.7588, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            text = "Turn in Goblin Sponsorship to Pozzik.",
            id = "turnin-1183-goblin-sponsorship",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1183, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1182 },
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
                { y = 0.7588, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            text = "Accept The Eighteenth Pilot from Pozzik.",
            id = "accept-1186-the-eighteenth-pilot",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1186, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1183 },
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
                { y = 0.7588, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            text = "Accept Keeping Pace from Pozzik.",
            id = "accept-1190-keeping-pace",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1190, state = "activeOrCompleted" },
            },
            sourceStep = 25,
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
            priority = 220,
            text = "Turn in The Eighteenth Pilot to Razzeric.",
            route = {
                { y = 0.7609, mapID = 1441, label = "Razzeric", offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033 },
            },
            dependsOn = { "accept-1186-the-eighteenth-pilot" },
            id = "turnin-1186-the-eighteenth-pilot",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1186, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1183 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            route = {
                { y = 0.7609, mapID = 1441, label = "Razzeric", offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033 },
            },
            text = "Accept Razzeric's Tweaking from Razzeric.",
            id = "accept-1187-razzeric-s-tweaking",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1187, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1186 },
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
                { y = 0.7702, mapID = 1441, label = "Zamek", offMapText = "Travel to Zamek in Thousand Needles.", x = 0.7981 },
            },
            text = "Accept Zamek's Distraction from Zamek.",
            id = "accept-1191-zamek-s-distraction",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1191, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            text = "Turn in Keeping Pace.",
            route = {
                { y = 0.7738, mapID = 1441, label = "Keeping Pace", offMapText = "Travel to Keeping Pace.", x = 0.7721 },
            },
            dependsOn = { "accept-1190-keeping-pace" },
            id = "turnin-1190-keeping-pace",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1190, state = "completed" },
            },
            sourceStep = 28,
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
            priority = 260,
            route = {
                { y = 0.7738, mapID = 1441, label = "Rizzle's Schematics", offMapText = "Travel to Rizzle's Schematics.", x = 0.7721 },
            },
            text = "Accept Rizzle's Schematics.",
            id = "accept-1194-rizzle-s-schematics",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1194, state = "activeOrCompleted" },
            },
            sourceStep = 28,
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
            priority = 270,
            text = "Turn in Rizzle's Schematics to Pozzik.",
            route = {
                { y = 0.7588, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            dependsOn = { "accept-1194-rizzle-s-schematics" },
            id = "turnin-1194-rizzle-s-schematics",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1194, state = "completed" },
            },
            sourceStep = 29,
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
    },
    casualSpine = true,
    routeMode = "ordered",
})
