local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Duskwood & Stranglethorn Vale",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 30 },
            },
        },
    },
    goals = {
        {
            id = "level-before-woven-class-warlock-accept-1796-components-for-the-enchanted-gold-bloodrobe",
            kind = "note",
            text = "Reach level 31 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                },
            },
            complete = {
                level = { min = 31 },
            },
            requiredLevel = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1796,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1796-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1796-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 30,
            id = "woven-class-warlock-objective-1796-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-1796-components-for-the-enchanted-gold-bloodrobe" },
            classAction = "objective-1796-quest-work",
        },
        {
            priority = 40,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {
                "woven-class-warlock-accept-1796-components-for-the-enchanted-gold-bloodrobe",
                "woven-class-warlock-objective-1796-quest-work",
            },
            id = "woven-class-warlock-turnin-1796-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1796-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 50,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-4781-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4781-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 60,
            route = {
                {
                    y = 0.587,
                    mapID = 1431,
                    label = "Solid Chest",
                    x = 0.818,
                    offMapText = "Travel to Solid Chest in Duskwood.",
                    complete = {
                        map = { 1437, 1421, 1439, 1445, 1447, 1418, 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.804,
                    mapID = 1431,
                    label = "Solid Chest",
                    x = 0.368,
                    offMapText = "Travel to Solid Chest in Duskwood.",
                    complete = {
                        map = { 1437, 1421, 1439, 1445, 1447, 1418, 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.589,
                    mapID = 1437,
                    label = "Solid Chest",
                    x = 0.479,
                    offMapText = "Travel to Solid Chest in Wetlands.",
                    complete = {
                        map = { 1421, 1439, 1445, 1447, 1418, 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.15,
                    mapID = 1437,
                    label = "Solid Chest",
                    x = 0.475,
                    offMapText = "Travel to Solid Chest in Wetlands.",
                    complete = {
                        map = { 1421, 1439, 1445, 1447, 1418, 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.232,
                    mapID = 1421,
                    label = "Battered Chest",
                    x = 0.652,
                    offMapText = "Travel to Battered Chest in Silverpine Forest.",
                    complete = {
                        map = { 1439, 1445, 1447, 1418, 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.283,
                    mapID = 1421,
                    label = "Battered Chest",
                    x = 0.527,
                    offMapText = "Travel to Battered Chest in Silverpine Forest.",
                    complete = {
                        map = { 1439, 1445, 1447, 1418, 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.72,
                    mapID = 1421,
                    label = "Alliance Chest",
                    x = 0.596,
                    offMapText = "Travel to Alliance Chest in Silverpine Forest.",
                    complete = {
                        map = { 1439, 1445, 1447, 1418, 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.865,
                    mapID = 1439,
                    label = "Battered Chest",
                    x = 0.363,
                    offMapText = "Travel to Battered Chest in Darkshore.",
                    complete = {
                        map = { 1445, 1447, 1418, 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.37,
                    mapID = 1439,
                    label = "Battered Chest",
                    x = 0.471,
                    offMapText = "Travel to Battered Chest in Darkshore.",
                    complete = {
                        map = { 1445, 1447, 1418, 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.224,
                    mapID = 1445,
                    label = "Solid Chest",
                    x = 0.307,
                    offMapText = "Travel to Solid Chest in Dustwallow Marsh.",
                    complete = {
                        map = { 1447, 1418, 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.65,
                    mapID = 1445,
                    label = "Solid Chest",
                    x = 0.441,
                    offMapText = "Travel to Solid Chest in Dustwallow Marsh.",
                    complete = {
                        map = { 1447, 1418, 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.798,
                    mapID = 1447,
                    label = "Fel Interloper",
                    x = 0.302,
                    offMapText = "Travel to Fel Interloper in Azshara.",
                    complete = {
                        map = { 1418, 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.288,
                    mapID = 1418,
                    label = "Solid Chest",
                    x = 0.423,
                    offMapText = "Travel to Solid Chest in Badlands.",
                    complete = {
                        map = { 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.933,
                    mapID = 1418,
                    label = "Solid Chest",
                    x = 0.096,
                    offMapText = "Travel to Solid Chest in Badlands.",
                    complete = {
                        map = { 1434, 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.187,
                    mapID = 1434,
                    label = "Solid Chest",
                    x = 0.427,
                    offMapText = "Travel to Solid Chest in Stranglethorn Vale.",
                    complete = {
                        map = { 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.4,
                    mapID = 1434,
                    label = "Solid Chest",
                    x = 0.473,
                    offMapText = "Travel to Solid Chest in Stranglethorn Vale.",
                    complete = {
                        map = { 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.636,
                    mapID = 1434,
                    label = "Solid Chest",
                    x = 0.281,
                    offMapText = "Travel to Solid Chest in Stranglethorn Vale.",
                    complete = {
                        map = { 1440, 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.362,
                    mapID = 1440,
                    label = "Battered Chest",
                    x = 0.224,
                    offMapText = "Travel to Battered Chest in Ashenvale.",
                    complete = {
                        map = { 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.642,
                    mapID = 1440,
                    label = "Solid Chest",
                    x = 0.543,
                    offMapText = "Travel to Solid Chest in Ashenvale.",
                    complete = {
                        map = { 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.496,
                    mapID = 1440,
                    label = "Solid Chest",
                    x = 0.794,
                    offMapText = "Travel to Solid Chest in Ashenvale.",
                    complete = {
                        map = { 1444, 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.506,
                    mapID = 1444,
                    label = "Fel Interloper",
                    x = 0.742,
                    offMapText = "Travel to Fel Interloper in Feralas.",
                    complete = {
                        map = { 1416, 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.434,
                    mapID = 1416,
                    label = "Solid Chest",
                    x = 0.599,
                    offMapText = "Travel to Solid Chest in Alterac Mountains.",
                    complete = {
                        map = { 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.152,
                    mapID = 1416,
                    label = "Solid Chest",
                    x = 0.395,
                    offMapText = "Travel to Solid Chest in Alterac Mountains.",
                    complete = {
                        map = { 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.772,
                    mapID = 1416,
                    label = "Alliance Strongbox",
                    x = 0.18,
                    offMapText = "Travel to Alliance Strongbox in Alterac Mountains.",
                    complete = {
                        map = { 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.753,
                    mapID = 1416,
                    label = "Alliance Chest",
                    x = 0.149,
                    offMapText = "Travel to Alliance Chest in Alterac Mountains.",
                    complete = {
                        map = { 1432, 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.659,
                    mapID = 1432,
                    label = "Battered Chest",
                    x = 0.68,
                    offMapText = "Travel to Battered Chest in Loch Modan.",
                    complete = {
                        map = { 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.242,
                    mapID = 1432,
                    label = "Battered Chest",
                    x = 0.352,
                    offMapText = "Travel to Battered Chest in Loch Modan.",
                    complete = {
                        map = { 1419, 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.39,
                    mapID = 1419,
                    label = "Fel Interloper",
                    x = 0.622,
                    offMapText = "Travel to Fel Interloper in Blasted Lands.",
                    complete = {
                        map = { 1436, 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.789,
                    mapID = 1436,
                    label = "Battered Chest",
                    x = 0.53,
                    offMapText = "Travel to Battered Chest in Westfall.",
                    complete = {
                        map = { 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.688,
                    mapID = 1436,
                    label = "Battered Chest",
                    x = 0.423,
                    offMapText = "Travel to Battered Chest in Westfall.",
                    complete = {
                        map = { 1441, 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.389,
                    mapID = 1441,
                    label = "Solid Chest",
                    x = 0.139,
                    offMapText = "Travel to Solid Chest in Thousand Needles.",
                    complete = {
                        map = { 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.869,
                    mapID = 1441,
                    label = "Solid Chest",
                    x = 0.653,
                    offMapText = "Travel to Solid Chest in Thousand Needles.",
                    complete = {
                        map = { 1443, 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.301,
                    mapID = 1443,
                    label = "Solid Chest",
                    x = 0.552,
                    offMapText = "Travel to Solid Chest in Desolace.",
                    complete = {
                        map = { 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.737,
                    mapID = 1443,
                    label = "Solid Chest",
                    x = 0.738,
                    offMapText = "Travel to Solid Chest in Desolace.",
                    complete = {
                        map = { 1442, 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.856,
                    mapID = 1442,
                    label = "Battered Chest",
                    x = 0.736,
                    offMapText = "Travel to Battered Chest in Stonetalon Mountains.",
                    complete = {
                        map = { 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.62,
                    mapID = 1442,
                    label = "Solid Chest",
                    x = 0.345,
                    offMapText = "Travel to Solid Chest in Stonetalon Mountains.",
                    complete = {
                        map = { 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.117,
                    mapID = 1442,
                    label = "Alliance Chest",
                    x = 0.255,
                    offMapText = "Travel to Alliance Chest in Stonetalon Mountains.",
                    complete = {
                        map = { 1433, 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.126,
                    mapID = 1433,
                    label = "Corporal Keeshan",
                    x = 0.284,
                    offMapText = "Travel to Corporal Keeshan in Redridge Mountains.",
                    complete = {
                        map = { 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.844,
                    mapID = 1433,
                    label = "Battered Chest",
                    x = 0.296,
                    offMapText = "Travel to Battered Chest in Redridge Mountains.",
                    complete = {
                        map = { 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.106,
                    mapID = 1433,
                    label = "Solid Chest",
                    x = 0.415,
                    offMapText = "Travel to Solid Chest in Redridge Mountains.",
                    complete = {
                        map = { 1446, 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.391,
                    mapID = 1446,
                    label = "Solid Chest",
                    x = 0.607,
                    offMapText = "Travel to Solid Chest in Tanaris.",
                    complete = {
                        map = { 1425, 1427, 1435 },
                    },
                },
                {
                    y = 0.692,
                    mapID = 1425,
                    label = "Solid Chest",
                    x = 0.475,
                    offMapText = "Travel to Solid Chest in The Hinterlands.",
                    complete = {
                        map = { 1427, 1435 },
                    },
                },
                {
                    y = 0.339,
                    mapID = 1427,
                    label = "Solid Chest",
                    x = 0.442,
                    offMapText = "Travel to Solid Chest in Searing Gorge.",
                    complete = {
                        map = { 1435 },
                    },
                },
                { y = 0.316, mapID = 1435, label = "Solid Chest", x = 0.049, offMapText = "Travel to Solid Chest in Swamp of Sorrows." },
                { y = 0.785, mapID = 1435, label = "Solid Chest", x = 0.89, offMapText = "Travel to Solid Chest in Swamp of Sorrows." },
            },
            dependsOn = { "woven-class-warlock-accept-4781-components-for-the-enchanted-gold-bloodrobe" },
            id = "woven-class-warlock-objective-4781-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-4781-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 70,
            route = {
                { y = 0.768, mapID = 1434, label = "Xizk Goodstitch", x = 0.286, offMapText = "Travel to Xizk Goodstitch in Stranglethorn Vale." },
            },
            dependsOn = {
                "woven-class-warlock-accept-4781-components-for-the-enchanted-gold-bloodrobe",
                "woven-class-warlock-objective-4781-components-for-the-enchanted-gold-bloodrobe",
            },
            id = "woven-class-warlock-turnin-4781-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4781-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 80,
            route = {
                { y = 0.768, mapID = 1434, label = "Xizk Goodstitch", x = 0.286, offMapText = "Travel to Xizk Goodstitch in Stranglethorn Vale." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-4782-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4782-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 90,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4782-components-for-the-enchanted-gold-bloodrobe" },
            id = "woven-class-warlock-turnin-4782-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4782-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 100,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-4783-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4783-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 110,
            id = "woven-class-warlock-objective-4783-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-4783-components-for-the-enchanted-gold-bloodrobe" },
            classAction = "objective-4783-quest-work",
        },
        {
            priority = 120,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {
                "woven-class-warlock-accept-4783-components-for-the-enchanted-gold-bloodrobe",
                "woven-class-warlock-objective-4783-quest-work",
            },
            id = "woven-class-warlock-turnin-4783-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4783-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 130,
            route = {
                { y = 0.768, mapID = 1434, label = "Xizk Goodstitch", x = 0.286, offMapText = "Travel to Xizk Goodstitch in Stranglethorn Vale." },
            },
            id = "woven-class-warlock-accept-4785-fine-gold-thread",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4785-fine-gold-thread",
        },
        {
            priority = 140,
            route = {
                { y = 0.768, mapID = 1434, label = "Xizk Goodstitch", x = 0.286, offMapText = "Travel to Xizk Goodstitch in Stranglethorn Vale." },
            },
            dependsOn = { "woven-class-warlock-accept-4785-fine-gold-thread" },
            id = "woven-class-warlock-turnin-4785-fine-gold-thread",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4785-fine-gold-thread",
        },
        {
            priority = 150,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-4784-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4784-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 160,
            id = "woven-class-warlock-objective-4784-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-4784-components-for-the-enchanted-gold-bloodrobe" },
            classAction = "objective-4784-quest-work",
        },
        {
            priority = 170,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {
                "woven-class-warlock-accept-4784-components-for-the-enchanted-gold-bloodrobe",
                "woven-class-warlock-objective-4784-quest-work",
            },
            id = "woven-class-warlock-turnin-4784-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4784-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 180,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-4786-the-completed-robe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4786-the-completed-robe",
        },
        {
            priority = 190,
            id = "woven-class-warlock-objective-4786-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-4786-the-completed-robe" },
            classAction = "objective-4786-quest-work",
        },
        {
            priority = 200,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4786-the-completed-robe", "woven-class-warlock-objective-4786-quest-work" },
            id = "woven-class-warlock-turnin-4786-the-completed-robe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4786-the-completed-robe",
        },
        {
            id = "level-before-woven-class-warlock-accept-4738-in-search-of-menara-voidrender",
            kind = "note",
            text = "Reach level 31 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 31 },
            },
            requiredLevel = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4738,
            alternativeQuests = { 4736, 4737, 4739 },
            priority = 210,
        },
        {
            priority = 220,
            route = {
                { y = 0.782, mapID = 1453, label = "Demisette Cloyce", x = 0.254, offMapText = "Travel to Demisette Cloyce in Stormwind City." },
            },
            id = "woven-class-warlock-accept-4738-in-search-of-menara-voidrender",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
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
            dependsOn = {},
            classAction = "accept-4738-in-search-of-menara-voidrender",
        },
        {
            priority = 230,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4738-in-search-of-menara-voidrender" },
            id = "woven-class-warlock-turnin-4738-in-search-of-menara-voidrender",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
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
            classAction = "turnin-4738-in-search-of-menara-voidrender",
        },
        {
            priority = 240,
            route = {
                { y = 0.06, mapID = 1455, label = "Briarthorn", x = 0.502, offMapText = "Travel to Briarthorn in Ironforge." },
            },
            id = "woven-class-warlock-accept-4736-in-search-of-menara-voidrender",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
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
            dependsOn = {},
            classAction = "accept-4736-in-search-of-menara-voidrender",
        },
        {
            priority = 250,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4736-in-search-of-menara-voidrender" },
            id = "woven-class-warlock-turnin-4736-in-search-of-menara-voidrender",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 31 },
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
            classAction = "turnin-4736-in-search-of-menara-voidrender",
        },
        {
            id = "level-before-woven-class-mage-accept-1947-journey-to-the-marsh",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            checkpointQuest = 1947,
            priority = 260,
        },
        {
            priority = 270,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            id = "woven-class-mage-accept-1947-journey-to-the-marsh",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1947-journey-to-the-marsh",
        },
        {
            priority = 280,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "woven-class-mage-accept-1947-journey-to-the-marsh" },
            id = "woven-class-mage-turnin-1947-journey-to-the-marsh",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1947-journey-to-the-marsh",
        },
        {
            priority = 290,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            id = "woven-class-mage-accept-1948-items-of-power",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1948-items-of-power",
        },
        {
            priority = 300,
            dependsOn = { "woven-class-mage-accept-1948-items-of-power" },
            id = "woven-class-mage-objective-1948-items-of-power",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1948-items-of-power",
        },
        {
            priority = 310,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "woven-class-mage-accept-1948-items-of-power", "woven-class-mage-objective-1948-items-of-power" },
            id = "woven-class-mage-turnin-1948-items-of-power",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1948-items-of-power",
        },
        {
            priority = 320,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1949-hidden-secrets",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1949-hidden-secrets",
        },
        {
            priority = 330,
            route = {
                { y = 0.758, mapID = 1441, label = "Magus Tirth", x = 0.782, offMapText = "Travel to Magus Tirth in Thousand Needles." },
            },
            dependsOn = { "woven-class-mage-accept-1949-hidden-secrets" },
            id = "woven-class-mage-turnin-1949-hidden-secrets",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1949-hidden-secrets",
        },
        {
            priority = 340,
            route = {
                { y = 0.758, mapID = 1441, label = "Magus Tirth", x = 0.782, offMapText = "Travel to Magus Tirth in Thousand Needles." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1950-get-the-scoop",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1950-get-the-scoop",
        },
        {
            priority = 350,
            id = "woven-class-mage-objective-1950-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-mage-accept-1950-get-the-scoop" },
            classAction = "objective-1950-quest-work",
        },
        {
            priority = 360,
            route = {
                { y = 0.758, mapID = 1441, label = "Magus Tirth", x = 0.782, offMapText = "Travel to Magus Tirth in Thousand Needles." },
            },
            dependsOn = { "woven-class-mage-accept-1950-get-the-scoop", "woven-class-mage-objective-1950-quest-work" },
            id = "woven-class-mage-turnin-1950-get-the-scoop",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1950-get-the-scoop",
        },
        {
            id = "level-before-woven-class-mage-handoff-1951-class-dungeon",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 8 },
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
            checkpointQuest = 1951,
            priority = 370,
        },
        {
            id = "woven-class-mage-handoff-1951-class-dungeon",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 380,
            classAction = "handoff-1951-class-dungeon",
        },
        {
            priority = 390,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-1952-mages-wand",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1952-mages-wand",
        },
        {
            priority = 400,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "woven-class-mage-accept-1952-mages-wand" },
            id = "woven-class-mage-turnin-1952-mages-wand",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1952-mages-wand",
        },
        {
            id = "level-before-turnin-293-cleansing-the-eye",
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
            checkpointQuest = 293,
            priority = 410,
        },
        {
            priority = 420,
            route = {
                { mapID = 1453, x = 0.39590000000000003, y = 0.2725, label = "Archbishop Benedictus", offMapText = "Travel to Archbishop Benedictus in Stormwind City." },
            },
            text = "Turn in Cleansing the Eye to Archbishop Benedictus.",
            id = "turnin-293-cleansing-the-eye",
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
                quest = { id = 293, state = "completed" },
            },
            sourceStep = 1,
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
            id = "level-before-accept-1274-the-missing-diplomat",
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
            checkpointQuest = 1274,
            priority = 430,
        },
        {
            priority = 440,
            route = {
                { y = 0.294, mapID = 1453, label = "Thomas", offMapText = "Travel to Thomas in Stormwind City.", x = 0.4037 },
            },
            text = "Accept The Missing Diplomat from Thomas.",
            id = "accept-1274-the-missing-diplomat",
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
                quest = { id = 1274, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 450,
            route = {
                { y = 0.1206, mapID = 1453, label = "Grimand Elmore", offMapText = "Travel to Grimand Elmore in Stormwind City.", x = 0.5176 },
            },
            text = "Turn in Blessed Arm to Grimand Elmore.",
            id = "turnin-322-blessed-arm",
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
                quest = { id = 322, state = "completed" },
            },
            sourceStep = 3,
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
        {
            priority = 460,
            route = {
                { y = 0.1206, mapID = 1453, label = "Grimand Elmore", offMapText = "Travel to Grimand Elmore in Stormwind City.", x = 0.5176 },
            },
            text = "Accept Armed and Ready from Grimand Elmore.",
            id = "accept-325-armed-and-ready",
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
                quest = { id = 325, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 322 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-337-an-old-history-book",
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
            text = "Loot An Old History Book from Flesh Eater, Skeletal Warrior, Skeletal Horror, Skeletal Mage, Nightbane Dark Runner, Nightbane Vile Fang, Zzarc' Vul, Stalvan Mistmantle, Insane Ghoul, Skeletal Fiend, Nightbane Shadow Weaver, Plague Spreader, Skeletal Warder, Skeletal Healer, Nightbane Tainted One, Skeletal Raider, Linen Bandage. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "An Old History Book", minCount = 1 },
                    },
                    {
                        quest = { id = 337, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 470,
        },
        {
            priority = 480,
            text = "Use the An Old History Book to accept An Old History Book.",
            id = "accept-337-an-old-history-book",
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
                quest = { id = 337, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 490,
            text = "Turn in The Missing Diplomat to Bishop DeLavey.",
            route = {
                { mapID = 1453, x = 0.7829999999999999, y = 0.2544, label = "Bishop DeLavey", offMapText = "Travel to Bishop DeLavey in Stormwind City." },
            },
            dependsOn = { "accept-1274-the-missing-diplomat" },
            id = "turnin-1274-the-missing-diplomat",
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
                quest = { id = 1274, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            route = {
                { mapID = 1453, x = 0.7829999999999999, y = 0.2544, label = "Bishop DeLavey", offMapText = "Travel to Bishop DeLavey in Stormwind City." },
            },
            text = "Accept The Missing Diplomat from Bishop DeLavey.",
            id = "accept-1241-the-missing-diplomat",
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
                quest = { id = 1241, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1274 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            text = "Turn in An Old History Book to Milton Sheaf.",
            route = {
                { mapID = 1453, x = 0.7417, y = 0.07490000000000001, label = "Milton Sheaf", offMapText = "Travel to Milton Sheaf in Stormwind City." },
            },
            dependsOn = { "accept-337-an-old-history-book", "objective-337-1-nightbane-dark-runner" },
            id = "turnin-337-an-old-history-book",
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
                quest = { id = 337, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            route = {
                { mapID = 1453, x = 0.7417, y = 0.07490000000000001, label = "Milton Sheaf", offMapText = "Travel to Milton Sheaf in Stormwind City." },
            },
            text = "Accept Southshore from Milton Sheaf.",
            id = "accept-538-southshore",
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
                quest = { id = 538, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 337 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            text = "Turn in The Missing Diplomat to Jorgen.",
            route = {
                { y = 0.7842, mapID = 1453, label = "Jorgen", offMapText = "Travel to Jorgen in Stormwind City.", x = 0.7317 },
            },
            dependsOn = { "accept-1241-the-missing-diplomat" },
            id = "turnin-1241-the-missing-diplomat",
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
                quest = { id = 1241, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1274 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 540,
            route = {
                { y = 0.7842, mapID = 1453, label = "Jorgen", offMapText = "Travel to Jorgen in Stormwind City.", x = 0.7317 },
            },
            text = "Accept The Missing Diplomat from Jorgen.",
            id = "accept-1242-the-missing-diplomat",
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
                quest = { id = 1242, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1241 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 550,
            text = "Turn in The Missing Diplomat to Elling Trias.",
            route = {
                { y = 0.6417, mapID = 1453, label = "Elling Trias", offMapText = "Travel to Elling Trias in Stormwind City.", x = 0.5991 },
            },
            dependsOn = { "accept-1242-the-missing-diplomat" },
            id = "turnin-1242-the-missing-diplomat",
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
                quest = { id = 1242, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1241 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            route = {
                { y = 0.6417, mapID = 1453, label = "Elling Trias", offMapText = "Travel to Elling Trias in Stormwind City.", x = 0.5991 },
            },
            text = "Accept The Missing Diplomat from Elling Trias.",
            id = "accept-1243-the-missing-diplomat",
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
                quest = { id = 1243, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1242 },
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
                { y = 0.4802, mapID = 1431, label = "Viktori Prism'Antras", offMapText = "Travel to Viktori Prism'Antras in Duskwood.", x = 0.798 },
            },
            text = "Accept Look To The Stars from Viktori Prism'Antras.",
            id = "accept-181-look-to-the-stars",
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
                quest = { id = 181, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 177 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 580,
            route = {
                { y = 0.4805, mapID = 1431, label = "Calor", offMapText = "Travel to Calor in Duskwood.", x = 0.753 },
            },
            text = "Accept Worgen in the Woods from Calor.",
            id = "accept-173-worgen-in-the-woods",
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
                quest = { id = 173, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            route = {
                { y = 0.469, mapID = 1431, label = "Commander Althea Ebonlocke", offMapText = "Travel to Commander Althea Ebonlocke in Duskwood.", x = 0.736 },
            },
            text = "Accept The Night Watch from Commander Althea Ebonlocke.",
            id = "accept-58-the-night-watch",
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
                quest = { id = 58, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 57 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-1243-the-missing-diplomat" },
            id = "turnin-1243-the-missing-diplomat",
            text = "Turn in The Missing Diplomat to Watcher Backus.",
            useClientPin = true,
            complete = {
                quest = { id = 1243, state = "completed" },
            },
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
            priority = 600,
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1242 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            priority = 610,
            text = "Accept The Missing Diplomat from Watcher Backus.",
            id = "accept-1244-the-missing-diplomat",
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
                quest = { id = 1244, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1243 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 620,
            text = "Kill 6 Nightbane Shadow Weaver.",
            route = {
                { y = 0.424, mapID = 1431, label = "Nightbane Shadow Weaver", offMapText = "Travel to Nightbane Shadow Weaver.", x = 0.624 },
            },
            dependsOn = { "accept-173-worgen-in-the-woods" },
            id = "objective-173-1-nightbane-shadow-weaver",
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
                questObjective = { id = 173, text = "Nightbane Shadow Weaver", index = 1, count = 6 },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            text = "Turn in Worgen in the Woods to Calor.",
            route = {
                { y = 0.4805, mapID = 1431, label = "Calor", offMapText = "Travel to Calor in Duskwood.", x = 0.753 },
            },
            dependsOn = { "accept-173-worgen-in-the-woods", "objective-173-1-nightbane-shadow-weaver" },
            id = "turnin-173-worgen-in-the-woods",
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
                quest = { id = 173, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            route = {
                { y = 0.4805, mapID = 1431, label = "Calor", offMapText = "Travel to Calor in Duskwood.", x = 0.753 },
            },
            text = "Accept Worgen in the Woods from Calor.",
            id = "accept-221-worgen-in-the-woods",
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
                quest = { id = 221, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 173 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-221-1-nightbane-dark-runner",
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
            text = "Kill 12 Nightbane Dark Runner.",
            complete = {
                questObjective = { id = 221, index = 1, text = "Nightbane Dark Runner", count = 12 },
            },
            route = {
                { mapID = 1431, x = 0.67, y = 0.43200000000000005, label = "Nightbane Dark Runner", offMapText = "Travel to Nightbane Dark Runner." },
            },
            sourceStep = 20,
            priority = 650,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 173 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-221-worgen-in-the-woods" },
        },
        {
            priority = 660,
            text = "Kill Nightbane Dark Runner.",
            route = {
                { y = 0.432, mapID = 1431, label = "Nightbane Dark Runner", offMapText = "Travel to Nightbane Dark Runner.", x = 0.67 },
            },
            dependsOn = { "accept-337-an-old-history-book" },
            id = "objective-337-1-nightbane-dark-runner",
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
                questObjective = { id = 337, text = "Nightbane Dark Runner", index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 670,
            route = {
                { y = 0.6938, mapID = 1429, label = "Marshal Haggard", offMapText = "Travel to Marshal Haggard in Elwynn Forest.", x = 0.8461 },
            },
            text = "Turn in The Legend of Stalvan to Marshal Haggard.",
            id = "turnin-74-the-legend-of-stalvan",
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
                quest = { id = 74, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 72 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 680,
            route = {
                { y = 0.6938, mapID = 1429, label = "Marshal Haggard", offMapText = "Travel to Marshal Haggard in Elwynn Forest.", x = 0.8461 },
            },
            text = "Accept The Legend of Stalvan from Marshal Haggard.",
            id = "accept-75-the-legend-of-stalvan",
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
                quest = { id = 75, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 74 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-75-1-a-faded-journal-page",
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
            text = "Collect 1 A Faded Journal Page.",
            complete = {
                questObjective = { id = 75, index = 1, text = "A Faded Journal Page", count = 1 },
            },
            route = {
                { mapID = 1429, x = 0.8569, y = 0.6955, label = "A Faded Journal Page", offMapText = "Travel to A Faded Journal Page." },
            },
            sourceStep = 22,
            priority = 690,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 74 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-75-the-legend-of-stalvan" },
        },
        {
            priority = 700,
            text = "Turn in The Legend of Stalvan to Marshal Haggard.",
            route = {
                { y = 0.6938, mapID = 1429, label = "Marshal Haggard", offMapText = "Travel to Marshal Haggard in Elwynn Forest.", x = 0.8461 },
            },
            dependsOn = { "accept-75-the-legend-of-stalvan", "objective-75-1-a-faded-journal-page" },
            id = "turnin-75-the-legend-of-stalvan",
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
                quest = { id = 75, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 74 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            route = {
                { y = 0.6938, mapID = 1429, label = "Marshal Haggard", offMapText = "Travel to Marshal Haggard in Elwynn Forest.", x = 0.8461 },
            },
            text = "Accept The Legend of Stalvan from Marshal Haggard.",
            id = "accept-78-the-legend-of-stalvan",
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
                quest = { id = 78, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 75 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 720,
            route = {
                { y = 0.3147, mapID = 1431, label = "Abercrombie", offMapText = "Travel to Abercrombie in Duskwood.", x = 0.2811 },
            },
            text = "Turn in Juice Delivery to Abercrombie.",
            id = "turnin-159-juice-delivery",
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
                quest = { id = 159, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 156 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 730,
            route = {
                { y = 0.3147, mapID = 1431, label = "Abercrombie", offMapText = "Travel to Abercrombie in Duskwood.", x = 0.2811 },
            },
            text = "Accept Ghoulish Effigy from Abercrombie.",
            id = "accept-133-ghoulish-effigy",
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
                quest = { id = 133, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 740,
            text = "Collect 7 Ghoul Rib.",
            route = {
                { y = 0.3489, mapID = 1431, label = "Flesh Eater", offMapText = "Travel to Flesh Eater.", x = 0.2359 },
            },
            dependsOn = { "accept-133-ghoulish-effigy" },
            id = "objective-133-1-flesh-eater",
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
                questObjective = { id = 133, text = "Flesh Eater", index = 1, count = 7 },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-58-1-plague-spreader",
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
            text = "Kill 20 Plague Spreader.",
            complete = {
                questObjective = { id = 58, index = 1, text = "Plague Spreader", count = 20 },
            },
            route = {
                { mapID = 1431, x = 0.2359, y = 0.3489, label = "Plague Spreader", offMapText = "Travel to Plague Spreader." },
            },
            sourceStep = 26,
            priority = 750,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 57 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-58-the-night-watch" },
        },
        {
            priority = 760,
            text = "Turn in Ghoulish Effigy to Abercrombie.",
            route = {
                { mapID = 1431, x = 0.2811, y = 0.3147, label = "Abercrombie", offMapText = "Travel to Abercrombie in Duskwood." },
            },
            dependsOn = { "accept-133-ghoulish-effigy", "objective-133-1-flesh-eater" },
            id = "turnin-133-ghoulish-effigy",
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
                quest = { id = 133, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 159 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 770,
            route = {
                { mapID = 1431, x = 0.2811, y = 0.3147, label = "Abercrombie", offMapText = "Travel to Abercrombie in Duskwood." },
            },
            text = "Accept Ogre Thieves from Abercrombie.",
            id = "accept-134-ogre-thieves",
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
                quest = { id = 134, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 133 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1244-1-defias-docket",
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
            text = "Collect 1 Defias Docket.",
            complete = {
                questObjective = { id = 1244, index = 1, text = "Defias Docket", count = 1 },
            },
            route = {
                { mapID = 1431, x = 0.23929999999999998, y = 0.7206999999999999, label = "Defias Docket", offMapText = "Travel to Defias Docket." },
            },
            sourceStep = 28,
            priority = 780,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1243 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1244-the-missing-diplomat" },
        },
        {
            id = "objective-134-1-abercrombie-s-crate",
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
            text = "Collect 1 Abercrombie's Crate.",
            complete = {
                questObjective = { id = 134, index = 1, text = "Abercrombie's Crate", count = 1 },
            },
            route = {
                { mapID = 1431, x = 0.3342, y = 0.7634000000000001, label = "Abercrombie's Crate", offMapText = "Travel to Abercrombie's Crate." },
            },
            sourceStep = 29,
            priority = 790,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 133 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-134-ogre-thieves" },
        },
        {
            priority = 800,
            text = "Collect 1 Ogre's Monocle.",
            route = {
                { mapID = 1431, x = 0.36060000000000003, y = 0.8058, label = "Ogre's Monocle", offMapText = "Travel to Ogre's Monocle." },
            },
            dependsOn = { "accept-181-look-to-the-stars" },
            id = "objective-181-1-zzarc-vul",
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
                questObjective = { id = 181, text = "Zzarc' Vul", index = 1, count = 1 },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 177 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 810,
            text = "Turn in Ogre Thieves to Abercrombie.",
            route = {
                { mapID = 1431, x = 0.2811, y = 0.3147, label = "Abercrombie", offMapText = "Travel to Abercrombie in Duskwood." },
            },
            dependsOn = { "accept-134-ogre-thieves", "objective-134-1-abercrombie-s-crate" },
            id = "turnin-134-ogre-thieves",
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
                quest = { id = 134, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 133 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 820,
            route = {
                { mapID = 1431, x = 0.2811, y = 0.3147, label = "Abercrombie", offMapText = "Travel to Abercrombie in Duskwood." },
            },
            text = "Accept Note to the Mayor from Abercrombie.",
            id = "accept-160-note-to-the-mayor",
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
                quest = { id = 160, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 134 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 830,
            route = {
                { y = 0.2908, mapID = 1431, label = "The Weathered Grave", offMapText = "Travel to The Weathered Grave.", x = 0.1772 },
            },
            text = "Accept The Weathered Grave.",
            id = "accept-225-the-weathered-grave",
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
                quest = { id = 225, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 840,
            text = "Turn in Armed and Ready to Sven Yorgen.",
            route = {
                { y = 0.3407, mapID = 1431, label = "Sven Yorgen", offMapText = "Travel to Sven Yorgen in Duskwood.", x = 0.0778 },
            },
            dependsOn = { "accept-325-armed-and-ready" },
            id = "turnin-325-armed-and-ready",
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
                quest = { id = 325, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 322 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 850,
            text = "Turn in The Legend of Stalvan to Tavernkeep Smitts.",
            route = {
                { y = 0.4448, mapID = 1431, label = "Tavernkeep Smitts", offMapText = "Travel to Tavernkeep Smitts in Duskwood.", x = 0.7378 },
            },
            dependsOn = { "accept-78-the-legend-of-stalvan" },
            id = "turnin-78-the-legend-of-stalvan",
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
                quest = { id = 78, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 75 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 860,
            route = {
                { y = 0.4448, mapID = 1431, label = "Tavernkeep Smitts", offMapText = "Travel to Tavernkeep Smitts in Duskwood.", x = 0.7378 },
            },
            text = "Accept The Legend of Stalvan from Tavernkeep Smitts.",
            id = "accept-79-the-legend-of-stalvan",
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
                quest = { id = 79, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 78 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 870,
            text = "Turn in The Night Watch to Commander Althea Ebonlocke.",
            route = {
                { y = 0.4689, mapID = 1431, label = "Commander Althea Ebonlocke", offMapText = "Travel to Commander Althea Ebonlocke in Duskwood.", x = 0.7359 },
            },
            dependsOn = { "accept-58-the-night-watch", "objective-58-1-plague-spreader" },
            id = "turnin-58-the-night-watch",
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
                quest = { id = 58, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 57 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 880,
            text = "Turn in The Legend of Stalvan to Commander Althea Ebonlocke.",
            route = {
                { y = 0.4689, mapID = 1431, label = "Commander Althea Ebonlocke", offMapText = "Travel to Commander Althea Ebonlocke in Duskwood.", x = 0.7359 },
            },
            dependsOn = { "accept-79-the-legend-of-stalvan" },
            id = "turnin-79-the-legend-of-stalvan",
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
                quest = { id = 79, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 78 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 890,
            route = {
                { y = 0.4689, mapID = 1431, label = "Commander Althea Ebonlocke", offMapText = "Travel to Commander Althea Ebonlocke in Duskwood.", x = 0.7359 },
            },
            text = "Accept The Legend of Stalvan from Commander Althea Ebonlocke.",
            id = "accept-80-the-legend-of-stalvan",
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
                quest = { id = 80, state = "activeOrCompleted" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 79 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 900,
            text = "Turn in The Legend of Stalvan to Clerk Daltry.",
            route = {
                { y = 0.4685, mapID = 1431, label = "Clerk Daltry", offMapText = "Travel to Clerk Daltry in Duskwood.", x = 0.7252 },
            },
            dependsOn = { "accept-80-the-legend-of-stalvan" },
            id = "turnin-80-the-legend-of-stalvan",
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
                quest = { id = 80, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 79 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 910,
            route = {
                { y = 0.4685, mapID = 1431, label = "Clerk Daltry", offMapText = "Travel to Clerk Daltry in Duskwood.", x = 0.7252 },
            },
            text = "Accept The Legend of Stalvan from Clerk Daltry.",
            id = "accept-97-the-legend-of-stalvan",
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
                quest = { id = 97, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 80 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 920,
            text = "Turn in The Weathered Grave to Sirra Von'Indi.",
            route = {
                { y = 0.4762, mapID = 1431, label = "Sirra Von'Indi", offMapText = "Travel to Sirra Von'Indi in Duskwood.", x = 0.7264 },
            },
            dependsOn = { "accept-225-the-weathered-grave" },
            id = "turnin-225-the-weathered-grave",
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
                quest = { id = 225, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 930,
            route = {
                { y = 0.4762, mapID = 1431, label = "Sirra Von'Indi", offMapText = "Travel to Sirra Von'Indi in Duskwood.", x = 0.7264 },
            },
            text = "Accept Morgan Ladimore from Sirra Von'Indi.",
            id = "accept-227-morgan-ladimore",
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
                quest = { id = 227, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 225 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 940,
            text = "Turn in Note to the Mayor to Lord Ello Ebonlocke.",
            route = {
                { y = 0.4642, mapID = 1431, label = "Lord Ello Ebonlocke", offMapText = "Travel to Lord Ello Ebonlocke in Duskwood.", x = 0.7193 },
            },
            dependsOn = { "accept-160-note-to-the-mayor" },
            id = "turnin-160-note-to-the-mayor",
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
                quest = { id = 160, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 134 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 950,
            route = {
                { y = 0.4642, mapID = 1431, label = "Lord Ello Ebonlocke", offMapText = "Travel to Lord Ello Ebonlocke in Duskwood.", x = 0.7193 },
            },
            text = "Accept Translate Abercrombie's Note from Lord Ello Ebonlocke.",
            id = "accept-251-translate-abercrombie-s-note",
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
                quest = { id = 251, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 160 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 960,
            text = "Turn in Translate Abercrombie's Note to Sirra Von'Indi.",
            route = {
                { y = 0.4762, mapID = 1431, label = "Sirra Von'Indi", offMapText = "Travel to Sirra Von'Indi in Duskwood.", x = 0.7264 },
            },
            dependsOn = { "accept-251-translate-abercrombie-s-note" },
            id = "turnin-251-translate-abercrombie-s-note",
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
                quest = { id = 251, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 160 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 970,
            route = {
                { y = 0.4762, mapID = 1431, label = "Sirra Von'Indi", offMapText = "Travel to Sirra Von'Indi in Duskwood.", x = 0.7264 },
            },
            text = "Accept Wait for Sirra to Finish from Sirra Von'Indi.",
            id = "accept-401-wait-for-sirra-to-finish",
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
                quest = { id = 401, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 251 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 980,
            text = "Turn in Wait for Sirra to Finish to Sirra Von'Indi.",
            route = {
                { y = 0.4762, mapID = 1431, label = "Sirra Von'Indi", offMapText = "Travel to Sirra Von'Indi in Duskwood.", x = 0.7264 },
            },
            dependsOn = { "accept-401-wait-for-sirra-to-finish" },
            id = "turnin-401-wait-for-sirra-to-finish",
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
                quest = { id = 401, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 251 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 990,
            route = {
                { y = 0.4762, mapID = 1431, label = "Sirra Von'Indi", offMapText = "Travel to Sirra Von'Indi in Duskwood.", x = 0.7264 },
            },
            text = "Accept Translation to Ello from Sirra Von'Indi.",
            id = "accept-252-translation-to-ello",
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
                quest = { id = 252, state = "activeOrCompleted" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 401 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1000,
            text = "Turn in Translation to Ello to Lord Ello Ebonlocke.",
            route = {
                { y = 0.4642, mapID = 1431, label = "Lord Ello Ebonlocke", offMapText = "Travel to Lord Ello Ebonlocke in Duskwood.", x = 0.7193 },
            },
            dependsOn = { "accept-252-translation-to-ello" },
            id = "turnin-252-translation-to-ello",
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
                quest = { id = 252, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 401 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1010,
            text = "Turn in Morgan Ladimore to Commander Althea Ebonlocke.",
            route = {
                { y = 0.4689, mapID = 1431, label = "Commander Althea Ebonlocke", offMapText = "Travel to Commander Althea Ebonlocke in Duskwood.", x = 0.7359 },
            },
            dependsOn = { "accept-227-morgan-ladimore" },
            id = "turnin-227-morgan-ladimore",
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
                quest = { id = 227, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 225 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1020,
            text = "Turn in The Legend of Stalvan to Commander Althea Ebonlocke.",
            route = {
                { y = 0.4689, mapID = 1431, label = "Commander Althea Ebonlocke", offMapText = "Travel to Commander Althea Ebonlocke in Duskwood.", x = 0.7359 },
            },
            dependsOn = { "accept-97-the-legend-of-stalvan" },
            id = "turnin-97-the-legend-of-stalvan",
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
                quest = { id = 97, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 80 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1030,
            route = {
                { y = 0.4689, mapID = 1431, label = "Commander Althea Ebonlocke", offMapText = "Travel to Commander Althea Ebonlocke in Duskwood.", x = 0.7359 },
            },
            text = "Accept The Legend of Stalvan from Commander Althea Ebonlocke.",
            id = "accept-98-the-legend-of-stalvan",
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
                quest = { id = 98, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 97 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1040,
            text = "Turn in Worgen in the Woods to Calor.",
            route = {
                { y = 0.4805, mapID = 1431, label = "Calor", offMapText = "Travel to Calor in Duskwood.", x = 0.753 },
            },
            dependsOn = { "accept-221-worgen-in-the-woods", "objective-221-1-nightbane-dark-runner" },
            id = "turnin-221-worgen-in-the-woods",
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
                quest = { id = 221, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 173 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1050,
            route = {
                { y = 0.4805, mapID = 1431, label = "Calor", offMapText = "Travel to Calor in Duskwood.", x = 0.753 },
            },
            text = "Accept Worgen in the Woods from Calor.",
            id = "accept-222-worgen-in-the-woods",
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
                quest = { id = 222, state = "activeOrCompleted" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 221 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1060,
            text = "Turn in Look To The Stars to Viktori Prism'Antras.",
            route = {
                { y = 0.4802, mapID = 1431, label = "Viktori Prism'Antras", offMapText = "Travel to Viktori Prism'Antras in Duskwood.", x = 0.798 },
            },
            dependsOn = { "accept-181-look-to-the-stars", "objective-181-1-zzarc-vul" },
            id = "turnin-181-look-to-the-stars",
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
                quest = { id = 181, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 177 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            dependsOn = { "accept-1244-the-missing-diplomat", "objective-1244-1-defias-docket" },
            id = "turnin-1244-the-missing-diplomat",
            text = "Turn in The Missing Diplomat to Watcher Backus.",
            useClientPin = true,
            complete = {
                quest = { id = 1244, state = "completed" },
            },
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
            priority = 1070,
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1243 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            priority = 1080,
            text = "Accept The Missing Diplomat from Watcher Backus.",
            id = "accept-1245-the-missing-diplomat",
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
                quest = { id = 1245, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            id = "objective-335-1-tear-of-tilloa",
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
            text = "Collect 1 Tear of Tilloa.",
            complete = {
                questObjective = { id = 335, index = 1, text = "Tear of Tilloa", count = 1 },
            },
            route = {
                { mapID = 1431, x = 0.7835, y = 0.35950000000000004, label = "Tear of Tilloa", offMapText = "Travel to Tear of Tilloa." },
            },
            sourceStep = 48,
            priority = 1090,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-98-1-mistmantle-family-ring",
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
            text = "Collect 1 Mistmantle Family Ring.",
            complete = {
                questObjective = { id = 98, index = 1, text = "Mistmantle Family Ring", count = 1 },
            },
            route = {
                { mapID = 1431, x = 0.7735, y = 0.3619, label = "Mistmantle Family Ring", offMapText = "Travel to Mistmantle Family Ring." },
            },
            sourceStep = 49,
            priority = 1100,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 97 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-98-the-legend-of-stalvan" },
        },
        {
            priority = 1110,
            text = "Turn in The Legend of Stalvan to Madame Eva.",
            route = {
                { y = 0.4529, mapID = 1431, label = "Madame Eva", offMapText = "Travel to Madame Eva in Duskwood.", x = 0.7582 },
            },
            dependsOn = { "accept-98-the-legend-of-stalvan", "objective-98-1-mistmantle-family-ring" },
            id = "turnin-98-the-legend-of-stalvan",
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
                quest = { id = 98, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 97 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1120,
            text = "Kill 8 Nightbane Tainted One.",
            route = {
                { y = 0.7508, mapID = 1431, label = "Nightbane Tainted One", offMapText = "Travel to Nightbane Tainted One.", x = 0.7303 },
            },
            dependsOn = { "accept-222-worgen-in-the-woods" },
            id = "objective-222-2-nightbane-tainted-one",
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
                questObjective = { id = 222, text = "Nightbane Tainted One", index = 2, count = 8 },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 221 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1130,
            text = "Kill 8 Nightbane Vile Fang.",
            route = {
                { y = 0.7508, mapID = 1431, label = "Nightbane Vile Fang", offMapText = "Travel to Nightbane Vile Fang.", x = 0.7303 },
            },
            dependsOn = { "accept-222-worgen-in-the-woods" },
            id = "objective-222-1-nightbane-vile-fang",
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
                questObjective = { id = 222, text = "Nightbane Vile Fang", index = 1, count = 8 },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 221 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-215-jungle-secrets",
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
            checkpointQuest = 215,
            priority = 1140,
        },
        {
            priority = 1150,
            route = {
                { y = 0.0341, mapID = 1434, label = "Private Thorsen", offMapText = "Travel to Private Thorsen in Stranglethorn Vale.", x = 0.3798 },
            },
            text = "Accept Jungle Secrets from Private Thorsen.",
            id = "accept-215-jungle-secrets",
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
                quest = { id = 215, state = "activeOrCompleted" },
            },
            sourceStep = 53,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-583-welcome-to-the-jungle",
            kind = "note",
            text = "Reach level 28 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 28 },
            },
            requiredLevel = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 583,
            priority = 1160,
        },
        {
            priority = 1170,
            route = {
                { y = 0.1053, mapID = 1434, label = "Barnil Stonepot", offMapText = "Travel to Barnil Stonepot in Stranglethorn Vale.", x = 0.3566 },
            },
            text = "Accept Welcome to the Jungle from Barnil Stonepot.",
            id = "accept-583-welcome-to-the-jungle",
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
                quest = { id = 583, state = "activeOrCompleted" },
            },
            sourceStep = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1180,
            text = "Turn in Welcome to the Jungle to Hemet Nesingwary.",
            route = {
                { y = 0.1081, mapID = 1434, label = "Hemet Nesingwary", offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.", x = 0.3566 },
            },
            dependsOn = { "accept-583-welcome-to-the-jungle" },
            id = "turnin-583-welcome-to-the-jungle",
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
                quest = { id = 583, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1190,
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3561 },
            },
            text = "Accept Tiger Mastery from Ajeck Rouack.",
            id = "accept-185-tiger-mastery",
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
                quest = { id = 185, state = "activeOrCompleted" },
            },
            sourceStep = 56,
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
            priority = 1200,
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            text = "Accept Panther Mastery from Sir S. J. Erlgadin.",
            id = "accept-190-panther-mastery",
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
                quest = { id = 190, state = "activeOrCompleted" },
            },
            sourceStep = 57,
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
            priority = 1210,
            text = "Kill 10 Young Stranglethorn Tiger.",
            route = {
                { y = 0.13, mapID = 1434, label = "Young Stranglethorn Tiger", offMapText = "Travel to Young Stranglethorn Tiger.", x = 0.338 },
            },
            dependsOn = { "accept-185-tiger-mastery" },
            id = "objective-185-1-young-stranglethorn-tiger",
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
                questObjective = { id = 185, text = "Young Stranglethorn Tiger", index = 1, count = 10 },
            },
            sourceStep = 58,
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
            id = "objective-190-1-young-panther",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Kill 10 Young Panther.",
            complete = {
                questObjective = { id = 190, index = 1, text = "Young Panther", count = 10 },
            },
            route = {
                { mapID = 1434, x = 0.414, y = 0.13, label = "Young Panther", offMapText = "Travel to Young Panther." },
            },
            sourceStep = 59,
            priority = 1220,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 583 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-190-panther-mastery" },
        },
        {
            priority = 1230,
            text = "Turn in Tiger Mastery to Ajeck Rouack.",
            route = {
                { y = 0.1062, mapID = 1434, label = "Ajeck Rouack", offMapText = "Travel to Ajeck Rouack in Stranglethorn Vale.", x = 0.3561 },
            },
            dependsOn = { "accept-185-tiger-mastery", "objective-185-1-young-stranglethorn-tiger" },
            id = "turnin-185-tiger-mastery",
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
                quest = { id = 185, state = "completed" },
            },
            sourceStep = 60,
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
            priority = 1240,
            text = "Turn in Panther Mastery to Sir S. J. Erlgadin.",
            route = {
                { y = 0.1055, mapID = 1434, label = "Sir S. J. Erlgadin", offMapText = "Travel to Sir S. J. Erlgadin in Stranglethorn Vale.", x = 0.3555 },
            },
            dependsOn = { "accept-190-panther-mastery", "objective-190-1-young-panther" },
            id = "turnin-190-panther-mastery",
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
                quest = { id = 190, state = "completed" },
            },
            sourceStep = 61,
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
            priority = 1250,
            text = "Turn in Jungle Secrets to Lieutenant Doren.",
            route = {
                { y = 0.0301, mapID = 1434, label = "Lieutenant Doren", offMapText = "Travel to Lieutenant Doren in Stranglethorn Vale.", x = 0.3804 },
            },
            dependsOn = { "accept-215-jungle-secrets" },
            id = "turnin-215-jungle-secrets",
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
                quest = { id = 215, state = "completed" },
            },
            sourceStep = 62,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1260,
            text = "Turn in Worgen in the Woods to Calor.",
            route = {
                { y = 0.4805, mapID = 1431, label = "Calor", offMapText = "Travel to Calor in Duskwood.", x = 0.753 },
            },
            dependsOn = {
                "accept-222-worgen-in-the-woods",
                "objective-222-2-nightbane-tainted-one",
                "objective-222-1-nightbane-vile-fang",
            },
            id = "turnin-222-worgen-in-the-woods",
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
                quest = { id = 222, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 221 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1270,
            route = {
                { y = 0.4805, mapID = 1431, label = "Calor", offMapText = "Travel to Calor in Duskwood.", x = 0.753 },
            },
            text = "Accept Worgen in the Woods from Calor.",
            id = "accept-223-worgen-in-the-woods",
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
                quest = { id = 223, state = "activeOrCompleted" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 222 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1280,
            text = "Turn in Worgen in the Woods to Jonathan Carevin.",
            route = {
                { y = 0.4902, mapID = 1431, label = "Jonathan Carevin", offMapText = "Travel to Jonathan Carevin in Duskwood.", x = 0.7532 },
            },
            dependsOn = { "accept-223-worgen-in-the-woods" },
            id = "turnin-223-worgen-in-the-woods",
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
                quest = { id = 223, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 222 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-690-malin-s-request",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 8 },
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
            checkpointQuest = 690,
            priority = 1290,
        },
        {
            priority = 1300,
            route = {
                { y = 0.8146, mapID = 1453, label = "Archmage Malin", offMapText = "Travel to Archmage Malin in Stormwind City.", x = 0.3984 },
            },
            text = "Accept Malin's Request from Archmage Malin.",
            id = "accept-690-malin-s-request",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
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
                quest = { id = 690, state = "activeOrCompleted" },
            },
            sourceStep = 67,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1310,
            route = {
                { mapID = 1453, x = 0.40619999999999995, y = 0.9183, label = "Connor Rivers", offMapText = "Travel to Connor Rivers in Stormwind City." },
            },
            text = "Accept James Hyal from Connor Rivers.",
            id = "accept-1301-james-hyal",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
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
                quest = { id = 1301, state = "activeOrCompleted" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1320,
            route = {
                { mapID = 1453, x = 0.2645, y = 0.7865000000000001, label = "Zardeth of the Black Claw", offMapText = "Travel to Zardeth of the Black Claw in Stormwind City." },
            },
            text = "Turn in A Noble Brew to Zardeth of the Black Claw.",
            id = "turnin-335-a-noble-brew",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
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
                quest = { id = 335, state = "completed" },
            },
            sourceStep = 69,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-335-1-tear-of-tilloa" },
        },
        {
            priority = 1330,
            route = {
                { mapID = 1453, x = 0.2645, y = 0.7865000000000001, label = "Zardeth of the Black Claw", offMapText = "Travel to Zardeth of the Black Claw in Stormwind City." },
            },
            text = "Accept A Noble Brew from Zardeth of the Black Claw.",
            id = "accept-336-a-noble-brew",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
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
                quest = { id = 336, state = "activeOrCompleted" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 335 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1340,
            route = {
                { y = 0.7278, mapID = 1453, label = "Turtle Meat", offMapText = "Travel to Turtle Meat.", x = 0.5766 },
            },
            text = "Collect 10 Turtle Meat. Keep 10 Turtle Meat for the later quest pickup.",
            id = "collect-before-pickup-objective-555-1-turtle-meat",
            kind = "note",
            conditions = {
                all = {
                    { class = 8 },
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
            priority = 1350,
            text = "Turn in The Missing Diplomat to Elling Trias.",
            route = {
                { y = 0.6417, mapID = 1453, label = "Elling Trias", offMapText = "Travel to Elling Trias in Stormwind City.", x = 0.5991 },
            },
            dependsOn = { "accept-1245-the-missing-diplomat" },
            id = "turnin-1245-the-missing-diplomat",
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
                quest = { id = 1245, state = "completed" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1244 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1360,
            route = {
                { y = 0.6417, mapID = 1453, label = "Elling Trias", offMapText = "Travel to Elling Trias in Stormwind City.", x = 0.5991 },
            },
            text = "Accept The Missing Diplomat from Elling Trias.",
            id = "accept-1246-the-missing-diplomat",
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
                quest = { id = 1246, state = "activeOrCompleted" },
            },
            sourceStep = 72,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1245 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-690-malin-s-request-2",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1, 2, 3, 4, 5, 7, 9, 11 },
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
            checkpointQuest = 690,
            priority = 1370,
        },
        {
            id = "accept-690-malin-s-request-2",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1, 2, 3, 4, 5, 7, 9, 11 },
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
            text = "Accept Malin's Request from Archmage Malin.",
            complete = {
                quest = { id = 690, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 1453, x = 0.39840000000000003, y = 0.8146, label = "Archmage Malin", offMapText = "Travel to Archmage Malin in Stormwind City." },
            },
            sourceStep = 75,
            priority = 1380,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "accept-1301-james-hyal-2",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1, 2, 3, 4, 5, 7, 9, 11 },
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
            text = "Accept James Hyal from Connor Rivers.",
            complete = {
                quest = { id = 1301, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 1453, x = 0.40619999999999995, y = 0.9183, label = "Connor Rivers", offMapText = "Travel to Connor Rivers in Stormwind City." },
            },
            sourceStep = 76,
            priority = 1390,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "turnin-335-a-noble-brew-2",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1, 2, 3, 4, 5, 7, 9, 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Turn in A Noble Brew to Zardeth of the Black Claw.",
            complete = {
                quest = { id = 335, state = "completed" },
            },
            route = {
                { mapID = 1453, x = 0.2645, y = 0.7865000000000001, label = "Zardeth of the Black Claw", offMapText = "Travel to Zardeth of the Black Claw in Stormwind City." },
            },
            sourceStep = 77,
            priority = 1400,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-335-1-tear-of-tilloa" },
        },
        {
            id = "accept-336-a-noble-brew-2",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1, 2, 3, 4, 5, 7, 9, 11 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Accept A Noble Brew from Zardeth of the Black Claw.",
            complete = {
                quest = { id = 336, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 1453, x = 0.2645, y = 0.7865000000000001, label = "Zardeth of the Black Claw", offMapText = "Travel to Zardeth of the Black Claw in Stormwind City." },
            },
            sourceStep = 77,
            priority = 1410,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 335 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1798-seeking-strahad",
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
            checkpointQuest = 1798,
            priority = 1420,
        },
        {
            priority = 1430,
            route = {
                { y = 0.7854, mapID = 1453, label = "Gakin the Darkbinder", offMapText = "Travel to Gakin the Darkbinder in Stormwind City.", x = 0.2525 },
            },
            text = "Accept Seeking Strahad from Gakin the Darkbinder.",
            id = "accept-1798-seeking-strahad",
            kind = "accept",
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
                quest = { id = 1798, state = "activeOrCompleted" },
            },
            sourceStep = 80,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1718-the-islander",
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
            checkpointQuest = 1718,
            priority = 1440,
        },
        {
            priority = 1450,
            route = {
                { y = 0.4579, mapID = 1453, label = "Wu Shen", offMapText = "Travel to Wu Shen in Stormwind City.", x = 0.7868 },
            },
            id = "accept-1718-the-islander",
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
            sourceStep = 84,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1718-the-islander",
        },
        {
            priority = 1460,
            text = "Turn in The Missing Diplomat to Dashel Stonefist.",
            route = {
                { y = 0.4488, mapID = 1453, label = "Dashel Stonefist", offMapText = "Travel to Dashel Stonefist in Stormwind City.", x = 0.7053 },
            },
            dependsOn = { "accept-1246-the-missing-diplomat" },
            id = "turnin-1246-the-missing-diplomat",
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
                quest = { id = 1246, state = "completed" },
            },
            sourceStep = 88,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1245 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1470,
            route = {
                { y = 0.4488, mapID = 1453, label = "Dashel Stonefist", offMapText = "Travel to Dashel Stonefist in Stormwind City.", x = 0.7053 },
            },
            text = "Accept The Missing Diplomat from Dashel Stonefist.",
            id = "accept-1447-the-missing-diplomat",
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
                quest = { id = 1447, state = "activeOrCompleted" },
            },
            sourceStep = 88,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1246 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1480,
            text = "Kill Dashel Stonefist.",
            route = {
                { y = 0.4488, mapID = 1453, label = "Dashel Stonefist", offMapText = "Travel to Dashel Stonefist.", x = 0.7053 },
            },
            dependsOn = { "accept-1447-the-missing-diplomat" },
            id = "objective-1447-1-dashel-stonefist",
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
                questObjective = { id = 1447, text = "Dashel Stonefist", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1246 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1490,
            text = "Turn in The Missing Diplomat to Dashel Stonefist.",
            route = {
                { y = 0.4488, mapID = 1453, label = "Dashel Stonefist", offMapText = "Travel to Dashel Stonefist in Stormwind City.", x = 0.7053 },
            },
            dependsOn = { "accept-1447-the-missing-diplomat", "objective-1447-1-dashel-stonefist" },
            id = "turnin-1447-the-missing-diplomat",
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
                quest = { id = 1447, state = "completed" },
            },
            sourceStep = 90,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1246 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1500,
            route = {
                { y = 0.4488, mapID = 1453, label = "Dashel Stonefist", offMapText = "Travel to Dashel Stonefist in Stormwind City.", x = 0.7053 },
            },
            text = "Accept The Missing Diplomat from Dashel Stonefist.",
            id = "accept-1247-the-missing-diplomat",
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
                quest = { id = 1247, state = "activeOrCompleted" },
            },
            sourceStep = 90,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1447 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1510,
            text = "Turn in The Missing Diplomat to Elling Trias.",
            route = {
                { y = 0.6417, mapID = 1453, label = "Elling Trias", offMapText = "Travel to Elling Trias in Stormwind City.", x = 0.5991 },
            },
            dependsOn = { "accept-1247-the-missing-diplomat" },
            id = "turnin-1247-the-missing-diplomat",
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
                quest = { id = 1247, state = "completed" },
            },
            sourceStep = 91,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1447 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1520,
            route = {
                { y = 0.6417, mapID = 1453, label = "Elling Trias", offMapText = "Travel to Elling Trias in Stormwind City.", x = 0.5991 },
            },
            text = "Accept The Missing Diplomat from Elling Trias.",
            id = "accept-1248-the-missing-diplomat",
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
                quest = { id = 1248, state = "activeOrCompleted" },
            },
            sourceStep = 91,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1247 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1530,
            text = "Turn in A Noble Brew to Lord Baurles K. Wishock.",
            route = {
                { mapID = 1453, x = 0.7523000000000001, y = 0.31670000000000004, label = "Lord Baurles K. Wishock", offMapText = "Travel to Lord Baurles K. Wishock in Stormwind City." },
            },
            dependsOn = { "accept-336-a-noble-brew-2", "accept-336-a-noble-brew" },
            id = "turnin-336-a-noble-brew",
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
                quest = { id = 336, state = "completed" },
            },
            sourceStep = 92,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 335 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1540,
            text = "Turn in An Old History Book.",
            route = {
                { y = 0.0749, mapID = 1453, label = "An Old History Book", offMapText = "Travel to An Old History Book.", x = 0.7417 },
            },
            dependsOn = { "accept-337-an-old-history-book", "objective-337-1-nightbane-dark-runner" },
            id = "turnin-337-an-old-history-book-2",
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
                quest = { id = 337, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1550,
            text = "Turn in James Hyal to Vincent Hyal.",
            route = {
                { y = 0.604, mapID = 1437, label = "Vincent Hyal", offMapText = "Travel to Vincent Hyal in Wetlands.", x = 0.1083 },
            },
            dependsOn = { "accept-1301-james-hyal-2", "accept-1301-james-hyal" },
            id = "turnin-1301-james-hyal",
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
                quest = { id = 1301, state = "completed" },
            },
            sourceStep = 94,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1560,
            route = {
                { y = 0.604, mapID = 1437, label = "Vincent Hyal", offMapText = "Travel to Vincent Hyal in Wetlands.", x = 0.1083 },
            },
            text = "Accept James Hyal from Vincent Hyal.",
            id = "accept-1302-james-hyal",
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
                quest = { id = 1302, state = "activeOrCompleted" },
            },
            sourceStep = 94,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1570,
            text = "Turn in The Missing Diplomat to Mikhail.",
            route = {
                { y = 0.6077, mapID = 1437, label = "Mikhail", offMapText = "Travel to Mikhail in Wetlands.", x = 0.106 },
            },
            dependsOn = { "accept-1248-the-missing-diplomat" },
            id = "turnin-1248-the-missing-diplomat",
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
                quest = { id = 1248, state = "completed" },
            },
            sourceStep = 96,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1247 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1580,
            route = {
                { y = 0.6077, mapID = 1437, label = "Mikhail", offMapText = "Travel to Mikhail in Wetlands.", x = 0.106 },
            },
            text = "Accept The Missing Diplomat from Mikhail.",
            id = "accept-1249-the-missing-diplomat",
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
                quest = { id = 1249, state = "activeOrCompleted" },
            },
            sourceStep = 96,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1248 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1590,
            text = "Kill Tapoke \"Slim\" Jahn.",
            route = {
                { y = 0.596, mapID = 1437, label = "Tapoke \"Slim\" Jahn", offMapText = "Travel to Tapoke \"Slim\" Jahn.", x = 0.1079 },
            },
            dependsOn = { "accept-1249-the-missing-diplomat" },
            id = "objective-1249-1-tapoke-slim-jahn",
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
                questObjective = { id = 1249, text = "Tapoke \"Slim\" Jahn", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1248 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1600,
            text = "Turn in The Missing Diplomat to Mikhail.",
            route = {
                { y = 0.6077, mapID = 1437, label = "Mikhail", offMapText = "Travel to Mikhail in Wetlands.", x = 0.106 },
            },
            dependsOn = { "accept-1249-the-missing-diplomat", "objective-1249-1-tapoke-slim-jahn" },
            id = "turnin-1249-the-missing-diplomat",
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
                quest = { id = 1249, state = "completed" },
            },
            sourceStep = 98,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1248 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1610,
            route = {
                { y = 0.6026, mapID = 1437, label = "Tapoke \"Slim\" Jahn", offMapText = "Travel to Tapoke \"Slim\" Jahn in Wetlands.", x = 0.1054 },
            },
            text = "Accept The Missing Diplomat from Tapoke \"Slim\" Jahn.",
            id = "accept-1250-the-missing-diplomat",
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
                quest = { id = 1250, state = "activeOrCompleted" },
            },
            sourceStep = 99,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1249 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1620,
            text = "Turn in The Missing Diplomat to Mikhail.",
            route = {
                { y = 0.6077, mapID = 1437, label = "Mikhail", offMapText = "Travel to Mikhail in Wetlands.", x = 0.106 },
            },
            dependsOn = { "accept-1250-the-missing-diplomat" },
            id = "turnin-1250-the-missing-diplomat",
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
                quest = { id = 1250, state = "completed" },
            },
            sourceStep = 100,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1249 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1630,
            route = {
                { y = 0.6077, mapID = 1437, label = "Mikhail", offMapText = "Travel to Mikhail in Wetlands.", x = 0.106 },
            },
            text = "Accept The Missing Diplomat from Mikhail.",
            id = "accept-1264-the-missing-diplomat",
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
                quest = { id = 1264, state = "activeOrCompleted" },
            },
            sourceStep = 100,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1250 },
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
