local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Stranglethorn Vale",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-stranglethorn-vale",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 34 },
            },
        },
    },
    goals = {
        {
            id = "level-before-turnin-1180-goblin-sponsorship",
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
            checkpointQuest = 1180,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.7356, mapID = 1434, label = "Wharfmaster Lozgil", offMapText = "Travel to Wharfmaster Lozgil in Stranglethorn Vale.", x = 0.2635 },
            },
            text = "Turn in Goblin Sponsorship to Wharfmaster Lozgil.",
            id = "turnin-1180-goblin-sponsorship",
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
                quest = { id = 1180, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1178 },
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
                { y = 0.7356, mapID = 1434, label = "Wharfmaster Lozgil", offMapText = "Travel to Wharfmaster Lozgil in Stranglethorn Vale.", x = 0.2635 },
            },
            text = "Accept Goblin Sponsorship from Wharfmaster Lozgil.",
            id = "accept-1181-goblin-sponsorship",
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
                quest = { id = 1181, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1180 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1040-passage-to-booty-bay",
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
            checkpointQuest = 1040,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.7408, mapID = 1434, label = "Caravaneer Ruzzgot", offMapText = "Travel to Caravaneer Ruzzgot in Stranglethorn Vale.", x = 0.2737 },
            },
            text = "Turn in Passage to Booty Bay to Caravaneer Ruzzgot.",
            id = "turnin-1040-passage-to-booty-bay",
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
                quest = { id = 1040, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1039 },
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
                { y = 0.7408, mapID = 1434, label = "Caravaneer Ruzzgot", offMapText = "Travel to Caravaneer Ruzzgot in Stranglethorn Vale.", x = 0.2737 },
            },
            text = "Accept The Caravan Road from Caravaneer Ruzzgot.",
            id = "accept-1041-the-caravan-road",
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
                quest = { id = 1041, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1040 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-605-singing-blue-shards",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 605,
            priority = 70,
        },
        {
            priority = 80,
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            text = "Accept Singing Blue Shards from Crank Fizzlebub.",
            id = "accept-605-singing-blue-shards",
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
                quest = { id = 605, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            text = "Accept Investigate the Camp from Krazek.",
            id = "accept-201-investigate-the-camp",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 201, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-198-supplies-to-private-thorsen",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 198,
            priority = 100,
        },
        {
            priority = 110,
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            text = "Accept Supplies to Private Thorsen from Krazek.",
            id = "accept-198-supplies-to-private-thorsen",
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
                quest = { id = 198, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-616-the-haunted-isle",
            kind = "note",
            text = "Reach level 32 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 32 },
            },
            requiredLevel = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 616,
            priority = 120,
        },
        {
            priority = 130,
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            text = "Accept The Haunted Isle from Krazek.",
            id = "accept-616-the-haunted-isle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 616, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-213-hostile-takeover",
            kind = "note",
            text = "Reach level 31 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 31 },
            },
            requiredLevel = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 213,
            priority = 140,
        },
        {
            priority = 150,
            route = {
                { y = 0.7712, mapID = 1434, label = "Kebok", offMapText = "Travel to Kebok in Stranglethorn Vale.", x = 0.27 },
            },
            text = "Accept Hostile Takeover from Kebok.",
            id = "accept-213-hostile-takeover",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            complete = {
                quest = { id = 213, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "Turn in Goblin Sponsorship to Baron Revilgaz.",
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            dependsOn = { "accept-1181-goblin-sponsorship" },
            id = "turnin-1181-goblin-sponsorship",
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
                quest = { id = 1181, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1180 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 170,
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            text = "Accept Goblin Sponsorship from Baron Revilgaz.",
            id = "accept-1182-goblin-sponsorship",
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
                quest = { id = 1182, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1181 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "Turn in The Haunted Isle to Baron Revilgaz.",
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            dependsOn = { "accept-616-the-haunted-isle" },
            id = "turnin-616-the-haunted-isle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 616, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            text = "Accept The Stone of the Tides from Baron Revilgaz.",
            id = "accept-578-the-stone-of-the-tides",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 578, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 616 },
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
                { y = 0.7759, mapID = 1434, label = "Drizzlik", offMapText = "Travel to Drizzlik in Stranglethorn Vale.", x = 0.2829 },
            },
            text = "Accept Supply and Demand from Drizzlik.",
            id = "accept-575-supply-and-demand",
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
                quest = { id = 575, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            text = "Turn in Supplies to Private Thorsen to Private Thorsen.",
            route = {
                { y = 0.0342, mapID = 1434, label = "Private Thorsen", offMapText = "Travel to Private Thorsen in Stranglethorn Vale.", x = 0.3798 },
            },
            dependsOn = { "accept-198-supplies-to-private-thorsen" },
            id = "turnin-198-supplies-to-private-thorsen",
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
                quest = { id = 198, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            route = {
                { y = 0.0333, mapID = 1434, label = "Sergeant Yohwa", offMapText = "Travel to Sergeant Yohwa in Stranglethorn Vale.", x = 0.3802 },
            },
            text = "Accept The Second Rebellion from Sergeant Yohwa.",
            id = "accept-203-the-second-rebellion",
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
                quest = { id = 203, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            route = {
                { y = 0.0333, mapID = 1434, label = "Sergeant Yohwa", offMapText = "Travel to Sergeant Yohwa in Stranglethorn Vale.", x = 0.3802 },
            },
            text = "Accept Bad Medicine from Sergeant Yohwa.",
            id = "accept-204-bad-medicine",
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
                quest = { id = 204, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 240,
            route = {
                { y = 0.0301, mapID = 1434, label = "Lieutenant Doren", offMapText = "Travel to Lieutenant Doren in Stranglethorn Vale.", x = 0.3804 },
            },
            text = "Accept Bookie Herod from Lieutenant Doren.",
            id = "accept-200-bookie-herod",
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
                quest = { id = 200, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 215 },
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
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Turn in Hemet Nesingwary to Hemet Nesingwary.",
            id = "turnin-5762-hemet-nesingwary",
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
                quest = { id = 5762, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3561 },
            },
            text = "Accept Tiger Mastery from Ajeck Rouack.",
            id = "accept-186-tiger-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 186, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 185 },
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
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            text = "Accept Panther Mastery from Sir S. J. Erlgadin.",
            id = "accept-191-panther-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 191, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 190 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-204-2-venom-fern-extract",
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
            text = "Collect 1 Venom Fern Extract.",
            complete = {
                questObjective = { id = 204, index = 2, text = "Venom Fern Extract", count = 1 },
            },
            route = {
                { mapID = 1434, x = 0.441, y = 0.0956, label = "Venom Fern Extract", offMapText = "Travel to Venom Fern Extract." },
            },
            sourceStep = 22,
            priority = 280,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-204-bad-medicine" },
        },
        {
            priority = 290,
            text = "Turn in Bookie Herod.",
            route = {
                { y = 0.0937, mapID = 1434, label = "Bookie Herod", offMapText = "Travel to Bookie Herod.", x = 0.4367 },
            },
            dependsOn = { "accept-200-bookie-herod" },
            id = "turnin-200-bookie-herod",
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
                quest = { id = 200, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 215 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            route = {
                { y = 0.0937, mapID = 1434, label = "The Hidden Key", offMapText = "Travel to The Hidden Key.", x = 0.4367 },
            },
            text = "Accept The Hidden Key.",
            id = "accept-328-the-hidden-key",
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
                quest = { id = 328, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 200 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-204-1-jungle-remedy",
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
            text = "Collect 7 Jungle Remedy.",
            complete = {
                questObjective = { id = 204, index = 1, text = "Jungle Remedy", count = 7 },
            },
            route = {
                { mapID = 1434, x = 0.44, y = 0.11800000000000001, label = "Jungle Remedy", offMapText = "Travel to Jungle Remedy." },
            },
            sourceStep = 24,
            priority = 310,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-204-bad-medicine" },
        },
        {
            id = "objective-203-1-kurzen-jungle-fighter",
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
            text = "Kill 15 Kurzen Jungle Fighter.",
            complete = {
                questObjective = { id = 203, index = 1, text = "Kurzen Jungle Fighter", count = 15 },
            },
            route = {
                { mapID = 1434, x = 0.44, y = 0.11800000000000001, label = "Kurzen Jungle Fighter", offMapText = "Travel to Kurzen Jungle Fighter." },
            },
            sourceStep = 25,
            priority = 320,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-203-the-second-rebellion" },
        },
        {
            priority = 330,
            text = "Collect 10 Singing Crystal Shard.",
            route = {
                { y = 0.09, mapID = 1434, label = "Crystal Spine Basilisk", offMapText = "Travel to Crystal Spine Basilisk.", x = 0.476 },
            },
            dependsOn = { "accept-605-singing-blue-shards" },
            id = "objective-605-1-crystal-spine-basilisk",
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
                questObjective = { id = 605, text = "Crystal Spine Basilisk", index = 1, count = 10 },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            text = "Kill 10 Stranglethorn Tiger.",
            route = {
                { y = 0.128, mapID = 1434, label = "Stranglethorn Tiger", offMapText = "Travel to Stranglethorn Tiger.", x = 0.464 },
            },
            dependsOn = { "accept-186-tiger-mastery" },
            id = "objective-186-1-stranglethorn-tiger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 186, text = "Stranglethorn Tiger", index = 1, count = 10 },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 185 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            text = "Kill Foreman Cozzle at the top of the Venture Co. platform and loot Cozzle's Key.",
            route = {
                { mapID = 1434, x = 0.4265, y = 0.18350000000000002, label = "Foreman Cozzle", offMapText = "Travel to Foreman Cozzle." },
            },
            dependsOn = { "accept-1182-goblin-sponsorship" },
            id = "objective-1182-1-foreman-cozzle",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Cozzle's Key", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 1182, state = "complete" },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1181 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            sourceInstructionStep = 30,
            sourceInstructionIndex = 1,
            checkpointQuest = 1182,
            instructionOnly = true,
            rememberPreparation = 1182,
        },
        {
            priority = 360,
            text = "Use Cozzle's Key to open his footlocker inside the nearby building. Collect the Fuel Regulator Blueprints.",
            route = {
                { mapID = 1434, x = 0.4334, y = 0.2034, label = "Cozzle's Footlocker", offMapText = "Travel to Cozzle's Footlocker." },
            },
            dependsOn = { "accept-1182-goblin-sponsorship" },
            id = "objective-1182-prepared-result",
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
                questObjective = { id = 1182, index = 1, count = 1 },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1181 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-213-1-tumbled-crystal",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            text = "Collect 8 Tumbled Crystal.",
            complete = {
                questObjective = { id = 213, index = 1, text = "Tumbled Crystal", count = 8 },
            },
            route = {
                { mapID = 1434, x = 0.442, y = 0.20199999999999999, label = "Tumbled Crystal", offMapText = "Travel to Tumbled Crystal." },
            },
            sourceStep = 31,
            priority = 370,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-213-hostile-takeover" },
        },
        {
            priority = 380,
            text = "Turn in The Second Rebellion to Sergeant Yohwa.",
            route = {
                { y = 0.0333, mapID = 1434, label = "Sergeant Yohwa", offMapText = "Travel to Sergeant Yohwa in Stranglethorn Vale.", x = 0.3802 },
            },
            dependsOn = { "accept-203-the-second-rebellion", "objective-203-1-kurzen-jungle-fighter" },
            id = "turnin-203-the-second-rebellion",
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
                quest = { id = 203, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 390,
            text = "Turn in Bad Medicine to Sergeant Yohwa.",
            route = {
                { y = 0.0333, mapID = 1434, label = "Sergeant Yohwa", offMapText = "Travel to Sergeant Yohwa in Stranglethorn Vale.", x = 0.3802 },
            },
            dependsOn = { "accept-204-bad-medicine", "objective-204-2-venom-fern-extract", "objective-204-1-jungle-remedy" },
            id = "turnin-204-bad-medicine",
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
                quest = { id = 204, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            route = {
                { y = 0.033, mapID = 1434, label = "Corporal Kaleb", offMapText = "Travel to Corporal Kaleb in Stranglethorn Vale.", x = 0.3774 },
            },
            text = "Accept Krazek's Cookery from Corporal Kaleb.",
            id = "accept-210-krazek-s-cookery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 210, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-575-1-large-river-crocolisk-skin",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                },
            },
            text = "Collect 2 Large River Crocolisk Skin.",
            complete = {
                questObjective = { id = 575, index = 1, text = "Large River Crocolisk Skin", count = 2 },
            },
            route = {
                { mapID = 1434, x = 0.368, y = 0.10400000000000001, label = "Large River Crocolisk Skin", offMapText = "Travel to Large River Crocolisk Skin." },
            },
            sourceStep = 35,
            priority = 410,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-575-supply-and-demand" },
        },
        {
            priority = 420,
            text = "Turn in Tiger Mastery to Ajeck Rouack.",
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3561 },
            },
            dependsOn = { "accept-186-tiger-mastery", "objective-186-1-stranglethorn-tiger" },
            id = "turnin-186-tiger-mastery",
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
                quest = { id = 186, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 185 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3561 },
            },
            text = "Accept Tiger Mastery from Ajeck Rouack.",
            id = "accept-187-tiger-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 187, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 186 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Raptor Mastery from Hemet Nesingwary.",
            id = "accept-194-raptor-mastery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 194, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 450,
            text = "Kill 10 Elder Stranglethorn Tiger.",
            route = {
                { y = 0.142, mapID = 1434, label = "Elder Stranglethorn Tiger", offMapText = "Travel to Elder Stranglethorn Tiger.", x = 0.314 },
            },
            dependsOn = { "accept-187-tiger-mastery" },
            id = "objective-187-1-elder-stranglethorn-tiger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 187, text = "Elder Stranglethorn Tiger", index = 1, count = 10 },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 186 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            text = "Kill 10 Panther.",
            route = {
                { y = 0.164, mapID = 1434, label = "Panther", offMapText = "Travel to Panther.", x = 0.282 },
            },
            dependsOn = { "accept-191-panther-mastery" },
            id = "objective-191-1-panther",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 191, text = "Panther", index = 1, count = 10 },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 190 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-194-1-stranglethorn-raptor",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Kill 10 Stranglethorn Raptor.",
            complete = {
                questObjective = { id = 194, index = 1, text = "Stranglethorn Raptor", count = 10 },
            },
            route = {
                { mapID = 1434, x = 0.27399999999999997, y = 0.14400000000000002, label = "Stranglethorn Raptor", offMapText = "Travel to Stranglethorn Raptor." },
            },
            sourceStep = 40,
            priority = 470,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-194-raptor-mastery" },
        },
        {
            priority = 480,
            text = "Collect 10 Singing Crystal Shard.",
            route = {
                { y = 0.176, mapID = 1434, label = "Crystal Spine Basilisk", offMapText = "Travel to Crystal Spine Basilisk.", x = 0.24 },
            },
            dependsOn = { "accept-605-singing-blue-shards" },
            id = "objective-605-1-crystal-spine-basilisk-2",
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
                questObjective = { id = 605, text = "Crystal Spine Basilisk", index = 1, count = 10 },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            text = "Turn in Raptor Mastery to Hemet Nesingwary.",
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-194-raptor-mastery", "objective-194-1-stranglethorn-raptor" },
            id = "turnin-194-raptor-mastery",
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
                quest = { id = 194, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            text = "Turn in Tiger Mastery to Ajeck Rouack.",
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3562 },
            },
            dependsOn = { "accept-187-tiger-mastery", "objective-187-1-elder-stranglethorn-tiger" },
            id = "turnin-187-tiger-mastery",
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
                quest = { id = 187, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 186 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin.",
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            dependsOn = { "accept-191-panther-mastery", "objective-191-1-panther" },
            id = "turnin-191-panther-mastery",
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
                quest = { id = 191, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 190 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            text = "Turn in Singing Blue Shards to Crank Fizzlebub.",
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            dependsOn = {
                "accept-605-singing-blue-shards",
                "objective-605-1-crystal-spine-basilisk",
                "objective-605-1-crystal-spine-basilisk-2",
            },
            id = "turnin-605-singing-blue-shards",
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
                quest = { id = 605, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            text = "Turn in Investigate the Camp to Krazek.",
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            dependsOn = { "accept-201-investigate-the-camp" },
            id = "turnin-201-investigate-the-camp",
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
                quest = { id = 201, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 540,
            text = "Turn in Krazek's Cookery to Krazek.",
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            dependsOn = { "accept-210-krazek-s-cookery" },
            id = "turnin-210-krazek-s-cookery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 210, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            text = "Turn in Hostile Takeover to Kebok.",
            route = {
                { y = 0.7712, mapID = 1434, label = "Kebok", offMapText = "Travel to Kebok in Stranglethorn Vale.", x = 0.27 },
            },
            dependsOn = { "accept-213-hostile-takeover", "objective-213-1-tumbled-crystal" },
            id = "turnin-213-hostile-takeover",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            complete = {
                quest = { id = 213, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            text = "Turn in The Stone of the Tides to Baron Revilgaz.",
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            dependsOn = { "accept-578-the-stone-of-the-tides" },
            id = "turnin-578-the-stone-of-the-tides",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 578, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 616 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            text = "Turn in Goblin Sponsorship to Baron Revilgaz.",
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            dependsOn = { "accept-1182-goblin-sponsorship", "objective-1182-1-foreman-cozzle", "objective-1182-prepared-result" },
            id = "turnin-1182-goblin-sponsorship",
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
                quest = { id = 1182, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1181 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 580,
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            text = "Accept Goblin Sponsorship from Baron Revilgaz.",
            id = "accept-1183-goblin-sponsorship",
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
                quest = { id = 1183, state = "activeOrCompleted" },
            },
            sourceStep = 51,
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
            priority = 590,
            text = "Turn in Supply and Demand to Drizzlik.",
            route = {
                { y = 0.7759, mapID = 1434, label = "Drizzlik", offMapText = "Travel to Drizzlik in Stranglethorn Vale.", x = 0.2829 },
            },
            dependsOn = { "accept-575-supply-and-demand", "objective-575-1-large-river-crocolisk-skin" },
            id = "turnin-575-supply-and-demand",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                },
            },
            complete = {
                quest = { id = 575, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            text = "Turn in The Caravan Road to Clerk Daltry.",
            route = {
                { y = 0.4686, mapID = 1431, label = "Clerk Daltry", offMapText = "Travel to Clerk Daltry in Duskwood.", x = 0.7253 },
            },
            dependsOn = { "accept-1041-the-caravan-road" },
            id = "turnin-1041-the-caravan-road",
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
                quest = { id = 1041, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1040 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            route = {
                { y = 0.4686, mapID = 1431, label = "Clerk Daltry", offMapText = "Travel to Clerk Daltry in Duskwood.", x = 0.7253 },
            },
            text = "Accept The Carevin Family from Clerk Daltry.",
            id = "accept-1042-the-carevin-family",
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
                quest = { id = 1042, state = "activeOrCompleted" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1041 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 620,
            text = "Turn in The Carevin Family to Jonathan Carevin.",
            route = {
                { y = 0.4902, mapID = 1431, label = "Jonathan Carevin", offMapText = "Travel to Jonathan Carevin in Duskwood.", x = 0.7532 },
            },
            dependsOn = { "accept-1042-the-carevin-family" },
            id = "turnin-1042-the-carevin-family",
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
                quest = { id = 1042, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1041 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            route = {
                { y = 0.4902, mapID = 1431, label = "Jonathan Carevin", offMapText = "Travel to Jonathan Carevin in Duskwood.", x = 0.7532 },
            },
            text = "Accept The Scythe of Elune from Jonathan Carevin.",
            id = "accept-1043-the-scythe-of-elune",
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
                quest = { id = 1043, state = "activeOrCompleted" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1042 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 640,
            text = "For The Scythe of Elune: Look for signs of the Scythe of Elune.",
            id = "objective-1043-quest-work",
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
            complete = {
                quest = { id = 1043, state = "complete" },
            },
            sourceStep = 57,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1042 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1043-the-scythe-of-elune" },
        },
        {
            priority = 650,
            text = "Turn in The Scythe of Elune to Jonathan Carevin.",
            route = {
                { mapID = 1431, x = 0.7532, y = 0.4902, label = "Jonathan Carevin", offMapText = "Travel to Jonathan Carevin in Duskwood." },
            },
            dependsOn = { "accept-1043-the-scythe-of-elune", "objective-1043-quest-work" },
            id = "turnin-1043-the-scythe-of-elune",
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
                quest = { id = 1043, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1042 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            route = {
                { mapID = 1453, x = 0.726, y = 0.15869999999999998, label = "Major Samuelson", offMapText = "Travel to Major Samuelson in Stormwind City." },
            },
            text = "Turn in Reassignment to Major Samuelson.",
            id = "turnin-563-reassignment",
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
                quest = { id = 563, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 562 },
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
                { y = 0.1749, mapID = 1455, label = "Roetten Stonehammer", offMapText = "Travel to Roetten Stonehammer in Ironforge.", x = 0.6791 },
            },
            text = "Accept Reclaimers' Business in Desolace from Roetten Stonehammer.",
            id = "accept-1453-reclaimers-business-in-desolace",
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
                quest = { id = 1453, state = "activeOrCompleted" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1758-tome-of-the-cabal",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1758,
            priority = 680,
        },
        {
            priority = 690,
            route = {
                { y = 0.0942, mapID = 1455, label = "Krom Stoutarm", offMapText = "Travel to Krom Stoutarm in Ironforge.", x = 0.7421 },
            },
            text = "Turn in Tome of the Cabal to Krom Stoutarm.",
            id = "turnin-1758-tome-of-the-cabal",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
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
                quest = { id = 1758, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-class-warlock-accept-1802-tome-of-the-cabal",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1802,
            priority = 700,
        },
        {
            priority = 710,
            route = {
                { y = 0.098, mapID = 1455, label = "Krom Stoutarm", x = 0.742, offMapText = "Travel to Krom Stoutarm in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1802-tome-of-the-cabal",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
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
            classAction = "accept-1802-tome-of-the-cabal",
        },
        {
            priority = 720,
            id = "woven-class-warlock-objective-1802-book-1",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
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
            dependsOn = { "woven-class-warlock-accept-1802-tome-of-the-cabal" },
            route = {
                { mapID = 1424, x = 0.2778, y = 0.7278, label = "Moldy Tome", offMapText = "Travel to Moldy Tome." },
            },
            classAction = "objective-1802-book-1",
        },
        {
            priority = 730,
            id = "woven-class-warlock-objective-1802-book-2",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
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
            dependsOn = { "woven-class-warlock-accept-1802-tome-of-the-cabal" },
            route = {
                { mapID = 1441, x = 0.4343, y = 0.32689999999999997, label = "Tattered Manuscript", offMapText = "Travel to Tattered Manuscript." },
            },
            classAction = "objective-1802-book-2",
        },
        {
            priority = 740,
            route = {
                { y = 0.098, mapID = 1455, label = "Krom Stoutarm", x = 0.742, offMapText = "Travel to Krom Stoutarm in Ironforge." },
            },
            dependsOn = {
                "woven-class-warlock-accept-1802-tome-of-the-cabal",
                "woven-class-warlock-objective-1802-book-1",
                "woven-class-warlock-objective-1802-book-2",
            },
            id = "woven-class-warlock-turnin-1802-tome-of-the-cabal",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
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
            classAction = "turnin-1802-tome-of-the-cabal",
        },
        {
            priority = 750,
            route = {
                { y = 0.098, mapID = 1455, label = "Krom Stoutarm", x = 0.742, offMapText = "Travel to Krom Stoutarm in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1804-tome-of-the-cabal",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
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
            classAction = "accept-1804-tome-of-the-cabal",
        },
        {
            priority = 760,
            id = "woven-class-warlock-objective-1804-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
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
            dependsOn = { "woven-class-warlock-accept-1804-tome-of-the-cabal" },
            classAction = "objective-1804-quest-work",
        },
        {
            priority = 770,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-1804-tome-of-the-cabal", "woven-class-warlock-objective-1804-quest-work" },
            id = "woven-class-warlock-turnin-1804-tome-of-the-cabal",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
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
            classAction = "turnin-1804-tome-of-the-cabal",
        },
        {
            id = "level-before-woven-class-warlock-accept-1795-the-binding",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 2, 5, 7 },
                    },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1795,
            priority = 780,
        },
        {
            priority = 790,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1795-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 2, 5, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1795-the-binding",
        },
        {
            priority = 800,
            id = "woven-class-warlock-objective-1795-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 2, 5, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-1795-the-binding" },
            classAction = "objective-1795-quest-work",
        },
        {
            priority = 810,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-1795-the-binding", "woven-class-warlock-objective-1795-quest-work" },
            id = "woven-class-warlock-turnin-1795-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 2, 5, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1795-the-binding",
        },
        {
            id = "level-before-turnin-1791-the-windwatcher",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1791,
            priority = 820,
        },
        {
            priority = 830,
            route = {
                { y = 0.6692, mapID = 1416, label = "Bath'rah the Windwatcher", offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains.", x = 0.805 },
            },
            text = "Turn in The Windwatcher to Bath'rah the Windwatcher.",
            id = "turnin-1791-the-windwatcher",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1791, state = "completed" },
            },
            sourceStep = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1719 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 840,
            route = {
                { y = 0.6692, mapID = 1416, label = "Bath'rah the Windwatcher", offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains.", x = 0.805 },
            },
            text = "Accept Cyclonian from Bath'rah the Windwatcher.",
            id = "accept-1712-cyclonian",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1712, state = "activeOrCompleted" },
            },
            sourceStep = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1791 },
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
