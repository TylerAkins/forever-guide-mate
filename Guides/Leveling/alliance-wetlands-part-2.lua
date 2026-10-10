local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Wetlands",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-wetlands-part-2",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 27 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-281-reclaiming-goods",
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
            checkpointQuest = 281,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.5853, mapID = 1437, label = "Karl Boran", offMapText = "Travel to Karl Boran in Wetlands.", x = 0.0831 },
            },
            text = "Accept Reclaiming Goods from Karl Boran.",
            id = "accept-281-reclaiming-goods",
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
                quest = { id = 281, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 279 },
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
                { y = 0.5571, mapID = 1437, label = "James Halloran", offMapText = "Travel to James Halloran in Wetlands.", x = 0.0851 },
            },
            text = "Accept Apprentice's Duties from James Halloran.",
            id = "accept-471-apprentice-s-duties",
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
                quest = { id = 471, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 484 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-289-the-cursed-crew",
            kind = "note",
            text = "Reach level 22 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 22 },
            },
            requiredLevel = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 289,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.5967, mapID = 1437, label = "First Mate Fitzsimmons", offMapText = "Travel to First Mate Fitzsimmons in Wetlands.", x = 0.1089 },
            },
            text = "Accept The Cursed Crew from First Mate Fitzsimmons.",
            id = "accept-289-the-cursed-crew",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 289, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 288 },
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
                { y = 0.6059, mapID = 1437, label = "Glorin Steelbrow", offMapText = "Travel to Glorin Steelbrow in Wetlands.", x = 0.1059 },
            },
            text = "Turn in The Doomed Fleet to Glorin Steelbrow.",
            id = "turnin-270-the-doomed-fleet",
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
                quest = { id = 270, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 269 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-472-fall-of-dun-modr",
            kind = "note",
            text = "Reach level 25 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 25 },
            },
            requiredLevel = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 472,
            priority = 70,
        },
        {
            priority = 80,
            route = {
                { y = 0.559, mapID = 1437, label = "Harlo Barnaby", offMapText = "Travel to Harlo Barnaby in Wetlands.", x = 0.1085 },
            },
            text = "Accept Fall of Dun Modr from Harlo Barnaby.",
            id = "accept-472-fall-of-dun-modr",
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
                quest = { id = 472, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { y = 0.5749, mapID = 1437, label = "Captain Stoutfist", offMapText = "Travel to Captain Stoutfist in Wetlands.", x = 0.0986 },
            },
            text = "Accept War Banners from Captain Stoutfist.",
            id = "accept-464-war-banners",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 464, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "Turn in Reclaiming Goods.",
            route = {
                { y = 0.4138, mapID = 1437, label = "Reclaiming Goods", offMapText = "Travel to Reclaiming Goods.", x = 0.1351 },
            },
            dependsOn = { "accept-281-reclaiming-goods" },
            id = "turnin-281-reclaiming-goods",
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
                quest = { id = 281, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 279 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            route = {
                { y = 0.4138, mapID = 1437, label = "The Search Continues", offMapText = "Travel to The Search Continues.", x = 0.1351 },
            },
            text = "Accept The Search Continues.",
            id = "accept-284-the-search-continues",
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
                quest = { id = 284, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 281 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            text = "Turn in The Search Continues.",
            route = {
                { y = 0.3821, mapID = 1437, label = "The Search Continues", offMapText = "Travel to The Search Continues.", x = 0.1361 },
            },
            dependsOn = { "accept-284-the-search-continues" },
            id = "turnin-284-the-search-continues",
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
                quest = { id = 284, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 281 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            route = {
                { y = 0.3821, mapID = 1437, label = "Search More Hovels", offMapText = "Travel to Search More Hovels.", x = 0.1361 },
            },
            text = "Accept Search More Hovels.",
            id = "accept-285-search-more-hovels",
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
                quest = { id = 285, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            text = "Turn in Search More Hovels.",
            route = {
                { y = 0.3481, mapID = 1437, label = "Search More Hovels", offMapText = "Travel to Search More Hovels.", x = 0.1395 },
            },
            dependsOn = { "accept-285-search-more-hovels" },
            id = "turnin-285-search-more-hovels",
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
                quest = { id = 285, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            route = {
                { y = 0.3481, mapID = 1437, label = "Return the Statuette", offMapText = "Travel to Return the Statuette.", x = 0.1395 },
            },
            text = "Accept Return the Statuette.",
            id = "accept-286-return-the-statuette",
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
                quest = { id = 286, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 285 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "Collect 1 Snellig's Snuffbox.",
            route = {
                { y = 0.3001, mapID = 1437, label = "First Mate Snellig", offMapText = "Travel to First Mate Snellig.", x = 0.1408 },
            },
            dependsOn = { "accept-289-the-cursed-crew" },
            id = "objective-289-3-first-mate-snellig",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 289, text = "First Mate Snellig", index = 3, count = 1 },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 288 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-289-2-cursed-marine",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 5 Cursed Marine.",
            complete = {
                questObjective = { id = 289, index = 2, text = "Cursed Marine", count = 5 },
            },
            route = {
                { mapID = 1437, x = 0.138, y = 0.29600000000000004, label = "Cursed Marine", offMapText = "Travel to Cursed Marine." },
            },
            sourceStep = 12,
            priority = 170,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 288 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-289-the-cursed-crew" },
        },
        {
            id = "objective-289-1-cursed-sailor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 13 Cursed Sailor.",
            complete = {
                questObjective = { id = 289, index = 1, text = "Cursed Sailor", count = 13 },
            },
            route = {
                { mapID = 1437, x = 0.138, y = 0.29600000000000004, label = "Cursed Sailor", offMapText = "Travel to Cursed Sailor." },
            },
            sourceStep = 12,
            priority = 180,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 288 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-289-the-cursed-crew" },
        },
        {
            priority = 190,
            text = "Collect 6 Giant Crocolisk Skin.",
            route = {
                { y = 0.274, mapID = 1437, label = "Giant Wetlands Crocolisk", offMapText = "Travel to Giant Wetlands Crocolisk.", x = 0.164 },
            },
            dependsOn = { "accept-471-apprentice-s-duties" },
            id = "objective-471-1-giant-wetlands-crocolisk",
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
                questObjective = { id = 471, text = "Giant Wetlands Crocolisk", index = 1, count = 6 },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 484 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 200,
            route = {
                { y = 0.284, mapID = 1437, label = "Mosshide Brute", offMapText = "Travel to Mosshide Brute.", x = 0.304 },
            },
            text = "Collect 9 Crude Flint.",
            id = "objective-277-1-mosshide-brute",
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
                questObjective = { id = 277, text = "Mosshide Brute", index = 1, count = 9 },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 276 },
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
                { mapID = 1437, x = 0.3818, y = 0.5089, label = "Ormer Ironbraid", offMapText = "Travel to Ormer Ironbraid in Wetlands." },
            },
            text = "Accept Ormer's Revenge from Ormer Ironbraid.",
            id = "accept-295-ormer-s-revenge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 295, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 294 },
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
                { y = 0.5239, mapID = 1437, label = "Prospector Whelgar", offMapText = "Travel to Prospector Whelgar in Wetlands.", x = 0.3881 },
            },
            text = "Accept Uncovering the Past from Prospector Whelgar.",
            id = "accept-299-uncovering-the-past",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 299, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-295-1-mottled-scytheclaw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 10 Mottled Scytheclaw.",
            complete = {
                questObjective = { id = 295, index = 1, text = "Mottled Scytheclaw", count = 10 },
            },
            route = {
                { mapID = 1437, x = 0.35200000000000004, y = 0.486, label = "Mottled Scytheclaw", offMapText = "Travel to Mottled Scytheclaw." },
            },
            sourceStep = 17,
            priority = 230,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 294 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-295-ormer-s-revenge" },
        },
        {
            id = "objective-295-2-mottled-razormaw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 10 Mottled Razormaw.",
            complete = {
                questObjective = { id = 295, index = 2, text = "Mottled Razormaw", count = 10 },
            },
            route = {
                { mapID = 1437, x = 0.35200000000000004, y = 0.486, label = "Mottled Razormaw", offMapText = "Travel to Mottled Razormaw." },
            },
            sourceStep = 17,
            priority = 240,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 294 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-295-ormer-s-revenge" },
        },
        {
            priority = 250,
            text = "Turn in Ormer's Revenge to Ormer Ironbraid.",
            route = {
                { mapID = 1437, x = 0.3818, y = 0.5089, label = "Ormer Ironbraid", offMapText = "Travel to Ormer Ironbraid in Wetlands." },
            },
            dependsOn = { "accept-295-ormer-s-revenge", "objective-295-1-mottled-scytheclaw", "objective-295-2-mottled-razormaw" },
            id = "turnin-295-ormer-s-revenge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 295, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 294 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            route = {
                { mapID = 1437, x = 0.3818, y = 0.5089, label = "Ormer Ironbraid", offMapText = "Travel to Ormer Ironbraid in Wetlands." },
            },
            text = "Accept Ormer's Revenge from Ormer Ironbraid.",
            id = "accept-296-ormer-s-revenge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 296, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 295 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-299-4-neru-fragment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Neru Fragment.",
            complete = {
                questObjective = { id = 299, index = 4, text = "Neru Fragment", count = 1 },
            },
            route = {
                { mapID = 1437, x = 0.3447, y = 0.4604, label = "Neru Fragment", offMapText = "Travel to Neru Fragment." },
            },
            sourceStep = 20,
            priority = 270,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-299-uncovering-the-past" },
        },
        {
            id = "objective-299-3-golm-fragment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Golm Fragment.",
            complete = {
                questObjective = { id = 299, index = 3, text = "Golm Fragment", count = 1 },
            },
            route = {
                { mapID = 1437, x = 0.35600000000000004, y = 0.479, label = "Golm Fragment", offMapText = "Travel to Golm Fragment." },
            },
            sourceStep = 21,
            priority = 280,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-299-uncovering-the-past" },
        },
        {
            id = "objective-299-2-modr-fragment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Modr Fragment.",
            complete = {
                questObjective = { id = 299, index = 2, text = "Modr Fragment", count = 1 },
            },
            route = {
                { mapID = 1437, x = 0.35600000000000004, y = 0.479, label = "Modr Fragment", offMapText = "Travel to Modr Fragment." },
            },
            sourceStep = 22,
            priority = 290,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-299-uncovering-the-past" },
        },
        {
            id = "objective-299-1-ados-fragment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Ados Fragment.",
            complete = {
                questObjective = { id = 299, index = 1, text = "Ados Fragment", count = 1 },
            },
            route = {
                { mapID = 1437, x = 0.35600000000000004, y = 0.479, label = "Ados Fragment", offMapText = "Travel to Ados Fragment." },
            },
            sourceStep = 23,
            priority = 300,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-299-uncovering-the-past" },
        },
        {
            priority = 310,
            text = "For Ormer's Revenge: Ormer Ironbraid at the Whelgar Excavation Site wants you to kill Sarltooth and return to him with one of his talons once the task is fulfilled.",
            id = "objective-296-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 296, state = "complete" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 295 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-296-ormer-s-revenge" },
        },
        {
            priority = 320,
            text = "Turn in Ormer's Revenge to Ormer Ironbraid.",
            route = {
                { mapID = 1437, x = 0.3818, y = 0.5089, label = "Ormer Ironbraid", offMapText = "Travel to Ormer Ironbraid in Wetlands." },
            },
            dependsOn = { "accept-296-ormer-s-revenge", "objective-296-quest-work" },
            id = "turnin-296-ormer-s-revenge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 296, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 295 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            text = "Turn in Uncovering the Past to Prospector Whelgar.",
            route = {
                { y = 0.5239, mapID = 1437, label = "Prospector Whelgar", offMapText = "Travel to Prospector Whelgar in Wetlands.", x = 0.3881 },
            },
            dependsOn = {
                "accept-299-uncovering-the-past",
                "objective-299-4-neru-fragment",
                "objective-299-3-golm-fragment",
                "objective-299-2-modr-fragment",
                "objective-299-1-ados-fragment",
            },
            id = "turnin-299-uncovering-the-past",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 299, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            text = "Collect 8 Dragonmaw War Banner.",
            route = {
                { mapID = 1437, x = 0.41, y = 0.396, label = "Dragonmaw War Banner", offMapText = "Travel to Dragonmaw War Banner." },
            },
            dependsOn = { "accept-464-war-banners" },
            id = "objective-464-1-dragonmaw-raider",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 464, text = "Dragonmaw Raider", index = 1, count = 8 },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            text = "Turn in Fire Taboo to Rethiel the Greenwarden.",
            route = {
                { y = 0.404, mapID = 1437, label = "Rethiel the Greenwarden", offMapText = "Travel to Rethiel the Greenwarden in Wetlands.", x = 0.5637 },
            },
            dependsOn = { "objective-277-1-mosshide-brute" },
            id = "turnin-277-fire-taboo",
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
                quest = { id = 277, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 276 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            route = {
                { y = 0.404, mapID = 1437, label = "Rethiel the Greenwarden", offMapText = "Travel to Rethiel the Greenwarden in Wetlands.", x = 0.5637 },
            },
            text = "Accept Blisters on The Land from Rethiel the Greenwarden.",
            id = "accept-275-blisters-on-the-land",
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
                quest = { id = 275, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 277 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-335-2-musquash-root",
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
            text = "Collect 1 Musquash Root.",
            complete = {
                questObjective = { id = 335, index = 2, text = "Musquash Root", count = 1 },
            },
            route = {
                { mapID = 1437, x = 0.6476000000000001, y = 0.7529, label = "Musquash Root", offMapText = "Travel to Musquash Root." },
            },
            sourceStep = 28,
            priority = 370,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            text = "Turn in The Cursed Crew to First Mate Fitzsimmons.",
            route = {
                { y = 0.5967, mapID = 1437, label = "First Mate Fitzsimmons", offMapText = "Travel to First Mate Fitzsimmons in Wetlands.", x = 0.1089 },
            },
            dependsOn = {
                "accept-289-the-cursed-crew",
                "objective-289-3-first-mate-snellig",
                "objective-289-2-cursed-marine",
                "objective-289-1-cursed-sailor",
            },
            id = "turnin-289-the-cursed-crew",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 289, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 288 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            route = {
                { y = 0.5967, mapID = 1437, label = "First Mate Fitzsimmons", offMapText = "Travel to First Mate Fitzsimmons in Wetlands.", x = 0.1089 },
            },
            text = "Accept Lifting the Curse from First Mate Fitzsimmons.",
            id = "accept-290-lifting-the-curse",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 290, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 289 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            text = "Turn in Return the Statuette to Karl Boran.",
            route = {
                { y = 0.5854, mapID = 1437, label = "Karl Boran", offMapText = "Travel to Karl Boran in Wetlands.", x = 0.0831 },
            },
            dependsOn = { "accept-286-return-the-statuette" },
            id = "turnin-286-return-the-statuette",
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
                quest = { id = 286, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 285 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            text = "Turn in Apprentice's Duties to James Halloran.",
            route = {
                { y = 0.5571, mapID = 1437, label = "James Halloran", offMapText = "Travel to James Halloran in Wetlands.", x = 0.0851 },
            },
            dependsOn = { "accept-471-apprentice-s-duties", "objective-471-1-giant-wetlands-crocolisk" },
            id = "turnin-471-apprentice-s-duties",
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
                quest = { id = 471, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 484 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            text = "Turn in War Banners to Captain Stoutfist.",
            route = {
                { y = 0.5749, mapID = 1437, label = "Captain Stoutfist", offMapText = "Travel to Captain Stoutfist in Wetlands.", x = 0.0986 },
            },
            dependsOn = { "accept-464-war-banners", "objective-464-1-dragonmaw-raider" },
            id = "turnin-464-war-banners",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 464, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            route = {
                { y = 0.5749, mapID = 1437, label = "Captain Stoutfist", offMapText = "Travel to Captain Stoutfist in Wetlands.", x = 0.0986 },
            },
            text = "Accept Nek'rosh's Gambit from Captain Stoutfist.",
            id = "accept-465-nek-rosh-s-gambit",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 465, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 464 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            text = "Collect 1 Intrepid Strongbox Key.",
            route = {
                { y = 0.2361, mapID = 1437, label = "Captain Halyndor", offMapText = "Travel to Captain Halyndor.", x = 0.1545 },
            },
            dependsOn = { "accept-290-lifting-the-curse" },
            id = "objective-290-1-captain-halyndor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 290, text = "Captain Halyndor", index = 1, count = 1 },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 289 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            text = "Turn in Lifting the Curse.",
            route = {
                { y = 0.2402, mapID = 1437, label = "Lifting the Curse", offMapText = "Travel to Lifting the Curse.", x = 0.1437 },
            },
            dependsOn = { "accept-290-lifting-the-curse", "objective-290-1-captain-halyndor" },
            id = "turnin-290-lifting-the-curse",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 290, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 289 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { y = 0.2402, mapID = 1437, label = "The Eye of Paleth", offMapText = "Travel to The Eye of Paleth.", x = 0.1437 },
            },
            text = "Accept The Eye of Paleth.",
            id = "accept-292-the-eye-of-paleth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 292, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 290 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Kill 12 Fen Creeper.",
            route = {
                { y = 0.469, mapID = 1437, label = "Fen Creeper", offMapText = "Travel to Fen Creeper.", x = 0.474 },
            },
            dependsOn = { "accept-275-blisters-on-the-land" },
            id = "objective-275-1-fen-creeper",
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
                questObjective = { id = 275, text = "Fen Creeper", index = 1, count = 12 },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 277 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            text = "Turn in Nek'rosh's Gambit.",
            route = {
                { y = 0.469, mapID = 1437, label = "Nek'rosh's Gambit", offMapText = "Travel to Nek'rosh's Gambit.", x = 0.474 },
            },
            dependsOn = { "accept-465-nek-rosh-s-gambit" },
            id = "turnin-465-nek-rosh-s-gambit",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 465, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 464 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            text = "Kill 12 Fen Creeper.",
            route = {
                { y = 0.352, mapID = 1437, label = "Fen Creeper", offMapText = "Travel to Fen Creeper.", x = 0.464 },
            },
            dependsOn = { "accept-275-blisters-on-the-land" },
            id = "objective-275-1-fen-creeper-2",
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
                questObjective = { id = 275, text = "Fen Creeper", index = 1, count = 12 },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 277 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            text = "Turn in Blisters on The Land to Rethiel the Greenwarden.",
            route = {
                { y = 0.404, mapID = 1437, label = "Rethiel the Greenwarden", offMapText = "Travel to Rethiel the Greenwarden in Wetlands.", x = 0.5637 },
            },
            dependsOn = { "accept-275-blisters-on-the-land", "objective-275-1-fen-creeper", "objective-275-1-fen-creeper-2" },
            id = "turnin-275-blisters-on-the-land",
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
                quest = { id = 275, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 277 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-631-the-thandol-span",
            kind = "note",
            text = "Reach level 28 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 28 },
            },
            requiredLevel = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 631,
            priority = 510,
        },
        {
            priority = 520,
            route = {
                { y = 0.1821, mapID = 1437, label = "Rhag Garmason", offMapText = "Travel to Rhag Garmason in Wetlands.", x = 0.4992 },
            },
            text = "Accept The Thandol Span from Rhag Garmason.",
            id = "accept-631-the-thandol-span",
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
                quest = { id = 631, state = "activeOrCompleted" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            text = "Turn in Fall of Dun Modr to Longbraid the Grim.",
            route = {
                { y = 0.1826, mapID = 1437, label = "Longbraid the Grim", offMapText = "Travel to Longbraid the Grim in Wetlands.", x = 0.498 },
            },
            dependsOn = { "accept-472-fall-of-dun-modr" },
            id = "turnin-472-fall-of-dun-modr",
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
                quest = { id = 472, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 540,
            text = "Turn in The Thandol Span.",
            route = {
                { y = 0.0811, mapID = 1437, label = "The Thandol Span", offMapText = "Travel to The Thandol Span.", x = 0.5136 },
            },
            dependsOn = { "accept-631-the-thandol-span" },
            id = "turnin-631-the-thandol-span",
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
                quest = { id = 631, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            route = {
                { y = 0.0811, mapID = 1437, label = "The Thandol Span", offMapText = "Travel to The Thandol Span.", x = 0.5136 },
            },
            text = "Accept The Thandol Span.",
            id = "accept-632-the-thandol-span",
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
                quest = { id = 632, state = "activeOrCompleted" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 631 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            text = "Turn in The Thandol Span to Rhag Garmason.",
            route = {
                { y = 0.1822, mapID = 1437, label = "Rhag Garmason", offMapText = "Travel to Rhag Garmason in Wetlands.", x = 0.4992 },
            },
            dependsOn = { "accept-632-the-thandol-span" },
            id = "turnin-632-the-thandol-span",
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
                quest = { id = 632, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 631 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            route = {
                { y = 0.1822, mapID = 1437, label = "Rhag Garmason", offMapText = "Travel to Rhag Garmason in Wetlands.", x = 0.4992 },
            },
            text = "Accept The Thandol Span from Rhag Garmason.",
            id = "accept-633-the-thandol-span",
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
                quest = { id = 633, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 632 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-637-sully-balloo-s-letter",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Loot Waterlogged Envelope from Waterlogged Letter. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Waterlogged Envelope", minCount = 1 },
                    },
                    {
                        quest = { id = 637, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 580,
        },
        {
            priority = 590,
            text = "Use the Waterlogged Envelope to accept Sully Balloo's Letter.",
            id = "accept-637-sully-balloo-s-letter",
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
                quest = { id = 637, state = "activeOrCompleted" },
            },
            sourceStep = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 600,
            text = "For The Thandol Span: Destroy the cache of explosives.",
            id = "objective-633-quest-work",
            kind = "objective",
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
                quest = { id = 633, state = "complete" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 632 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-633-the-thandol-span" },
        },
        {
            priority = 610,
            text = "Turn in The Thandol Span to Rhag Garmason.",
            route = {
                { y = 0.1822, mapID = 1437, label = "Rhag Garmason", offMapText = "Travel to Rhag Garmason in Wetlands.", x = 0.4992 },
            },
            dependsOn = { "accept-633-the-thandol-span", "objective-633-quest-work" },
            id = "turnin-633-the-thandol-span",
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
                quest = { id = 633, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 632 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 620,
            route = {
                { y = 0.1822, mapID = 1437, label = "Rhag Garmason", offMapText = "Travel to Rhag Garmason in Wetlands.", x = 0.4992 },
            },
            text = "Accept Plea To The Alliance from Rhag Garmason.",
            id = "accept-634-plea-to-the-alliance",
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
                quest = { id = 634, state = "activeOrCompleted" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 633 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 630,
            text = "Turn in Plea To The Alliance to Captain Nials.",
            route = {
                { y = 0.4755, mapID = 1417, label = "Captain Nials", offMapText = "Travel to Captain Nials in Arathi Highlands.", x = 0.4583 },
            },
            dependsOn = { "accept-634-plea-to-the-alliance" },
            id = "turnin-634-plea-to-the-alliance",
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
                quest = { id = 634, state = "completed" },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 633 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            route = {
                { y = 0.57, mapID = 1424, label = "Snapjaw", offMapText = "Travel to Snapjaw.", x = 0.552 },
            },
            text = "Kill Snapjaw. Keep 10 Turtle Meat for the later quest pickup.",
            id = "collect-before-pickup-objective-555-1-snapjaw",
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
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            referenceQuest = 555,
        },
        {
            priority = 650,
            text = "Turn in The Eye of Paleth to Glorin Steelbrow.",
            route = {
                { y = 0.6059, mapID = 1437, label = "Glorin Steelbrow", offMapText = "Travel to Glorin Steelbrow in Wetlands.", x = 0.1058 },
            },
            dependsOn = { "accept-292-the-eye-of-paleth" },
            id = "turnin-292-the-eye-of-paleth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 292, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 290 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            route = {
                { y = 0.6059, mapID = 1437, label = "Glorin Steelbrow", offMapText = "Travel to Glorin Steelbrow in Wetlands.", x = 0.1058 },
            },
            text = "Accept Cleansing the Eye from Glorin Steelbrow.",
            id = "accept-293-cleansing-the-eye",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 22 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 293, state = "activeOrCompleted" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 292 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 670,
            route = {
                { y = 0.6059, mapID = 1437, label = "Glorin Steelbrow", offMapText = "Travel to Glorin Steelbrow in Wetlands.", x = 0.1058 },
            },
            text = "Accept Lightforge Iron from Glorin Steelbrow.",
            id = "accept-321-lightforge-iron",
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
                quest = { id = 321, state = "activeOrCompleted" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 270 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 680,
            text = "Turn in Lightforge Iron.",
            route = {
                { y = 0.6417, mapID = 1437, label = "Lightforge Iron", offMapText = "Travel to Lightforge Iron.", x = 0.121 },
            },
            dependsOn = { "accept-321-lightforge-iron" },
            id = "turnin-321-lightforge-iron",
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
                quest = { id = 321, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 270 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 690,
            route = {
                { y = 0.6417, mapID = 1437, label = "The Lost Ingots", offMapText = "Travel to The Lost Ingots.", x = 0.121 },
            },
            text = "Accept The Lost Ingots.",
            id = "accept-324-the-lost-ingots",
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
                quest = { id = 324, state = "activeOrCompleted" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 321 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            text = "Collect 5 Lightforge Ingot.",
            route = {
                { y = 0.632, mapID = 1437, label = "Bluegill Raider", offMapText = "Travel to Bluegill Raider.", x = 0.118 },
            },
            dependsOn = { "accept-324-the-lost-ingots" },
            id = "objective-324-1-bluegill-raider",
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
                questObjective = { id = 324, text = "Bluegill Raider", index = 1, count = 5 },
            },
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 321 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            text = "Turn in The Lost Ingots to Glorin Steelbrow.",
            route = {
                { y = 0.6059, mapID = 1437, label = "Glorin Steelbrow", offMapText = "Travel to Glorin Steelbrow in Wetlands.", x = 0.1059 },
            },
            dependsOn = { "accept-324-the-lost-ingots", "objective-324-1-bluegill-raider" },
            id = "turnin-324-the-lost-ingots",
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
                quest = { id = 324, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 321 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 720,
            route = {
                { y = 0.6059, mapID = 1437, label = "Glorin Steelbrow", offMapText = "Travel to Glorin Steelbrow in Wetlands.", x = 0.1059 },
            },
            text = "Accept Blessed Arm from Glorin Steelbrow.",
            id = "accept-322-blessed-arm",
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
                quest = { id = 322, state = "activeOrCompleted" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 324 },
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
