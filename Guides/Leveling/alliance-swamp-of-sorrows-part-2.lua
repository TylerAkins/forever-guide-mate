local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Swamp of Sorrows",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-swamp-of-sorrows-part-2",
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
            id = "level-before-turnin-1477-vital-supplies",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1477,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.4615, mapID = 1431, label = "Watchmaster Sorigal", offMapText = "Travel to Watchmaster Sorigal in Duskwood.", x = 0.7577 },
            },
            text = "Turn in Vital Supplies to Watchmaster Sorigal.",
            id = "turnin-1477-vital-supplies",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1477, state = "completed" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.5983, mapID = 1435, label = "Watcher Biggs", offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.", x = 0.2674 },
            },
            text = "Accept Driftwood from Watcher Biggs.",
            id = "accept-1398-driftwood",
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
                quest = { id = 1398, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1421 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 40,
            text = "Collect 8 Sundried Driftwood.",
            route = {
                { y = 0.781, mapID = 1435, label = "Sundried Driftwood", offMapText = "Travel to Sundried Driftwood.", x = 0.873 },
            },
            dependsOn = { "accept-1398-driftwood" },
            id = "objective-1398-1-sundried-driftwood",
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
                questObjective = { id = 1398, text = "Sundried Driftwood", index = 1, count = 8 },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1421 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1258-1-pristine-crawler-leg",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 12 Pristine Crawler Leg.",
            complete = {
                questObjective = { id = 1258, index = 1, text = "Pristine Crawler Leg", count = 12 },
            },
            route = {
                { mapID = 1435, x = 0.87, y = 0.774, label = "Pristine Crawler Leg", offMapText = "Travel to Pristine Crawler Leg." },
            },
            sourceStep = 5,
            priority = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1204 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1364-1-khadgar-s-essays-on-dimensional-converge",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Khadgar's Essays on Dimensional Convergence.",
            complete = {
                questObjective = { id = 1364, index = 1, text = "Khadgar's Essays on Dimensional Convergence", count = 1 },
            },
            sourceStep = 6,
            priority = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1363 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            id = "objective-1364-1-khadgar-s-essays-on-dimensional-converge-2",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Khadgar's Essays on Dimensional Convergence.",
            complete = {
                questObjective = { id = 1364, index = 1, text = "Khadgar's Essays on Dimensional Convergence", count = 1 },
            },
            route = {
                { mapID = 1435, x = 0.134, y = 0.374, label = "Khadgar's Essays on Dimensional Convergence", offMapText = "Travel to Khadgar's Essays on Dimensional Convergence." },
            },
            sourceStep = 7,
            priority = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1363 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            text = "Turn in Driftwood to Watcher Biggs.",
            route = {
                { y = 0.5983, mapID = 1435, label = "Watcher Biggs", offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.", x = 0.2674 },
            },
            dependsOn = { "accept-1398-driftwood", "objective-1398-1-sundried-driftwood" },
            id = "turnin-1398-driftwood",
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
                quest = { id = 1398, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1421 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 90,
            route = {
                { y = 0.5983, mapID = 1435, label = "Watcher Biggs", offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.", x = 0.2674 },
            },
            text = "Accept Deliver the Shipment from Watcher Biggs.",
            id = "accept-1425-deliver-the-shipment",
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
                quest = { id = 1425, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1398 },
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
                { y = 0.1916, mapID = 1419, label = "Watcher Mahar Ba", offMapText = "Travel to Watcher Mahar Ba in Blasted Lands.", x = 0.6765 },
            },
            text = "Turn in Mazen's Behest to Watcher Mahar Ba.",
            id = "turnin-1364-mazen-s-behest",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1364, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1363 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {
                "objective-1364-1-khadgar-s-essays-on-dimensional-converge",
                "objective-1364-1-khadgar-s-essays-on-dimensional-converge-2",
            },
        },
        {
            priority = 110,
            text = "Turn in Deliver the Shipment to Quartermaster Lungertz.",
            route = {
                { y = 0.2138, mapID = 1419, label = "Quartermaster Lungertz", offMapText = "Travel to Quartermaster Lungertz in Blasted Lands.", x = 0.6652 },
            },
            dependsOn = { "accept-1425-deliver-the-shipment" },
            id = "turnin-1425-deliver-the-shipment",
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
                quest = { id = 1425, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1398 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 120,
            route = {
                { y = 0.4615, mapID = 1431, label = "Watchmaster Sorigal", offMapText = "Travel to Watchmaster Sorigal in Duskwood.", x = 0.7577 },
            },
            text = "Accept Supplies for Nethergarde from Watchmaster Sorigal.",
            id = "accept-1395-supplies-for-nethergarde",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1395, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            text = "Turn in Supplies for Nethergarde to Quartermaster Lungertz.",
            route = {
                { y = 0.2138, mapID = 1419, label = "Quartermaster Lungertz", offMapText = "Travel to Quartermaster Lungertz in Blasted Lands.", x = 0.6652 },
            },
            dependsOn = { "accept-1395-supplies-for-nethergarde" },
            id = "turnin-1395-supplies-for-nethergarde",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1395, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-580-whiskey-slim-s-lost-grog",
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
            checkpointQuest = 580,
            priority = 140,
        },
        {
            priority = 150,
            route = {
                { y = 0.7745, mapID = 1434, label = "Whiskey Slim", offMapText = "Travel to Whiskey Slim in Stranglethorn Vale.", x = 0.2713 },
            },
            text = "Accept Whiskey Slim's Lost Grog from Whiskey Slim.",
            id = "accept-580-whiskey-slim-s-lost-grog",
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
                quest = { id = 580, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            text = "Accept Zanzil's Mixture and a Fool's Stout from Crank Fizzlebub.",
            id = "accept-1119-zanzil-s-mixture-and-a-fool-s-stout",
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
                quest = { id = 1119, state = "activeOrCompleted" },
            },
            sourceStep = 16,
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
            priority = 170,
            route = {
                { y = 0.7707, mapID = 1434, label = "\"Sea Wolf\" MacKinley", offMapText = "Travel to \"Sea Wolf\" MacKinley in Stranglethorn Vale.", x = 0.2778 },
            },
            text = "Accept Stoley's Debt from \"Sea Wolf\" MacKinley.",
            id = "accept-2872-stoley-s-debt",
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
                quest = { id = 2872, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            route = {
                { y = 0.5322, mapID = 1445, label = "Privateer Groy", offMapText = "Travel to Privateer Groy in Dustwallow Marsh.", x = 0.6884 },
            },
            text = "Turn in Akiris by the Bundle to Privateer Groy.",
            id = "turnin-623-akiris-by-the-bundle",
            kind = "turnin",
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
                quest = { id = 623, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 617 },
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
                { y = 0.4547, mapID = 1445, label = "Morgan Stern", offMapText = "Travel to Morgan Stern in Dustwallow Marsh.", x = 0.6634 },
            },
            text = "Turn in ... and Bugs to Morgan Stern.",
            id = "turnin-1258-and-bugs",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1258, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1204 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1258-1-pristine-crawler-leg" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
