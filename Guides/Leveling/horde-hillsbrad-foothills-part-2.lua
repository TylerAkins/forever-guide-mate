local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Hillsbrad Foothills",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-hillsbrad-foothills-part-2",
    conditions = {
        all = {
            { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4786-the-completed-robe",
        },
        {
            id = "level-before-woven-class-warlock-accept-4739-in-search-of-menara-voidrender",
            kind = "note",
            text = "Reach level 31 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
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
            checkpointQuest = 4739,
            alternativeQuests = { 4736, 4737, 4738 },
            priority = 210,
        },
        {
            priority = 220,
            route = {
                { y = 0.156, mapID = 1458, label = "Kaal Soulreaper", x = 0.86, offMapText = "Travel to Kaal Soulreaper in Undercity." },
            },
            id = "woven-class-warlock-accept-4739-in-search-of-menara-voidrender",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4739-in-search-of-menara-voidrender",
        },
        {
            priority = 230,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4739-in-search-of-menara-voidrender" },
            id = "woven-class-warlock-turnin-4739-in-search-of-menara-voidrender",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4739-in-search-of-menara-voidrender",
        },
        {
            priority = 240,
            route = {
                { y = 0.456, mapID = 1454, label = "Zevrost", x = 0.484, offMapText = "Travel to Zevrost in Orgrimmar." },
            },
            id = "woven-class-warlock-accept-4737-in-search-of-menara-voidrender",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4737-in-search-of-menara-voidrender",
        },
        {
            priority = 250,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-4737-in-search-of-menara-voidrender" },
            id = "woven-class-warlock-turnin-4737-in-search-of-menara-voidrender",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4737-in-search-of-menara-voidrender",
        },
        {
            priority = 260,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            id = "woven-class-warlock-accept-3001-seeking-strahad",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3001-seeking-strahad",
        },
        {
            priority = 270,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-3001-seeking-strahad" },
            id = "woven-class-warlock-turnin-3001-seeking-strahad",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3001-seeking-strahad",
        },
        {
            priority = 280,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1801-tome-of-the-cabal",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1801-tome-of-the-cabal",
        },
        {
            priority = 290,
            route = {
                { y = 0.376, mapID = 1458, label = "Jorah Annison", x = 0.76, offMapText = "Travel to Jorah Annison in Undercity." },
            },
            dependsOn = { "woven-class-warlock-accept-1801-tome-of-the-cabal" },
            id = "woven-class-warlock-turnin-1801-tome-of-the-cabal",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1801-tome-of-the-cabal",
        },
        {
            priority = 300,
            route = {
                { y = 0.376, mapID = 1458, label = "Jorah Annison", x = 0.76, offMapText = "Travel to Jorah Annison in Undercity." },
            },
            id = "woven-class-warlock-accept-1803-tome-of-the-cabal",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1803-tome-of-the-cabal",
        },
        {
            priority = 310,
            id = "woven-class-warlock-objective-1803-book-1",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "woven-class-warlock-accept-1803-tome-of-the-cabal" },
            route = {
                { mapID = 1424, x = 0.2778, y = 0.7278, label = "Moldy Tome", offMapText = "Travel to Moldy Tome." },
            },
            classAction = "objective-1803-book-1",
        },
        {
            priority = 320,
            id = "woven-class-warlock-objective-1803-book-2",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "woven-class-warlock-accept-1803-tome-of-the-cabal" },
            route = {
                { mapID = 1441, x = 0.4343, y = 0.32689999999999997, label = "Tattered Manuscript", offMapText = "Travel to Tattered Manuscript." },
            },
            classAction = "objective-1803-book-2",
        },
        {
            priority = 330,
            route = {
                { y = 0.376, mapID = 1458, label = "Jorah Annison", x = 0.76, offMapText = "Travel to Jorah Annison in Undercity." },
            },
            dependsOn = {
                "woven-class-warlock-accept-1803-tome-of-the-cabal",
                "woven-class-warlock-objective-1803-book-1",
                "woven-class-warlock-objective-1803-book-2",
            },
            id = "woven-class-warlock-turnin-1803-tome-of-the-cabal",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1803-tome-of-the-cabal",
        },
        {
            priority = 340,
            route = {
                { y = 0.376, mapID = 1458, label = "Jorah Annison", x = 0.76, offMapText = "Travel to Jorah Annison in Undercity." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-1805-tome-of-the-cabal",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1805-tome-of-the-cabal",
        },
        {
            priority = 350,
            id = "woven-class-warlock-objective-1805-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-1805-tome-of-the-cabal" },
            classAction = "objective-1805-quest-work",
        },
        {
            priority = 360,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-1805-tome-of-the-cabal", "woven-class-warlock-objective-1805-quest-work" },
            id = "woven-class-warlock-turnin-1805-tome-of-the-cabal",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1805-tome-of-the-cabal",
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
                    { faction = "Horde" },
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
            priority = 370,
        },
        {
            priority = 380,
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
                    { faction = "Horde" },
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
            priority = 390,
            id = "woven-class-warlock-objective-1795-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
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
            priority = 400,
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
                    { faction = "Horde" },
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
            priority = 410,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-2996-seeking-strahad",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2996-seeking-strahad",
        },
        {
            priority = 420,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "woven-class-warlock-accept-2996-seeking-strahad" },
            id = "woven-class-warlock-turnin-2996-seeking-strahad",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2996-seeking-strahad",
        },
        {
            id = "level-before-woven-class-shaman-accept-1532-call-of-air",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
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
            checkpointQuest = 1532,
            alternativeQuests = { 1531 },
            priority = 430,
        },
        {
            priority = 440,
            route = {
                { y = 0.21, mapID = 1456, label = "Xanis Flameweaver", x = 0.252, offMapText = "Travel to Xanis Flameweaver in Thunder Bluff." },
            },
            id = "woven-class-shaman-accept-1532-call-of-air",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1532-call-of-air",
        },
        {
            priority = 450,
            route = {
                { y = 0.428, mapID = 1441, label = "Prate Cloudseer", x = 0.536, offMapText = "Travel to Prate Cloudseer in Thousand Needles." },
            },
            dependsOn = { "woven-class-shaman-accept-1532-call-of-air" },
            id = "woven-class-shaman-turnin-1532-call-of-air",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1532-call-of-air",
        },
        {
            id = "level-before-woven-class-mage-accept-1947-journey-to-the-marsh-horde",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
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
            priority = 460,
        },
        {
            priority = 470,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            id = "woven-class-mage-accept-1947-journey-to-the-marsh-horde",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1947-journey-to-the-marsh-horde",
        },
        {
            priority = 480,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "woven-class-mage-accept-1947-journey-to-the-marsh-horde" },
            id = "woven-class-mage-turnin-1947-journey-to-the-marsh",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1947-journey-to-the-marsh",
        },
        {
            priority = 490,
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
                    { faction = "Horde" },
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
            priority = 500,
            dependsOn = { "woven-class-mage-accept-1948-items-of-power" },
            id = "woven-class-mage-objective-1948-items-of-power",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1948-items-of-power",
        },
        {
            priority = 510,
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
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1948-items-of-power",
        },
        {
            priority = 520,
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
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1949-hidden-secrets",
        },
        {
            priority = 530,
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
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1949-hidden-secrets",
        },
        {
            priority = 540,
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
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1950-get-the-scoop",
        },
        {
            priority = 550,
            id = "woven-class-mage-objective-1950-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
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
            priority = 560,
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
                    { faction = "Horde" },
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
                    { faction = "Horde" },
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
            priority = 570,
        },
        {
            id = "woven-class-mage-handoff-1951-class-dungeon",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 580,
            classAction = "handoff-1951-class-dungeon",
        },
        {
            priority = 590,
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
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1952-mages-wand",
        },
        {
            priority = 600,
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
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1952-mages-wand",
        },
        {
            id = "level-before-accept-1164-to-steal-from-thieves",
            kind = "note",
            text = "Reach level 27 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 27 },
            },
            requiredLevel = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1164,
            priority = 610,
        },
        {
            priority = 620,
            route = {
                { y = 0.4945, mapID = 1458, label = "Genavie Callow", offMapText = "Travel to Genavie Callow in Undercity.", x = 0.6383 },
            },
            text = "Accept To Steal From Thieves from Genavie Callow.",
            id = "accept-1164-to-steal-from-thieves",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 27 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1164, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-63-1-water-sapta",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 63,
            priority = 630,
        },
        {
            priority = 640,
            route = {
                { mapID = 1421, x = 0.38280000000000003, y = 0.4456, label = "Corrupt Manifestation's Bracers", offMapText = "Travel to Corrupt Manifestation's Bracers." },
            },
            text = "Collect 1 Corrupt Manifestation's Bracers.",
            id = "objective-63-1-water-sapta",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 63, text = "Water Sapta", index = 1, count = 1 },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 220 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 650,
            text = "Turn in Call of Water.",
            route = {
                { y = 0.4456, mapID = 1421, label = "Call of Water", offMapText = "Travel to Call of Water.", x = 0.3828 },
            },
            dependsOn = { "objective-63-1-water-sapta" },
            id = "turnin-63-call-of-water",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 63, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 220 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            route = {
                { y = 0.4456, mapID = 1421, label = "Call of Water", offMapText = "Travel to Call of Water.", x = 0.3828 },
            },
            text = "Accept Call of Water.",
            id = "accept-100-call-of-water",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 100, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 63 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 670,
            text = "Turn in Call of Water to Minor Manifestation of Water.",
            route = {
                { y = 0.4462, mapID = 1421, label = "Minor Manifestation of Water", offMapText = "Travel to Minor Manifestation of Water in Silverpine Forest.", x = 0.3875 },
            },
            dependsOn = { "accept-100-call-of-water" },
            id = "turnin-100-call-of-water",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 100, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 63 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            route = {
                { y = 0.4462, mapID = 1421, label = "Minor Manifestation of Water", offMapText = "Travel to Minor Manifestation of Water in Silverpine Forest.", x = 0.3875 },
            },
            text = "Accept Call of Water from Minor Manifestation of Water.",
            id = "accept-96-call-of-water",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 96, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 100 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 690,
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            text = "Accept Elixir of Agony from Apothecary Lydon.",
            id = "accept-509-elixir-of-agony",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 509, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            route = {
                { mapID = 1424, x = 0.3201, y = 0.4545, label = "Shipment of Iron", offMapText = "Travel to Shipment of Iron." },
            },
            text = "For Battle of Hillsbrad: Kill Blacksmith Verringtan and 4 Hillsbrad Apprentice Blacksmiths. Retrieve a shipment of iron and report back to Darthalia in Tarren Mill.",
            id = "objective-529-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 529, state = "complete" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 710,
            route = {
                { y = 0.2045, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia.",
            id = "turnin-529-battle-of-hillsbrad",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 529, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-529-quest-work" },
        },
        {
            priority = 720,
            route = {
                { y = 0.2045, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            text = "Accept Battle of Hillsbrad from High Executor Darthalia.",
            id = "accept-532-battle-of-hillsbrad",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 532, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 529 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-7321-soothing-turtle-bisque",
            kind = "note",
            text = "Reach level 28 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 7321,
            priority = 730,
        },
        {
            priority = 740,
            route = {
                { y = 0.1904, mapID = 1424, label = "Christoph Jeffcoat", offMapText = "Travel to Christoph Jeffcoat in Hillsbrad Foothills.", x = 0.6229 },
            },
            text = "Accept Soothing Turtle Bisque from Christoph Jeffcoat.",
            id = "accept-7321-soothing-turtle-bisque",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7321, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-533-infiltration",
            kind = "note",
            text = "Reach level 29 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 29 },
            },
            requiredLevel = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 533,
            priority = 750,
        },
        {
            priority = 760,
            route = {
                { y = 0.2065, mapID = 1424, label = "Krusk", offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6324 },
            },
            text = "Accept Infiltration from Krusk.",
            id = "accept-533-infiltration",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 533, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 498 },
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
                { y = 0.1966, mapID = 1424, label = "Novice Thaivand", offMapText = "Travel to Novice Thaivand in Hillsbrad Foothills.", x = 0.6388 },
            },
            text = "Accept Helcular's Revenge from Novice Thaivand.",
            id = "accept-552-helcular-s-revenge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 552, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
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
                    { faction = "Horde" },
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
            priority = 780,
        },
        {
            priority = 790,
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
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1791, state = "completed" },
            },
            sourceStep = 14,
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
            priority = 800,
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
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1712, state = "activeOrCompleted" },
            },
            sourceStep = 14,
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
        {
            id = "objective-7321-1-turtle-meat",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 10 Turtle Meat.",
            complete = {
                questObjective = { id = 7321, index = 1, text = "Turtle Meat", count = 10 },
            },
            route = {
                { mapID = 1424, x = 0.6779999999999999, y = 0.212, label = "Turtle Meat", offMapText = "Travel to Turtle Meat." },
            },
            sourceStep = 15,
            priority = 810,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7321-soothing-turtle-bisque" },
        },
        {
            priority = 820,
            text = "Turn in Soothing Turtle Bisque to Christoph Jeffcoat.",
            route = {
                { y = 0.1904, mapID = 1424, label = "Christoph Jeffcoat", offMapText = "Travel to Christoph Jeffcoat in Hillsbrad Foothills.", x = 0.6229 },
            },
            dependsOn = { "accept-7321-soothing-turtle-bisque", "objective-7321-1-turtle-meat" },
            id = "turnin-7321-soothing-turtle-bisque",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7321, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-544-prison-break-in",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 544,
            priority = 830,
        },
        {
            priority = 840,
            route = {
                { y = 0.2084, mapID = 1424, label = "Magus Wordeen Voidglare", offMapText = "Travel to Magus Wordeen Voidglare in Hillsbrad Foothills.", x = 0.616 },
            },
            text = "Accept Prison Break In from Magus Wordeen Voidglare.",
            id = "accept-544-prison-break-in",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 544, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 850,
            route = {
                { y = 0.2093, mapID = 1424, label = "Keeper Bel'varil", offMapText = "Travel to Keeper Bel'varil in Hillsbrad Foothills.", x = 0.615 },
            },
            text = "Accept Stone Tokens from Keeper Bel'varil.",
            id = "accept-556-stone-tokens",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 556, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 860,
            text = "Collect 1 Helcular's Rod.",
            route = {
                { y = 0.3183, mapID = 1424, label = "Cave Yeti", offMapText = "Travel to Cave Yeti.", x = 0.4618 },
            },
            dependsOn = { "accept-552-helcular-s-revenge" },
            id = "objective-552-1-cave-yeti",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 552, text = "Cave Yeti", index = 1, count = 1 },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 870,
            route = {
                { mapID = 1424, x = 0.2981, y = 0.4242, label = "Clerk Horrace Whitesteed", offMapText = "Travel to Clerk Horrace Whitesteed." },
            },
            text = "Kill Clerk Horrace Whitesteed.",
            id = "objective-567-1-clerk-horrace-whitesteed",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 567, text = "Clerk Horrace Whitesteed", index = 1 },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 880,
            text = "Kill Magistrate Burnside.",
            route = {
                { y = 0.4164, mapID = 1424, label = "Magistrate Burnside", offMapText = "Travel to Magistrate Burnside.", x = 0.2967 },
            },
            dependsOn = { "accept-532-battle-of-hillsbrad" },
            id = "objective-532-1-magistrate-burnside",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 532, text = "Magistrate Burnside", index = 1 },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 529 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-532-4-hillsbrad-town-registry",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Hillsbrad Town Registry.",
            complete = {
                questObjective = { id = 532, index = 4, text = "Hillsbrad Town Registry", count = 1 },
            },
            route = {
                { mapID = 1424, x = 0.2952, y = 0.4153, label = "Hillsbrad Town Registry", offMapText = "Travel to Hillsbrad Town Registry." },
            },
            sourceStep = 25,
            priority = 890,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 529 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-532-battle-of-hillsbrad" },
        },
        {
            id = "objective-532-2-hillsbrad-councilman",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 4 Hillsbrad Councilman.",
            complete = {
                questObjective = { id = 532, index = 2, text = "Hillsbrad Councilman", count = 4 },
            },
            route = {
                { mapID = 1424, x = 0.302, y = 0.42200000000000004, label = "Hillsbrad Councilman", offMapText = "Travel to Hillsbrad Councilman." },
            },
            sourceStep = 26,
            priority = 900,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 529 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-532-battle-of-hillsbrad" },
        },
        {
            priority = 910,
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia.",
            route = {
                { y = 0.2045, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            dependsOn = {
                "accept-532-battle-of-hillsbrad",
                "objective-532-1-magistrate-burnside",
                "objective-532-4-hillsbrad-town-registry",
                "objective-532-2-hillsbrad-councilman",
            },
            id = "turnin-532-battle-of-hillsbrad",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 532, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 529 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 920,
            route = {
                { y = 0.2045, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            text = "Accept Battle of Hillsbrad from High Executor Darthalia.",
            id = "accept-539-battle-of-hillsbrad",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 539, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 532 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 930,
            text = "Turn in Helcular's Revenge to Novice Thaivand.",
            route = {
                { y = 0.1966, mapID = 1424, label = "Novice Thaivand", offMapText = "Travel to Novice Thaivand in Hillsbrad Foothills.", x = 0.6388 },
            },
            dependsOn = { "accept-552-helcular-s-revenge", "objective-552-1-cave-yeti" },
            id = "turnin-552-helcular-s-revenge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 552, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 940,
            route = {
                { y = 0.1966, mapID = 1424, label = "Novice Thaivand", offMapText = "Travel to Novice Thaivand in Hillsbrad Foothills.", x = 0.6388 },
            },
            text = "Accept Helcular's Revenge from Novice Thaivand.",
            id = "accept-553-helcular-s-revenge",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 553, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 552 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 950,
            text = "Kill Foreman Bonds.",
            route = {
                { mapID = 1424, x = 0.3121, y = 0.5600999999999999, label = "Foreman Bonds", offMapText = "Travel to Foreman Bonds." },
            },
            dependsOn = { "accept-539-battle-of-hillsbrad" },
            id = "objective-539-1-foreman-bonds",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 539, text = "Foreman Bonds", index = 1 },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 532 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 960,
            route = {
                { y = 0.5862, mapID = 1424, label = "Miner Hackett", offMapText = "Travel to Miner Hackett.", x = 0.3112 },
            },
            text = "Kill Miner Hackett.",
            id = "objective-567-3-miner-hackett",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 567, text = "Miner Hackett", index = 3 },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-539-2-hillsbrad-miner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 10 Hillsbrad Miner.",
            complete = {
                questObjective = { id = 539, index = 2, text = "Hillsbrad Miner", count = 10 },
            },
            route = {
                { mapID = 1424, x = 0.298, y = 0.546, label = "Hillsbrad Miner", offMapText = "Travel to Hillsbrad Miner." },
            },
            sourceStep = 33,
            priority = 970,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 532 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-539-battle-of-hillsbrad" },
        },
        {
            id = "objective-546-1-hillsbrad-human-skull",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 30 Hillsbrad Human Skull.",
            complete = {
                questObjective = { id = 546, index = 1, text = "Hillsbrad Human Skull", count = 30 },
            },
            route = {
                { mapID = 1424, x = 0.298, y = 0.546, label = "Hillsbrad Human Skull", offMapText = "Travel to Hillsbrad Human Skull." },
            },
            sourceStep = 34,
            priority = 980,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 527 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 990,
            text = "Collect 1 Bloodstone Marble.",
            route = {
                { y = 0.8408, mapID = 1416, label = "Ricter", offMapText = "Travel to Ricter.", x = 0.202 },
            },
            dependsOn = { "accept-544-prison-break-in" },
            id = "objective-544-2-ricter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 544, text = "Ricter", index = 2, count = 1 },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1000,
            text = "Collect 1 Bloodstone Shard.",
            route = {
                { y = 0.8635, mapID = 1416, label = "Alina", offMapText = "Travel to Alina.", x = 0.2035 },
            },
            dependsOn = { "accept-544-prison-break-in" },
            id = "objective-544-3-alina",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 544, text = "Alina", index = 3, count = 1 },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1010,
            text = "Collect 1 Bloodstone Wedge.",
            route = {
                { y = 0.8613, mapID = 1416, label = "Dermot", offMapText = "Travel to Dermot.", x = 0.2001 },
            },
            dependsOn = { "accept-544-prison-break-in" },
            id = "objective-544-1-dermot",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 544, text = "Dermot", index = 1, count = 1 },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1020,
            text = "Collect 1 Bloodstone Oval.",
            route = {
                { y = 0.832, mapID = 1416, label = "Kegan Darkmar", offMapText = "Travel to Kegan Darkmar.", x = 0.1778 },
            },
            dependsOn = { "accept-544-prison-break-in" },
            id = "objective-544-4-kegan-darkmar",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 544, text = "Kegan Darkmar", index = 4, count = 1 },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-556-1-worn-stone-token",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 10 Worn Stone Token.",
            complete = {
                questObjective = { id = 556, index = 1, text = "Worn Stone Token", count = 10 },
            },
            route = {
                { mapID = 1416, x = 0.20199999999999999, y = 0.8240000000000001, label = "Worn Stone Token", offMapText = "Travel to Worn Stone Token." },
            },
            sourceStep = 40,
            priority = 1030,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-556-stone-tokens" },
        },
        {
            priority = 1040,
            text = "Collect 1 Syndicate Missive.",
            route = {
                { y = 0.828, mapID = 1416, label = "Syndicate Footpad", offMapText = "Travel to Syndicate Footpad.", x = 0.476 },
            },
            dependsOn = { "accept-533-infiltration" },
            id = "objective-533-1-syndicate-footpad",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 533, text = "Syndicate Footpad", index = 1, count = 1 },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 498 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1050,
            text = "Turn in Prison Break In to Magus Wordeen Voidglare.",
            route = {
                { y = 0.2084, mapID = 1424, label = "Magus Wordeen Voidglare", offMapText = "Travel to Magus Wordeen Voidglare in Hillsbrad Foothills.", x = 0.616 },
            },
            dependsOn = {
                "accept-544-prison-break-in",
                "objective-544-2-ricter",
                "objective-544-3-alina",
                "objective-544-1-dermot",
                "objective-544-4-kegan-darkmar",
            },
            id = "turnin-544-prison-break-in",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 544, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1060,
            text = "Turn in Stone Tokens to Keeper Bel'varil.",
            route = {
                { y = 0.2094, mapID = 1424, label = "Keeper Bel'varil", offMapText = "Travel to Keeper Bel'varil in Hillsbrad Foothills.", x = 0.615 },
            },
            dependsOn = { "accept-556-stone-tokens", "objective-556-1-worn-stone-token" },
            id = "turnin-556-stone-tokens",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 556, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1070,
            route = {
                { y = 0.1958, mapID = 1424, label = "Tallow", offMapText = "Travel to Tallow in Hillsbrad Foothills.", x = 0.6187 },
            },
            text = "Accept The Hammer May Fall from Tallow.",
            id = "accept-676-the-hammer-may-fall",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 676, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1080,
            route = {
                { y = 0.197, mapID = 1424, label = "Deathguard Samsa", offMapText = "Travel to Deathguard Samsa in Hillsbrad Foothills.", x = 0.6211 },
            },
            text = "Turn in Souvenirs of Death to Deathguard Samsa.",
            id = "turnin-546-souvenirs-of-death",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 546, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 527 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-546-1-hillsbrad-human-skull" },
        },
        {
            priority = 1090,
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia.",
            route = {
                { y = 0.2046, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            dependsOn = { "accept-539-battle-of-hillsbrad", "objective-539-1-foreman-bonds", "objective-539-2-hillsbrad-miner" },
            id = "turnin-539-battle-of-hillsbrad",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 539, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 532 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-541-battle-of-hillsbrad",
            kind = "note",
            text = "Reach level 19 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 19 },
            },
            requiredLevel = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 541,
            priority = 1100,
        },
        {
            priority = 1110,
            text = "Accept Battle of Hillsbrad from High Executor Darthalia in Tarren Mill.",
            route = {
                { y = 0.2046, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            dependsOn = {},
            id = "accept-541-battle-of-hillsbrad",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 541, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 539 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1120,
            text = "Travel to Dun Garok in southeastern Hillsbrad Foothills with a group. Kill 8 Mountaineers, 4 Riflemen, 2 Priests and Captain Ironhill.",
            dependsOn = { "accept-541-battle-of-hillsbrad" },
            id = "objective-541-battle-of-hillsbrad",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 541, state = "complete" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 539 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
        },
        {
            priority = 1130,
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia in Tarren Mill.",
            route = {
                { y = 0.2046, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            dependsOn = { "accept-541-battle-of-hillsbrad", "objective-541-battle-of-hillsbrad" },
            id = "turnin-541-battle-of-hillsbrad",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 541, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 539 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1140,
            text = "Accept Battle of Hillsbrad from High Executor Darthalia in Tarren Mill. Report to Varimathras in the Undercity.",
            route = {
                { y = 0.2046, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            dependsOn = {},
            id = "accept-550-battle-of-hillsbrad",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 550, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 541 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1150,
            text = "Turn in Dangerous! to High Executor Darthalia.",
            route = {
                { y = 0.2046, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            dependsOn = { "objective-567-1-clerk-horrace-whitesteed", "objective-567-3-miner-hackett" },
            id = "turnin-567-dangerous",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 567, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1160,
            text = "Turn in Infiltration to Krusk.",
            route = {
                { y = 0.2065, mapID = 1424, label = "Krusk", offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6324 },
            },
            dependsOn = { "accept-533-infiltration", "objective-533-1-syndicate-footpad" },
            id = "turnin-533-infiltration",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 533, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 498 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1170,
            text = "Charge Helcular's Rod at the Flame of Veraz inside the yeti cave.",
            id = "objective-553-2-authored-Flame-of-Veraz",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 553, index = 2, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 552 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-553-helcular-s-revenge" },
            route = {
                { mapID = 1424, x = 0.4404, y = 0.2656, label = "Flame-of-Veraz", offMapText = "Travel to Flame-of-Veraz." },
            },
        },
        {
            priority = 1180,
            text = "Charge Helcular's Rod at the Flame of Azel inside the yeti cave.",
            id = "objective-553-1-authored-Flame-of-Azel",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 553, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 552 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-553-helcular-s-revenge" },
            route = {
                { mapID = 1424, x = 0.439, y = 0.2805, label = "Flame-of-Azel", offMapText = "Travel to Flame-of-Azel." },
            },
        },
        {
            priority = 1190,
            text = "Charge Helcular's Rod at the Flame of Uzel inside Frostmaw's cave. Then take the charged rod to Helcular's grave in Southshore.",
            id = "objective-553-3-authored-Flame-of-Uzel",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 553, index = 3, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 552 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-553-helcular-s-revenge" },
            route = {
                { mapID = 1416, x = 0.3754, y = 0.6626000000000001, label = "Flame-of-Uzel", offMapText = "Travel to Flame-of-Uzel." },
            },
        },
        {
            priority = 1200,
            text = "Turn in Helcular's Revenge.",
            route = {
                { mapID = 1424, x = 0.5278, y = 0.5338, label = "Helcular's Revenge", offMapText = "Travel to Helcular's Revenge." },
            },
            dependsOn = {
                "accept-553-helcular-s-revenge",
                "objective-553-2-authored-Flame-of-Veraz",
                "objective-553-1-authored-Flame-of-Azel",
                "objective-553-3-authored-Flame-of-Uzel",
            },
            id = "turnin-553-helcular-s-revenge",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 553, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 552 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1210,
            text = "Collect 6 Mudsnout Blossoms.",
            route = {
                { y = 0.599, mapID = 1424, label = "Mudsnout Blossoms", offMapText = "Travel to Mudsnout Blossoms.", x = 0.64 },
            },
            dependsOn = { "accept-509-elixir-of-agony" },
            id = "objective-509-1-mudsnout-blossoms",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 509, text = "Mudsnout Blossoms", index = 1, count = 6 },
            },
            sourceStep = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
