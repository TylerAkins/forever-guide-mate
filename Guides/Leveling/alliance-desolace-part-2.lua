local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Desolace",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-desolace-part-2",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 40 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-261-down-the-scarlet-path",
            kind = "note",
            text = "Reach level 34 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 34 },
            },
            requiredLevel = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 261,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.0791, mapID = 1443, label = "Brother Anton", offMapText = "Travel to Brother Anton in Desolace.", x = 0.6652 },
            },
            text = "Accept Down the Scarlet Path from Brother Anton.",
            id = "accept-261-down-the-scarlet-path",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 34 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 261, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.0963, mapID = 1443, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662 },
            },
            text = "Accept Reagents for Reclaimers Inc. from Kreldig Ungor.",
            id = "accept-1466-reagents-for-reclaimers-inc",
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
                quest = { id = 1466, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1459 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-6134-ghost-o-plasm-round-up",
            kind = "note",
            text = "Reach level 34 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 34 },
            },
            requiredLevel = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6134,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.6182, mapID = 1443, label = "Hornizz Brimbuzzle", offMapText = "Travel to Hornizz Brimbuzzle in Desolace.", x = 0.4783 },
            },
            text = "Accept Ghost-o-plasm Round Up from Hornizz Brimbuzzle.",
            id = "accept-6134-ghost-o-plasm-round-up",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 34 },
                    },
                },
            },
            complete = {
                quest = { id = 6134, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { mapID = 1435, x = 0.6131, y = 0.2325, label = "Draenethyst Shard", offMapText = "Travel to Draenethyst Shard." },
            },
            text = "For Ongeku: Maintain your reputation with the Gelkis, and bring a Draenethyst Shard to Uthek the Wise in the Gelkis Village in Desolace.",
            id = "objective-1373-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1373, state = "complete" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1370 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622 },
            },
            text = "Turn in Ongeku to Uthek the Wise.",
            id = "turnin-1373-ongeku",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1373, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1370 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1373-quest-work" },
        },
        {
            priority = 80,
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622 },
            },
            text = "Accept Khan Jehn from Uthek the Wise.",
            id = "accept-1374-khan-jehn",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1374, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1373 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            text = "Collect 10 Doomwarder Blood.",
            route = {
                { y = 0.824, mapID = 1443, label = "Doomwarder Captain", offMapText = "Travel to Doomwarder Captain.", x = 0.504 },
            },
            dependsOn = { "accept-1466-reagents-for-reclaimers-inc" },
            id = "objective-1466-3-doomwarder-captain",
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
                questObjective = { id = 1466, text = "Doomwarder Captain", index = 3, count = 10 },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1459 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1466-1-felhound-brain",
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
            text = "Collect 10 Felhound Brain.",
            complete = {
                questObjective = { id = 1466, index = 1, text = "Felhound Brain", count = 10 },
            },
            route = {
                { mapID = 1443, x = 0.534, y = 0.772, label = "Felhound Brain", offMapText = "Travel to Felhound Brain." },
            },
            sourceStep = 8,
            priority = 100,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1459 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1466-reagents-for-reclaimers-inc" },
        },
        {
            id = "objective-1466-2-nether-wing",
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
            text = "Collect 10 Nether Wing.",
            complete = {
                questObjective = { id = 1466, index = 2, text = "Nether Wing", count = 10 },
            },
            route = {
                { mapID = 1443, x = 0.542, y = 0.778, label = "Nether Wing", offMapText = "Travel to Nether Wing." },
            },
            sourceStep = 9,
            priority = 110,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1459 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1466-reagents-for-reclaimers-inc" },
        },
        {
            priority = 120,
            text = "Use the Crate of Ghost Magnets beside the large bones in southern Desolace. Kill the Magrami Spectres it attracts and collect 8 Ghost-o-plasm. Pull them away from the magnet before they become hostile.",
            route = {
                { y = 0.9127, mapID = 1443, label = "Crate of Ghost Magnets", offMapText = "Travel to Crate of Ghost Magnets.", x = 0.6381 },
            },
            dependsOn = { "accept-6134-ghost-o-plasm-round-up" },
            id = "objective-6134-1-crate-of-ghost-magnets",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 34 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6134, text = "Crate of Ghost Magnets", index = 1, count = 8 },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-261-1-undead-ravager",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 34 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 30 Undead Ravager.",
            complete = {
                questObjective = { id = 261, index = 1, text = "Undead Ravager", count = 30 },
            },
            route = {
                { mapID = 1443, x = 0.6459999999999999, y = 0.912, label = "Undead Ravager", offMapText = "Travel to Undead Ravager." },
            },
            sourceStep = 11,
            priority = 130,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-261-down-the-scarlet-path" },
        },
        {
            priority = 140,
            text = "Collect 1 Khan Jehn's Head.",
            route = {
                { y = 0.8008, mapID = 1443, label = "Khan Jehn", offMapText = "Travel to Khan Jehn.", x = 0.6639 },
            },
            dependsOn = { "accept-1374-khan-jehn" },
            id = "objective-1374-1-khan-jehn",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1374, text = "Khan Jehn", index = 1, count = 1 },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1373 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            text = "Turn in Ghost-o-plasm Round Up to Hornizz Brimbuzzle.",
            route = {
                { y = 0.6183, mapID = 1443, label = "Hornizz Brimbuzzle", offMapText = "Travel to Hornizz Brimbuzzle in Desolace.", x = 0.4783 },
            },
            dependsOn = { "accept-6134-ghost-o-plasm-round-up", "objective-6134-1-crate-of-ghost-magnets" },
            id = "turnin-6134-ghost-o-plasm-round-up",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 34 },
                    },
                },
            },
            complete = {
                quest = { id = 6134, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 160,
            text = "Turn in Khan Jehn to Uthek the Wise.",
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622 },
            },
            dependsOn = { "accept-1374-khan-jehn", "objective-1374-1-khan-jehn" },
            id = "turnin-1374-khan-jehn",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1374, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1373 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Turn in Rumors for Kravel to Kravel Koalbeard.",
            id = "turnin-1117-rumors-for-kravel",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
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
            id = "level-before-accept-1118-back-to-booty-bay",
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
            checkpointQuest = 1118,
            priority = 180,
        },
        {
            priority = 190,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Back to Booty Bay from Kravel Koalbeard.",
            id = "accept-1118-back-to-booty-bay",
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
            priority = 200,
            route = {
                { y = 0.7712, mapID = 1441, label = "Fizzle Brassbolts", offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.", x = 0.7806 },
            },
            text = "Accept Martek the Exiled from Fizzle Brassbolts.",
            id = "accept-1106-martek-the-exiled",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                },
            },
            complete = {
                quest = { id = 1106, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 1104, 1105 },
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
                { mapID = 1445, x = 0.5407, y = 0.5649000000000001, label = "Razzeric's Tweaking", offMapText = "Travel to Razzeric's Tweaking." },
            },
            text = "Open the Gizmorium Shipping Crate on the Dustwallow coast and collect the Seaforium Booster.",
            id = "objective-1187-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1187, index = 1, count = 1 },
            },
            sourceStep = 25,
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
            priority = 220,
            route = {
                { y = 0.761, mapID = 1441, label = "Razzeric", offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033 },
            },
            text = "Turn in Razzeric's Tweaking to Razzeric.",
            id = "turnin-1187-razzeric-s-tweaking",
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
                quest = { id = 1187, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1186 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1187-quest-work" },
        },
        {
            priority = 230,
            route = {
                { y = 0.761, mapID = 1441, label = "Razzeric", offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033 },
            },
            text = "Accept Safety First from Razzeric.",
            id = "accept-1188-safety-first",
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
                quest = { id = 1188, state = "activeOrCompleted" },
            },
            sourceStep = 25,
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
            priority = 240,
            text = "Turn in Down the Scarlet Path to Brother Anton.",
            route = {
                { y = 0.0791, mapID = 1443, label = "Brother Anton", offMapText = "Travel to Brother Anton in Desolace.", x = 0.6652 },
            },
            dependsOn = { "accept-261-down-the-scarlet-path", "objective-261-1-undead-ravager" },
            id = "turnin-261-down-the-scarlet-path",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 34 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 261, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            route = {
                { y = 0.0791, mapID = 1443, label = "Brother Anton", offMapText = "Travel to Brother Anton in Desolace.", x = 0.6652 },
            },
            text = "Accept Down the Scarlet Path from Brother Anton.",
            id = "accept-1052-down-the-scarlet-path",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 34 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1052, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 261 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            text = "Turn in Reagents for Reclaimers Inc. to Kreldig Ungor.",
            route = {
                { y = 0.0963, mapID = 1443, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662 },
            },
            dependsOn = {
                "accept-1466-reagents-for-reclaimers-inc",
                "objective-1466-3-doomwarder-captain",
                "objective-1466-1-felhound-brain",
                "objective-1466-2-nether-wing",
            },
            id = "turnin-1466-reagents-for-reclaimers-inc",
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
                quest = { id = 1466, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1459 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            route = {
                { y = 0.0963, mapID = 1443, label = "Kreldig Ungor", offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662 },
            },
            text = "Accept Reagents for Reclaimers Inc. from Kreldig Ungor.",
            id = "accept-1467-reagents-for-reclaimers-inc",
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
                quest = { id = 1467, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1466 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 280,
            text = "Turn in Down the Scarlet Path to Raleigh the Devout.",
            route = {
                { y = 0.5835, mapID = 1424, label = "Raleigh the Devout", offMapText = "Travel to Raleigh the Devout in Hillsbrad Foothills.", x = 0.5147 },
            },
            dependsOn = { "accept-1052-down-the-scarlet-path" },
            id = "turnin-1052-down-the-scarlet-path",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 34 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1052, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 261 },
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
