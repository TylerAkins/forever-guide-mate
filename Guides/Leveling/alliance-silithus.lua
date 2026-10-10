local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Silithus",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-silithus",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 59 },
            },
        },
    },
    goals = {
        {
            id = "loot-starter-before-woven-class-hunter-accept-7632-the-ancient-leaf",
            instructionOnly = true,
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 10,
            classAction = "loot-starter-before-accept-7632-the-ancient-leaf",
        },
        {
            id = "level-before-woven-class-hunter-accept-7632-the-ancient-leaf",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                },
            },
            complete = {
                level = { min = 60 },
            },
            requiredLevel = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7632,
            priority = 20,
        },
        {
            priority = 30,
            id = "woven-class-hunter-accept-7632-the-ancient-leaf",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7632-the-ancient-leaf",
        },
        {
            priority = 40,
            route = {
                { y = 0.242, mapID = 1448, label = "Vartrus the Ancient", x = 0.488, offMapText = "Travel to Vartrus the Ancient in Felwood." },
            },
            dependsOn = { "woven-class-hunter-accept-7632-the-ancient-leaf" },
            id = "woven-class-hunter-turnin-7632-the-ancient-leaf",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7632-the-ancient-leaf",
        },
        {
            priority = 50,
            route = {
                { y = 0.242, mapID = 1448, label = "Vartrus the Ancient", x = 0.488, offMapText = "Travel to Vartrus the Ancient in Felwood." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-7636-stave-of-the-ancients",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7636-stave-of-the-ancients",
        },
        {
            priority = 60,
            id = "woven-class-hunter-objective-7636-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-hunter-accept-7636-stave-of-the-ancients" },
            classAction = "objective-7636-quest-work",
        },
        {
            priority = 70,
            route = {
                { y = 0.242, mapID = 1448, label = "Vartrus the Ancient", x = 0.488, offMapText = "Travel to Vartrus the Ancient in Felwood." },
            },
            dependsOn = { "woven-class-hunter-accept-7636-stave-of-the-ancients", "woven-class-hunter-objective-7636-quest-work" },
            id = "woven-class-hunter-turnin-7636-stave-of-the-ancients",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7636-stave-of-the-ancients",
        },
        {
            priority = 80,
            route = {
                { y = 0.242, mapID = 1448, label = "Vartrus the Ancient", x = 0.488, offMapText = "Travel to Vartrus the Ancient in Felwood." },
            },
            dependsOn = {},
            id = "woven-class-hunter-accept-7633-an-introduction",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7633-an-introduction",
        },
        {
            priority = 90,
            route = {
                { y = 0.242, mapID = 1448, label = "Vartrus the Ancient", x = 0.488, offMapText = "Travel to Vartrus the Ancient in Felwood." },
            },
            dependsOn = { "woven-class-hunter-accept-7633-an-introduction" },
            id = "woven-class-hunter-turnin-7633-an-introduction",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7633-an-introduction",
        },
        {
            id = "level-before-woven-class-warlock-handoff-7581-class-dungeon",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                },
            },
            complete = {
                level = { min = 60 },
            },
            requiredLevel = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7581,
            priority = 100,
        },
        {
            id = "woven-class-warlock-handoff-7581-class-dungeon",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 110,
            classAction = "handoff-7581-class-dungeon",
        },
        {
            id = "level-before-woven-class-warlock-accept-7582-the-prisons-casing",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 60 },
            },
            requiredLevel = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7582,
            priority = 120,
        },
        {
            priority = 130,
            route = {
                { y = 0.502, mapID = 1419, label = "Daio the Decrepit", x = 0.34, offMapText = "Travel to Daio the Decrepit in Blasted Lands." },
            },
            id = "woven-class-warlock-accept-7582-the-prisons-casing",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7582-the-prisons-casing",
        },
        {
            priority = 140,
            id = "woven-class-warlock-objective-7582-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-7582-the-prisons-casing" },
            classAction = "objective-7582-quest-work",
        },
        {
            priority = 150,
            route = {
                { y = 0.502, mapID = 1419, label = "Daio the Decrepit", x = 0.34, offMapText = "Travel to Daio the Decrepit in Blasted Lands." },
            },
            dependsOn = { "woven-class-warlock-accept-7582-the-prisons-casing", "woven-class-warlock-objective-7582-quest-work" },
            id = "woven-class-warlock-turnin-7582-the-prisons-casing",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7582-the-prisons-casing",
        },
        {
            priority = 160,
            route = {
                { y = 0.502, mapID = 1419, label = "Daio the Decrepit", x = 0.34, offMapText = "Travel to Daio the Decrepit in Blasted Lands." },
            },
            id = "woven-class-warlock-accept-7583-suppression",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7583-suppression",
        },
        {
            priority = 170,
            id = "woven-class-warlock-objective-7583-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-7583-suppression" },
            classAction = "objective-7583-quest-work",
        },
        {
            priority = 180,
            route = {
                { y = 0.502, mapID = 1419, label = "Daio the Decrepit", x = 0.34, offMapText = "Travel to Daio the Decrepit in Blasted Lands." },
            },
            dependsOn = { "woven-class-warlock-accept-7583-suppression", "woven-class-warlock-objective-7583-quest-work" },
            id = "woven-class-warlock-turnin-7583-suppression",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7583-suppression",
        },
        {
            priority = 190,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-7623-lord-banehollow",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7623-lord-banehollow",
        },
        {
            priority = 200,
            dependsOn = { "woven-class-warlock-accept-7623-lord-banehollow" },
            id = "woven-class-warlock-objective-7623-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7623-reviewed-mechanics",
        },
        {
            priority = 210,
            route = {
                { y = 0.446, mapID = 1448, label = "Lord Banehollow", x = 0.36, offMapText = "Travel to Lord Banehollow in Felwood." },
            },
            dependsOn = {
                "woven-class-warlock-accept-7623-lord-banehollow",
                "woven-class-warlock-objective-7623-reviewed-mechanics",
            },
            id = "woven-class-warlock-turnin-7623-lord-banehollow",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7623-lord-banehollow",
        },
        {
            priority = 220,
            route = {
                { y = 0.446, mapID = 1448, label = "Lord Banehollow", x = 0.36, offMapText = "Travel to Lord Banehollow in Felwood." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-7624-ulathek-the-traitor",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7624-ulathek-the-traitor",
        },
        {
            priority = 230,
            route = {
                { y = 0.484, mapID = 1448, label = "Ulathek", x = 0.406, offMapText = "Travel to Ulathek in Felwood." },
            },
            dependsOn = { "woven-class-warlock-accept-7624-ulathek-the-traitor" },
            id = "woven-class-warlock-objective-7624-ulathek-the-traitor",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-7624-ulathek-the-traitor",
        },
        {
            priority = 240,
            route = {
                { y = 0.446, mapID = 1448, label = "Lord Banehollow", x = 0.36, offMapText = "Travel to Lord Banehollow in Felwood." },
            },
            dependsOn = {
                "woven-class-warlock-accept-7624-ulathek-the-traitor",
                "woven-class-warlock-objective-7624-ulathek-the-traitor",
            },
            id = "woven-class-warlock-turnin-7624-ulathek-the-traitor",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7624-ulathek-the-traitor",
        },
        {
            priority = 250,
            route = {
                { y = 0.446, mapID = 1448, label = "Lord Banehollow", x = 0.36, offMapText = "Travel to Lord Banehollow in Felwood." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-7625-xorothian-stardust",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7625-xorothian-stardust",
        },
        {
            priority = 260,
            id = "woven-class-warlock-objective-7625-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-7625-xorothian-stardust" },
            classAction = "objective-7625-quest-work",
        },
        {
            priority = 270,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = { "woven-class-warlock-accept-7625-xorothian-stardust", "woven-class-warlock-objective-7625-quest-work" },
            id = "woven-class-warlock-turnin-7625-xorothian-stardust",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7625-xorothian-stardust",
        },
        {
            priority = 280,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-7563-rage-of-blood",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7563-rage-of-blood",
        },
        {
            priority = 290,
            id = "woven-class-warlock-objective-7563-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-7563-rage-of-blood" },
            classAction = "objective-7563-quest-work",
        },
        {
            priority = 300,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            dependsOn = { "woven-class-warlock-accept-7563-rage-of-blood", "woven-class-warlock-objective-7563-quest-work" },
            id = "woven-class-warlock-turnin-7563-rage-of-blood",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7563-rage-of-blood",
        },
        {
            priority = 310,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-7564-wildeyes",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7564-wildeyes",
        },
        {
            priority = 320,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = { "woven-class-warlock-accept-7564-wildeyes" },
            id = "woven-class-warlock-turnin-7564-wildeyes",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7564-wildeyes",
        },
        {
            priority = 330,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            id = "woven-class-warlock-accept-7628-doomsday-candle",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7628-doomsday-candle",
        },
        {
            priority = 340,
            dependsOn = { "woven-class-warlock-accept-7628-doomsday-candle" },
            id = "woven-class-warlock-objective-7628-doomsday-candle",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7628-doomsday-candle",
        },
        {
            priority = 350,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = { "woven-class-warlock-accept-7628-doomsday-candle", "woven-class-warlock-objective-7628-doomsday-candle" },
            id = "woven-class-warlock-turnin-7628-doomsday-candle",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7628-doomsday-candle",
        },
        {
            priority = 360,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            id = "woven-class-warlock-accept-7627-wheel-of-the-black-march",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7627-wheel-of-the-black-march",
        },
        {
            priority = 370,
            dependsOn = { "woven-class-warlock-accept-7627-wheel-of-the-black-march" },
            id = "woven-class-warlock-objective-7627-wheel-of-the-black-march",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7627-wheel-of-the-black-march",
        },
        {
            priority = 380,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = {
                "woven-class-warlock-accept-7627-wheel-of-the-black-march",
                "woven-class-warlock-objective-7627-wheel-of-the-black-march",
            },
            id = "woven-class-warlock-turnin-7627-wheel-of-the-black-march",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7627-wheel-of-the-black-march",
        },
        {
            priority = 390,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            id = "woven-class-warlock-accept-7626-bell-of-dethmoora",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7626-bell-of-dethmoora",
        },
        {
            priority = 400,
            dependsOn = { "woven-class-warlock-accept-7626-bell-of-dethmoora" },
            id = "woven-class-warlock-objective-7626-bell-of-dethmoora",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7626-bell-of-dethmoora",
        },
        {
            priority = 410,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = {
                "woven-class-warlock-accept-7626-bell-of-dethmoora",
                "woven-class-warlock-objective-7626-bell-of-dethmoora",
            },
            id = "woven-class-warlock-turnin-7626-bell-of-dethmoora",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7626-bell-of-dethmoora",
        },
        {
            priority = 420,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = {},
            id = "woven-class-warlock-accept-7630-arcanite",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7630-arcanite",
        },
        {
            priority = 430,
            id = "woven-class-warlock-objective-7630-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-warlock-accept-7630-arcanite" },
            classAction = "objective-7630-quest-work",
        },
        {
            priority = 440,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = { "woven-class-warlock-accept-7630-arcanite", "woven-class-warlock-objective-7630-quest-work" },
            id = "woven-class-warlock-turnin-7630-arcanite",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7630-arcanite",
        },
        {
            priority = 450,
            route = {
                { y = 0.776, mapID = 1453, label = "Spackle Thornberry", x = 0.258, offMapText = "Travel to Spackle Thornberry in Stormwind City." },
            },
            id = "woven-class-warlock-accept-7562-morzul-bloodbringer",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7562-morzul-bloodbringer",
        },
        {
            priority = 460,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            dependsOn = { "woven-class-warlock-accept-7562-morzul-bloodbringer" },
            id = "woven-class-warlock-turnin-7562-morzul-bloodbringer",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7562-morzul-bloodbringer",
        },
        {
            id = "level-before-woven-class-priest-accept-7622-the-balance-of-light-and-shadow",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                },
            },
            complete = {
                level = { min = 60 },
            },
            requiredLevel = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7622,
            priority = 470,
        },
        {
            priority = 480,
            route = {
                { y = 0.184, mapID = 1423, label = "Eris Havenfire", x = 0.208, offMapText = "Travel to Eris Havenfire in Eastern Plaguelands." },
            },
            id = "woven-class-priest-accept-7622-the-balance-of-light-and-shadow",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7622-the-balance-of-light-and-shadow",
        },
        {
            priority = 490,
            dependsOn = { "woven-class-priest-accept-7622-the-balance-of-light-and-shadow" },
            id = "woven-class-priest-objective-7622-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7622-reviewed-mechanics",
        },
        {
            priority = 500,
            route = {
                { y = 0.184, mapID = 1423, label = "Eris Havenfire", x = 0.208, offMapText = "Travel to Eris Havenfire in Eastern Plaguelands." },
            },
            dependsOn = {
                "woven-class-priest-accept-7622-the-balance-of-light-and-shadow",
                "woven-class-priest-objective-7622-reviewed-mechanics",
            },
            id = "woven-class-priest-turnin-7622-the-balance-of-light-and-shadow",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7622-the-balance-of-light-and-shadow",
        },
        {
            priority = 510,
            route = {
                { y = 0.184, mapID = 1423, label = "Eris Havenfire", x = 0.208, offMapText = "Travel to Eris Havenfire in Eastern Plaguelands." },
            },
            id = "woven-class-priest-accept-7621-a-warning",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7621-a-warning",
        },
        {
            priority = 520,
            route = {
                { y = 0.184, mapID = 1423, label = "Eris Havenfire", x = 0.208, offMapText = "Travel to Eris Havenfire in Eastern Plaguelands." },
            },
            dependsOn = { "woven-class-priest-accept-7621-a-warning" },
            id = "woven-class-priest-turnin-7621-a-warning",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7621-a-warning",
        },
        {
            id = "level-before-woven-class-mage-accept-9362-warlord-krellian",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 60 },
            },
            requiredLevel = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 9362,
            priority = 530,
        },
        {
            priority = 540,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            id = "woven-class-mage-accept-9362-warlord-krellian",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-9362-warlord-krellian",
        },
        {
            priority = 550,
            route = {
                { y = 0.53, mapID = 1447, label = "Warlord Krellian", x = 0.404, offMapText = "Travel to Warlord Krellian in Azshara." },
                { y = 0.484, mapID = 1447, label = "Scalebeard", x = 0.544, offMapText = "Travel to Scalebeard in Azshara." },
            },
            dependsOn = { "woven-class-mage-accept-9362-warlord-krellian" },
            id = "woven-class-mage-objective-9362-warlord-krellian",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-9362-warlord-krellian",
        },
        {
            priority = 560,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "woven-class-mage-accept-9362-warlord-krellian", "woven-class-mage-objective-9362-warlord-krellian" },
            id = "woven-class-mage-turnin-9362-warlord-krellian",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-9362-warlord-krellian",
        },
        {
            priority = 570,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = {},
            id = "woven-class-mage-accept-9364-fragmented-magic",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-9364-fragmented-magic",
        },
        {
            priority = 580,
            id = "woven-class-mage-objective-9364-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-mage-accept-9364-fragmented-magic" },
            classAction = "objective-9364-quest-work",
        },
        {
            priority = 590,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "woven-class-mage-accept-9364-fragmented-magic", "woven-class-mage-objective-9364-quest-work" },
            id = "woven-class-mage-turnin-9364-fragmented-magic",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-9364-fragmented-magic",
        },
        {
            id = "level-before-woven-class-paladin-accept-7670-lord-grayson-shadowbreaker",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            complete = {
                level = { min = 60 },
            },
            requiredLevel = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7670,
            alternativeQuests = { 7638 },
            priority = 600,
        },
        {
            priority = 610,
            route = {
                { y = 0.062, mapID = 1455, label = "Brandur Ironhammer", x = 0.234, offMapText = "Travel to Brandur Ironhammer in Ironforge." },
            },
            id = "woven-class-paladin-accept-7670-lord-grayson-shadowbreaker",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7670-lord-grayson-shadowbreaker",
        },
        {
            priority = 620,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-7670-lord-grayson-shadowbreaker" },
            id = "woven-class-paladin-turnin-7670-lord-grayson-shadowbreaker",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7670-lord-grayson-shadowbreaker",
        },
        {
            id = "level-before-woven-class-paladin-accept-7645-manna-enriched-horse-feed",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            complete = {
                level = { min = 60 },
            },
            requiredLevel = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7645,
            priority = 630,
        },
        {
            priority = 640,
            route = {
                { y = 0.556, mapID = 1424, label = "Merideth Carlson", x = 0.52, offMapText = "Travel to Merideth Carlson in Hillsbrad Foothills." },
            },
            id = "woven-class-paladin-accept-7645-manna-enriched-horse-feed",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7645-manna-enriched-horse-feed",
        },
        {
            priority = 650,
            id = "woven-class-paladin-objective-7645-quest-work",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-paladin-accept-7645-manna-enriched-horse-feed" },
            classAction = "objective-7645-quest-work",
        },
        {
            priority = 660,
            route = {
                { y = 0.556, mapID = 1424, label = "Merideth Carlson", x = 0.52, offMapText = "Travel to Merideth Carlson in Hillsbrad Foothills." },
            },
            dependsOn = {
                "woven-class-paladin-accept-7645-manna-enriched-horse-feed",
                "woven-class-paladin-objective-7645-quest-work",
            },
            id = "woven-class-paladin-turnin-7645-manna-enriched-horse-feed",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7645-manna-enriched-horse-feed",
        },
        {
            priority = 670,
            route = {
                { y = 0.298, mapID = 1453, label = "Duthorian Rall", x = 0.4, offMapText = "Travel to Duthorian Rall in Stormwind City." },
            },
            id = "woven-class-paladin-accept-7638-lord-grayson-shadowbreaker",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7638-lord-grayson-shadowbreaker",
        },
        {
            priority = 680,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-7638-lord-grayson-shadowbreaker" },
            id = "woven-class-paladin-turnin-7638-lord-grayson-shadowbreaker",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7638-lord-grayson-shadowbreaker",
        },
        {
            priority = 690,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-7637-emphasis-on-sacrifice",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7637-emphasis-on-sacrifice",
        },
        {
            priority = 700,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            dependsOn = { "woven-class-paladin-accept-7637-emphasis-on-sacrifice" },
            id = "woven-class-paladin-turnin-7637-emphasis-on-sacrifice",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7637-emphasis-on-sacrifice",
        },
        {
            priority = 710,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-7639-to-show-due-judgment",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7639-to-show-due-judgment",
        },
        {
            priority = 720,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-7639-to-show-due-judgment" },
            id = "woven-class-paladin-turnin-7639-to-show-due-judgment",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7639-to-show-due-judgment",
        },
        {
            priority = 730,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-7640-exorcising-terrordale",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7640-exorcising-terrordale",
        },
        {
            priority = 740,
            id = "woven-class-paladin-objective-7640-quest-work",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-class-paladin-accept-7640-exorcising-terrordale" },
            classAction = "objective-7640-quest-work",
        },
        {
            priority = 750,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-7640-exorcising-terrordale", "woven-class-paladin-objective-7640-quest-work" },
            id = "woven-class-paladin-turnin-7640-exorcising-terrordale",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7640-exorcising-terrordale",
        },
        {
            priority = 760,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = {},
            id = "woven-class-paladin-accept-7641-the-work-of-grimand-elmore",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7641-the-work-of-grimand-elmore",
        },
        {
            priority = 770,
            route = {
                { y = 0.122, mapID = 1453, label = "Grimand Elmore", x = 0.516, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-7641-the-work-of-grimand-elmore" },
            id = "woven-class-paladin-turnin-7641-the-work-of-grimand-elmore",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7641-the-work-of-grimand-elmore",
        },
        {
            id = "level-before-woven-class-paladin-handoff-7642-class-dungeon",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            complete = {
                level = { min = 60 },
            },
            requiredLevel = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7642,
            priority = 780,
        },
        {
            id = "woven-class-paladin-handoff-7642-class-dungeon",
            conditions = {
                all = {
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 790,
            classAction = "handoff-7642-class-dungeon",
        },
        {
            priority = 800,
            route = {
                { y = 0.122, mapID = 1453, label = "Grimand Elmore", x = 0.516, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            id = "woven-class-paladin-accept-7648-grimands-finest-work",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7648-grimands-finest-work",
        },
        {
            priority = 810,
            route = {
                { y = 0.33, mapID = 1453, label = "Lord Grayson Shadowbreaker", x = 0.372, offMapText = "Travel to Lord Grayson Shadowbreaker in Stormwind City." },
            },
            dependsOn = { "woven-class-paladin-accept-7648-grimands-finest-work" },
            id = "woven-class-paladin-turnin-7648-grimands-finest-work",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 60 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7648-grimands-finest-work",
        },
        {
            id = "level-before-turnin-1124-wasteland",
            kind = "note",
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 54 },
            },
            requiredLevel = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1124,
            priority = 820,
        },
        {
            priority = 830,
            route = {
                { y = 0.1893, mapID = 1451, label = "Layo Starstrike", offMapText = "Travel to Layo Starstrike in Silithus.", x = 0.8187 },
            },
            text = "Turn in Wasteland to Layo Starstrike.",
            id = "turnin-1124-wasteland",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 1124, state = "completed" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1123, 6762 },
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
                { y = 0.1893, mapID = 1451, label = "Layo Starstrike", offMapText = "Travel to Layo Starstrike in Silithus.", x = 0.8187 },
            },
            text = "Accept The Spirits of Southwind from Layo Starstrike.",
            id = "accept-1125-the-spirits-of-southwind",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 1125, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1124 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 850,
            route = {
                { y = 0.3858, mapID = 1451, label = "Beetix Ficklespragg", offMapText = "Travel to Beetix Ficklespragg in Silithus.", x = 0.5171 },
            },
            text = "Accept Deadly Desert Venom from Beetix Ficklespragg.",
            id = "accept-8277-deadly-desert-venom",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8277, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-8275-taking-back-silithus",
            kind = "note",
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 54 },
            },
            requiredLevel = 54,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8275,
            priority = 860,
        },
        {
            priority = 870,
            route = {
                { y = 0.3829, mapID = 1451, label = "Windcaller Proudhorn", offMapText = "Travel to Windcaller Proudhorn in Silithus.", x = 0.5115 },
            },
            text = "Turn in Taking Back Silithus to Windcaller Proudhorn.",
            id = "turnin-8275-taking-back-silithus",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 8275, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 880,
            route = {
                { y = 0.3829, mapID = 1451, label = "Windcaller Proudhorn", offMapText = "Travel to Windcaller Proudhorn in Silithus.", x = 0.5115 },
            },
            text = "Accept Securing the Supply Lines from Windcaller Proudhorn.",
            id = "accept-8280-securing-the-supply-lines",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8280, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 890,
            route = {
                { y = 0.3746, mapID = 1451, label = "Geologist Larksbane", offMapText = "Travel to Geologist Larksbane in Silithus.", x = 0.4967 },
            },
            text = "Accept The Twilight Mystery from Geologist Larksbane.",
            id = "accept-8284-the-twilight-mystery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8284, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-8318-secret-communication",
            kind = "note",
            text = "Reach level 57 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 57 },
            },
            requiredLevel = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8318,
            priority = 900,
        },
        {
            priority = 910,
            route = {
                { y = 0.3778, mapID = 1451, label = "Bor Wildmane", offMapText = "Travel to Bor Wildmane in Silithus.", x = 0.4857 },
            },
            text = "Accept Secret Communication from Bor Wildmane.",
            id = "accept-8318-secret-communication",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 57 },
                    },
                },
            },
            complete = {
                quest = { id = 8318, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-8304-dearest-natalia",
            kind = "note",
            text = "Reach level 58 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 58 },
            },
            requiredLevel = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8304,
            priority = 920,
        },
        {
            priority = 930,
            route = {
                { y = 0.3418, mapID = 1451, label = "Commander Mar'alith", offMapText = "Travel to Commander Mar'alith in Silithus.", x = 0.4919 },
            },
            text = "Accept Dearest Natalia from Commander Mar'alith.",
            id = "accept-8304-dearest-natalia",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 58 },
                    },
                },
            },
            complete = {
                quest = { id = 8304, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5527-1-reliquary-of-purity",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                },
            },
            text = "Collect 1 Reliquary of Purity.",
            complete = {
                questObjective = { id = 5527, index = 1, text = "Reliquary of Purity", count = 1 },
            },
            route = {
                { mapID = 1451, x = 0.6323, y = 0.5535, label = "Reliquary of Purity", offMapText = "Travel to Reliquary of Purity." },
            },
            sourceStep = 8,
            priority = 940,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1125-1-tortured-druid",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            text = "Kill 8 Tortured Druid.",
            complete = {
                questObjective = { id = 1125, index = 1, text = "Tortured Druid", count = 8 },
            },
            route = {
                { mapID = 1451, x = 0.608, y = 0.494, label = "Tortured Druid", offMapText = "Travel to Tortured Druid." },
            },
            sourceStep = 9,
            priority = 950,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1124 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1125-the-spirits-of-southwind" },
        },
        {
            id = "objective-1125-2-tortured-sentinel",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            text = "Kill 8 Tortured Sentinel.",
            complete = {
                questObjective = { id = 1125, index = 2, text = "Tortured Sentinel", count = 8 },
            },
            route = {
                { mapID = 1451, x = 0.608, y = 0.494, label = "Tortured Sentinel", offMapText = "Travel to Tortured Sentinel." },
            },
            sourceStep = 9,
            priority = 960,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1124 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1125-the-spirits-of-southwind" },
        },
        {
            id = "loot-starter-before-accept-8308-brann-bronzebeard-s-lost-letter",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Alliance" },
            text = "Loot Brann Bronzebeard's Lost Letter from Brann Bronzebeard's Lost Letter. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Brann Bronzebeard's Lost Letter", minCount = 1 },
                    },
                    {
                        quest = { id = 8308, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 970,
        },
        {
            priority = 980,
            text = "Use the Brann Bronzebeard's Lost Letter to accept Brann Bronzebeard's Lost Letter.",
            id = "accept-8308-brann-bronzebeard-s-lost-letter",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 58 },
                    },
                },
            },
            complete = {
                quest = { id = 8308, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 990,
            text = "Turn in The Spirits of Southwind to Layo Starstrike.",
            route = {
                { y = 0.1893, mapID = 1451, label = "Layo Starstrike", offMapText = "Travel to Layo Starstrike in Silithus.", x = 0.8187 },
            },
            dependsOn = {
                "accept-1125-the-spirits-of-southwind",
                "objective-1125-1-tortured-druid",
                "objective-1125-2-tortured-sentinel",
            },
            id = "turnin-1125-the-spirits-of-southwind",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 1125, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1124 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-8277-1-stonelash-scorpid-stinger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            text = "Collect 8 Stonelash Scorpid Stinger.",
            complete = {
                questObjective = { id = 8277, index = 1, text = "Stonelash Scorpid Stinger", count = 8 },
            },
            route = {
                { mapID = 1451, x = 0.55, y = 0.34600000000000003, label = "Stonelash Scorpid Stinger", offMapText = "Travel to Stonelash Scorpid Stinger." },
            },
            sourceStep = 12,
            priority = 1000,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8277-deadly-desert-venom" },
        },
        {
            id = "objective-8277-2-sand-skitterer-fang",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            text = "Collect 8 Sand Skitterer Fang.",
            complete = {
                questObjective = { id = 8277, index = 2, text = "Sand Skitterer Fang", count = 8 },
            },
            route = {
                { mapID = 1451, x = 0.55, y = 0.34600000000000003, label = "Sand Skitterer Fang", offMapText = "Travel to Sand Skitterer Fang." },
            },
            sourceStep = 13,
            priority = 1010,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8277-deadly-desert-venom" },
        },
        {
            id = "objective-8280-1-dredge-striker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            text = "Kill 15 Dredge Striker.",
            complete = {
                questObjective = { id = 8280, index = 1, text = "Dredge Striker", count = 15 },
            },
            route = {
                { mapID = 1451, x = 0.55, y = 0.34600000000000003, label = "Dredge Striker", offMapText = "Travel to Dredge Striker." },
            },
            sourceStep = 14,
            priority = 1020,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8280-securing-the-supply-lines" },
        },
        {
            priority = 1030,
            text = "Turn in Deadly Desert Venom to Beetix Ficklespragg.",
            route = {
                { y = 0.3858, mapID = 1451, label = "Beetix Ficklespragg", offMapText = "Travel to Beetix Ficklespragg in Silithus.", x = 0.5171 },
            },
            dependsOn = {
                "accept-8277-deadly-desert-venom",
                "objective-8277-1-stonelash-scorpid-stinger",
                "objective-8277-2-sand-skitterer-fang",
            },
            id = "turnin-8277-deadly-desert-venom",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8277, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1040,
            route = {
                { y = 0.3858, mapID = 1451, label = "Beetix Ficklespragg", offMapText = "Travel to Beetix Ficklespragg in Silithus.", x = 0.5171 },
            },
            text = "Accept Noggle's Last Hope from Beetix Ficklespragg.",
            id = "accept-8278-noggle-s-last-hope",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8278, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8277 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1050,
            text = "Turn in Securing the Supply Lines to Windcaller Proudhorn.",
            route = {
                { y = 0.3829, mapID = 1451, label = "Windcaller Proudhorn", offMapText = "Travel to Windcaller Proudhorn in Silithus.", x = 0.5115 },
            },
            dependsOn = { "accept-8280-securing-the-supply-lines", "objective-8280-1-dredge-striker" },
            id = "turnin-8280-securing-the-supply-lines",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8280, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1060,
            route = {
                { y = 0.3829, mapID = 1451, label = "Windcaller Proudhorn", offMapText = "Travel to Windcaller Proudhorn in Silithus.", x = 0.5115 },
            },
            text = "Accept Stepping Up Security from Windcaller Proudhorn.",
            id = "accept-8281-stepping-up-security",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8281, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8280 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1070,
            text = "Collect 8 Twilight Tablet Fragment.",
            route = {
                { y = 0.158, mapID = 1451, label = "Twilight Tablet Fragment", offMapText = "Travel to Twilight Tablet Fragment.", x = 0.264 },
            },
            dependsOn = { "accept-8284-the-twilight-mystery" },
            id = "objective-8284-1-twilight-tablet-fragment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                questObjective = { id = 8284, text = "Twilight Tablet Fragment", index = 1, count = 8 },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1080,
            text = "Turn in The Twilight Mystery to Geologist Larksbane.",
            route = {
                { y = 0.3746, mapID = 1451, label = "Geologist Larksbane", offMapText = "Travel to Geologist Larksbane in Silithus.", x = 0.4968 },
            },
            dependsOn = { "accept-8284-the-twilight-mystery", "objective-8284-1-twilight-tablet-fragment" },
            id = "turnin-8284-the-twilight-mystery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8284, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1090,
            route = {
                { y = 0.3746, mapID = 1451, label = "Geologist Larksbane", offMapText = "Travel to Geologist Larksbane in Silithus.", x = 0.4968 },
            },
            text = "Accept The Deserter from Geologist Larksbane.",
            id = "accept-8285-the-deserter",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8285, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1100,
            text = "Turn in The Deserter to Hermit Ortell.",
            route = {
                { y = 0.6976, mapID = 1451, label = "Hermit Ortell", offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.6719 },
            },
            dependsOn = { "accept-8285-the-deserter" },
            id = "turnin-8285-the-deserter",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8285, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8284 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1110,
            route = {
                { y = 0.6976, mapID = 1451, label = "Hermit Ortell", offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.6719 },
            },
            text = "Accept The Twilight Lexicon from Hermit Ortell.",
            id = "accept-8279-the-twilight-lexicon",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8279, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8285 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 1120,
            text = "Collect 1 Twilight Lexicon - Chapter 2.",
            route = {
                { y = 0.862, mapID = 1451, label = "Twilight Keeper Exeter", offMapText = "Travel to Twilight Keeper Exeter.", x = 0.154 },
            },
            dependsOn = { "accept-8279-the-twilight-lexicon" },
            id = "objective-8279-2-twilight-keeper-exeter",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                questObjective = { id = 8279, text = "Twilight Keeper Exeter", index = 2, count = 1 },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8285 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-8278-1-stonelash-flayer-stinger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            text = "Collect 3 Stonelash Flayer Stinger.",
            complete = {
                questObjective = { id = 8278, index = 1, text = "Stonelash Flayer Stinger", count = 3 },
            },
            route = {
                { mapID = 1451, x = 0.36200000000000004, y = 0.816, label = "Stonelash Flayer Stinger", offMapText = "Travel to Stonelash Flayer Stinger." },
            },
            sourceStep = 23,
            priority = 1130,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8277 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8278-noggle-s-last-hope" },
        },
        {
            id = "objective-8278-3-rock-stalker-fang",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            text = "Collect 3 Rock Stalker Fang.",
            complete = {
                questObjective = { id = 8278, index = 3, text = "Rock Stalker Fang", count = 3 },
            },
            route = {
                { mapID = 1451, x = 0.36200000000000004, y = 0.816, label = "Rock Stalker Fang", offMapText = "Travel to Rock Stalker Fang." },
            },
            sourceStep = 24,
            priority = 1140,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8277 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8278-noggle-s-last-hope" },
        },
        {
            priority = 1150,
            text = "Collect 1 Twilight Lexicon - Chapter 3.",
            route = {
                { y = 0.4199, mapID = 1451, label = "Twilight Keeper Havunth", offMapText = "Travel to Twilight Keeper Havunth.", x = 0.4043 },
            },
            dependsOn = { "accept-8279-the-twilight-lexicon" },
            id = "objective-8279-3-twilight-keeper-havunth",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                questObjective = { id = 8279, text = "Twilight Keeper Havunth", index = 3, count = 1 },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8285 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1160,
            text = "Collect 1 Twilight Lexicon - Chapter 1.",
            route = {
                { y = 0.3633, mapID = 1451, label = "Twilight Keeper Mayna", offMapText = "Travel to Twilight Keeper Mayna.", x = 0.2662 },
            },
            dependsOn = { "accept-8279-the-twilight-lexicon" },
            id = "objective-8279-1-twilight-keeper-mayna",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                questObjective = { id = 8279, text = "Twilight Keeper Mayna", index = 1, count = 1 },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8285 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-8318-1-encrypted-twilight-text",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 57 },
                    },
                },
            },
            text = "Collect 10 Encrypted Twilight Text.",
            complete = {
                questObjective = { id = 8318, index = 1, text = "Encrypted Twilight Text", count = 10 },
            },
            route = {
                { mapID = 1451, x = 0.262, y = 0.35600000000000004, label = "Encrypted Twilight Text", offMapText = "Travel to Encrypted Twilight Text." },
            },
            sourceStep = 27,
            priority = 1170,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8318-secret-communication" },
        },
        {
            priority = 1180,
            text = "Turn in The Twilight Lexicon to Hermit Ortell.",
            route = {
                { y = 0.6976, mapID = 1451, label = "Hermit Ortell", offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.6719 },
            },
            dependsOn = {
                "accept-8279-the-twilight-lexicon",
                "objective-8279-2-twilight-keeper-exeter",
                "objective-8279-3-twilight-keeper-havunth",
                "objective-8279-1-twilight-keeper-mayna",
            },
            id = "turnin-8279-the-twilight-lexicon",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8279, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8285 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1190,
            route = {
                { y = 0.6976, mapID = 1451, label = "Hermit Ortell", offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.6719 },
            },
            text = "Accept A Terrible Purpose from Hermit Ortell.",
            id = "accept-8287-a-terrible-purpose",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8287, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8279 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-8278-2-stonelash-pincer-stinger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            text = "Collect 3 Stonelash Pincer Stinger.",
            complete = {
                questObjective = { id = 8278, index = 2, text = "Stonelash Pincer Stinger", count = 3 },
            },
            route = {
                { mapID = 1451, x = 0.564, y = 0.602, label = "Stonelash Pincer Stinger", offMapText = "Travel to Stonelash Pincer Stinger." },
            },
            sourceStep = 30,
            priority = 1200,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8277 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8278-noggle-s-last-hope" },
        },
        {
            id = "objective-8281-1-dredge-crusher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            text = "Kill 20 Dredge Crusher.",
            complete = {
                questObjective = { id = 8281, index = 1, text = "Dredge Crusher", count = 20 },
            },
            route = {
                { mapID = 1451, x = 0.564, y = 0.602, label = "Dredge Crusher", offMapText = "Travel to Dredge Crusher." },
            },
            sourceStep = 31,
            priority = 1210,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8280 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-8281-stepping-up-security" },
        },
        {
            priority = 1220,
            text = "Turn in Stepping Up Security to Windcaller Proudhorn.",
            route = {
                { y = 0.3829, mapID = 1451, label = "Windcaller Proudhorn", offMapText = "Travel to Windcaller Proudhorn in Silithus.", x = 0.5115 },
            },
            dependsOn = { "accept-8281-stepping-up-security", "objective-8281-1-dredge-crusher" },
            id = "turnin-8281-stepping-up-security",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8281, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8280 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1230,
            text = "Turn in Noggle's Last Hope to Beetix Ficklespragg.",
            route = {
                { y = 0.3858, mapID = 1451, label = "Beetix Ficklespragg", offMapText = "Travel to Beetix Ficklespragg in Silithus.", x = 0.5171 },
            },
            dependsOn = {
                "accept-8278-noggle-s-last-hope",
                "objective-8278-1-stonelash-flayer-stinger",
                "objective-8278-3-rock-stalker-fang",
                "objective-8278-2-stonelash-pincer-stinger",
            },
            id = "turnin-8278-noggle-s-last-hope",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8278, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8277 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1240,
            text = "Turn in A Terrible Purpose to Commander Mar'alith.",
            route = {
                { y = 0.3418, mapID = 1451, label = "Commander Mar'alith", offMapText = "Travel to Commander Mar'alith in Silithus.", x = 0.4919 },
            },
            dependsOn = { "accept-8287-a-terrible-purpose" },
            id = "turnin-8287-a-terrible-purpose",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 54 },
                    },
                },
            },
            complete = {
                quest = { id = 8287, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 8279 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-8304-question-2",
            kind = "gossip",
            text = "Speak with Rutgar Glyphshaper at Bronzebeard's Encampment. Ask about Natalia and follow the conversation until your quest log credits his information.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 58 },
                    },
                },
            },
            requiredQuests = {},
            complete = {
                questObjective = { id = 8304, index = 2, text = "Rutgar Glyphshaper" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1451, x = 0.4128, y = 0.8845000000000001, label = "Rutgar Glyphshaper", offMapText = "Travel to Rutgar Glyphshaper." },
            },
            sourceStep = 20,
            dependsOn = { "accept-8304-dearest-natalia" },
            priority = 1250,
        },
        {
            id = "objective-8304-question-1",
            kind = "gossip",
            text = "Speak with Frankal Stonebridge at Bronzebeard's Encampment. Ask about Natalia and follow the conversation until your quest log credits his information.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 58 },
                    },
                },
            },
            requiredQuests = {},
            complete = {
                questObjective = { id = 8304, index = 1, text = "Frankal Stonebridge" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1451, x = 0.4082, y = 0.8885, label = "Frankal Stonebridge", offMapText = "Travel to Frankal Stonebridge." },
            },
            sourceStep = 21,
            dependsOn = { "accept-8304-dearest-natalia" },
            priority = 1260,
        },
        {
            priority = 1270,
            text = "Turn in Dearest Natalia to Commander Mar'alith.",
            route = {
                { y = 0.3418, mapID = 1451, label = "Commander Mar'alith", offMapText = "Travel to Commander Mar'alith in Silithus.", x = 0.4919 },
            },
            dependsOn = { "accept-8304-dearest-natalia", "objective-8304-question-2", "objective-8304-question-1" },
            id = "turnin-8304-dearest-natalia",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 58 },
                    },
                },
            },
            complete = {
                quest = { id = 8304, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1280,
            text = "Turn in Secret Communication to Bor Wildmane.",
            route = {
                { y = 0.3778, mapID = 1451, label = "Bor Wildmane", offMapText = "Travel to Bor Wildmane in Silithus.", x = 0.4858 },
            },
            dependsOn = { "accept-8318-secret-communication", "objective-8318-1-encrypted-twilight-text" },
            id = "turnin-8318-secret-communication",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 57 },
                    },
                },
            },
            complete = {
                quest = { id = 8318, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 1290,
            text = "For Are We There, Yeti?: Take Umi's Mechanical Yeti and scare her friends with it: Legacki in Everlook (Winterspring) Sprinkle in Gadgetzan (Tanaris) Quixxil in Marshal's Refuge (Un'Goro Crater) When you are done, bring the Mechanical Yeti back to Umi.",
            id = "objective-5163-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5163, state = "complete" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 977 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 1300,
            route = {
                { y = 0.3762, mapID = 1452, label = "Umi Rumplesnicker", offMapText = "Travel to Umi Rumplesnicker in Winterspring.", x = 0.6088 },
            },
            text = "Turn in Are We There, Yeti? to Umi Rumplesnicker.",
            id = "turnin-5163-are-we-there-yeti",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 5163, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 977 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-5163-quest-work" },
        },
        {
            priority = 1310,
            route = {
                { y = 0.4508, mapID = 1450, label = "Rabine Saturna", offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168 },
            },
            text = "Turn in A Reliquary of Purity to Rabine Saturna.",
            id = "turnin-5527-a-reliquary-of-purity",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                },
            },
            complete = {
                quest = { id = 5527, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-5527-1-reliquary-of-purity" },
        },
        {
            id = "level-60-route-end",
            kind = "note",
            text = "Reach level 60 to finish this leveling itinerary. Choose how to gain any remaining XP.",
            conditions = {},
            complete = {
                level = { min = 60 },
            },
            requiredLevel = 60,
            useClientText = false,
            useClientPin = false,
            requiredQuests = {},
            dependsOn = {},
            priority = 1320,
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
