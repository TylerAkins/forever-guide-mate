local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Shaman",
    category = "Class Quests",
    id = "class-shaman",
    conditions = {
        all = {
            { class = 7 },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
            priority = 10,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "accept-98581-archaic-rune",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-98581-archaic-rune",
        },
        {
            priority = 20,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            dependsOn = { "accept-98581-archaic-rune" },
            id = "turnin-98581-archaic-rune",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-98581-archaic-rune",
        },
        {
            priority = 30,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            id = "accept-788-cutting-teeth",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 2 },
                                    {
                                        race = { 2 },
                                    },
                                },
                            },
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 8 },
                                    {
                                        race = { 8 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 7 },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 9,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-788-cutting-teeth",
        },
        {
            priority = 40,
            route = {
                { y = 0.662, mapID = 1411, label = "Mottled Boar", offMapText = "Travel to Mottled Boar.", x = 0.438 },
            },
            dependsOn = { "accept-788-cutting-teeth" },
            id = "objective-788-1-mottled-boar",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 2 },
                                    {
                                        race = { 2 },
                                    },
                                },
                            },
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 8 },
                                    {
                                        race = { 8 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 7 },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 11,
            useClientPin = false,
            classAction = "objective-788-1-mottled-boar",
        },
        {
            priority = 50,
            route = {
                { y = 0.6833, mapID = 1411, label = "Gornek", offMapText = "Travel to Gornek in Durotar.", x = 0.4206 },
            },
            dependsOn = { "accept-788-cutting-teeth", "objective-788-1-mottled-boar" },
            id = "turnin-788-cutting-teeth",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 2 },
                                    {
                                        race = { 2 },
                                    },
                                },
                            },
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 8 },
                                    {
                                        race = { 8 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 7 },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 21,
            useClientPin = false,
            classAction = "turnin-788-cutting-teeth",
        },
        {
            priority = 60,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-3084-rune-inscribed-tablet",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3084-rune-inscribed-tablet",
        },
        {
            priority = 70,
            route = {
                { y = 0.69, mapID = 1411, label = "Shikrik", x = 0.424, offMapText = "Travel to Shikrik in Durotar." },
            },
            dependsOn = { "accept-3084-rune-inscribed-tablet" },
            id = "turnin-3084-rune-inscribed-tablet",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3084-rune-inscribed-tablet",
        },
        {
            priority = 80,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-3089-rune-inscribed-parchment",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 2 },
                    {
                        race = { 2 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3089-rune-inscribed-parchment",
        },
        {
            priority = 90,
            route = {
                { y = 0.69, mapID = 1411, label = "Shikrik", x = 0.424, offMapText = "Travel to Shikrik in Durotar." },
            },
            dependsOn = { "accept-3089-rune-inscribed-parchment" },
            id = "turnin-3089-rune-inscribed-parchment",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 2 },
                    {
                        race = { 2 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3089-rune-inscribed-parchment",
        },
        {
            route = {
                { y = 0.234, mapID = 2521, label = "Ailee Farheart", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            priority = 100,
            id = "accept-coming-of-age",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 96 },
                                    {
                                        race = { 2, 5, 6, 8, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 7 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-coming-of-age",
        },
        {
            priority = 110,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", offMapText = "Travel to Zephras Isle.", x = 0.42 },
            },
            dependsOn = { "accept-coming-of-age" },
            id = "turnin-coming-of-age",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 96 },
                                    {
                                        race = { 2, 5, 6, 8, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 7 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-coming-of-age",
        },
        {
            priority = 120,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            id = "accept-92461-harmony-in-balance",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 96 },
                                    {
                                        race = { 2, 5, 6, 8, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 7 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-92461-harmony-in-balance",
        },
        {
            priority = 130,
            route = {
                { y = 0.256, mapID = 2521, label = "Juvenile Vuldren", x = 0.432, offMapText = "Travel to Juvenile Vuldren in Zephras Isle." },
            },
            dependsOn = { "accept-92461-harmony-in-balance" },
            id = "objective-92461-harmony-in-balance",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 96 },
                                    {
                                        race = { 2, 5, 6, 8, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 7 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-92461-harmony-in-balance",
        },
        {
            priority = 140,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = { "accept-92461-harmony-in-balance", "objective-92461-harmony-in-balance" },
            id = "turnin-92461-harmony-in-balance",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 96 },
                                    {
                                        race = { 2, 5, 6, 8, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 7 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92461-harmony-in-balance",
        },
        {
            priority = 150,
            route = {
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            id = "accept-747-the-hunt-begins",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 6 },
                                    {
                                        race = { 6 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 7 },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 6,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-747-the-hunt-begins",
        },
        {
            id = "objective-747-1-plainstrider-meat",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 6 },
                                    {
                                        race = { 6 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 7 },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            route = {
                { mapID = 1412, x = 0.49, y = 0.7979999999999999, label = "Plainstrider Meat", offMapText = "Travel to Plainstrider Meat." },
            },
            sourceStep = 12,
            priority = 160,
            useClientPin = false,
            dependsOn = { "accept-747-the-hunt-begins" },
            classAction = "objective-747-1-plainstrider-meat",
        },
        {
            id = "objective-747-2-plainstrider-feather",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 6 },
                                    {
                                        race = { 6 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 7 },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            route = {
                { mapID = 1412, x = 0.49, y = 0.7979999999999999, label = "Plainstrider Feather", offMapText = "Travel to Plainstrider Feather." },
            },
            sourceStep = 12,
            priority = 170,
            useClientPin = false,
            dependsOn = { "accept-747-the-hunt-begins" },
            classAction = "objective-747-2-plainstrider-feather",
        },
        {
            priority = 180,
            route = {
                { y = 0.7707, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.4488 },
            },
            dependsOn = { "accept-747-the-hunt-begins", "objective-747-1-plainstrider-meat", "objective-747-2-plainstrider-feather" },
            id = "turnin-747-the-hunt-begins",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 7 },
                                    {
                                        class = { 7 },
                                    },
                                    { faction = "Horde" },
                                    { race = 6 },
                                    {
                                        race = { 6 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 7 },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 13,
            useClientPin = false,
            classAction = "turnin-747-the-hunt-begins",
        },
        {
            priority = 190,
            route = {
                { y = 0.772, mapID = 1412, label = "Grull Hawkwind", x = 0.448, offMapText = "Travel to Grull Hawkwind in Mulgore." },
            },
            id = "accept-3093-rune-inscribed-note",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3093-rune-inscribed-note",
        },
        {
            priority = 200,
            route = {
                { y = 0.76, mapID = 1412, label = "Meela Dawnstrider", x = 0.45, offMapText = "Travel to Meela Dawnstrider in Mulgore." },
            },
            dependsOn = { "accept-3093-rune-inscribed-note" },
            id = "turnin-3093-rune-inscribed-note",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3093-rune-inscribed-note",
        },
        {
            id = "level-before-accept-92484-embracing-the-elements",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 2 },
            },
            requiredLevel = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92484,
            priority = 210,
        },
        {
            priority = 220,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-92484-embracing-the-elements",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-92484-embracing-the-elements",
        },
        {
            priority = 230,
            dependsOn = { "accept-92484-embracing-the-elements" },
            id = "objective-92484-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-92484-reviewed-mechanics",
        },
        {
            priority = 240,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", x = 0.428, offMapText = "Travel to Windshaper Boro in Zephras Isle." },
            },
            dependsOn = { "accept-92484-embracing-the-elements", "objective-92484-reviewed-mechanics" },
            id = "turnin-92484-embracing-the-elements",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 2 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92484-embracing-the-elements",
        },
        {
            id = "level-before-accept-call-of-earth",
            kind = "note",
            text = "Reach level 3 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 3 },
            },
            requiredLevel = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 92466,
            alternativeQuests = { 1516, 1519 },
            priority = 250,
        },
        {
            priority = 260,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = {},
            id = "accept-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-call-of-earth",
        },
        {
            priority = 270,
            route = {
                { y = 0.18, mapID = 2521, label = "Al'Aketh Converts at the standing stones", offMapText = "Travel to Zephras Isle.", x = 0.464 },
            },
            dependsOn = { "accept-call-of-earth" },
            id = "objective-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-call-of-earth",
        },
        {
            priority = 280,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = { "accept-call-of-earth", "objective-call-of-earth" },
            id = "turnin-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-call-of-earth",
        },
        {
            id = "level-before-accept-1519-call-of-earth",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1519,
            alternativeQuests = { 1516, 92466 },
            priority = 290,
        },
        {
            priority = 300,
            route = {
                { y = 0.762, mapID = 1412, label = "Seer Ravenfeather", x = 0.448, offMapText = "Travel to Seer Ravenfeather in Mulgore." },
            },
            id = "accept-1519-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1519-call-of-earth",
        },
        {
            priority = 310,
            route = {
                { y = 0.778, mapID = 1412, label = "Bristleback Shaman", x = 0.646, offMapText = "Travel to Bristleback Shaman in Mulgore." },
            },
            dependsOn = { "accept-1519-call-of-earth" },
            id = "objective-1519-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1519-call-of-earth",
        },
        {
            priority = 320,
            route = {
                { y = 0.762, mapID = 1412, label = "Seer Ravenfeather", x = 0.448, offMapText = "Travel to Seer Ravenfeather in Mulgore." },
            },
            dependsOn = { "accept-1519-call-of-earth", "objective-1519-call-of-earth" },
            id = "turnin-1519-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1519-call-of-earth",
        },
        {
            id = "level-before-accept-1516-call-of-earth",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
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
                        race = { 2, 8 },
                    },
                },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1516,
            alternativeQuests = { 1519, 92466 },
            priority = 330,
        },
        {
            priority = 340,
            route = {
                { y = 0.69, mapID = 1411, label = "Canaga Earthcaller", x = 0.424, offMapText = "Travel to Canaga Earthcaller in Durotar." },
            },
            id = "accept-1516-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1516-call-of-earth",
        },
        {
            priority = 350,
            route = {
                { y = 0.55, mapID = 1411, label = "Felstalker", x = 0.452, offMapText = "Travel to Felstalker in Durotar." },
            },
            dependsOn = { "accept-1516-call-of-earth" },
            id = "objective-1516-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1516-call-of-earth",
        },
        {
            priority = 360,
            route = {
                { y = 0.69, mapID = 1411, label = "Canaga Earthcaller", x = 0.424, offMapText = "Travel to Canaga Earthcaller in Durotar." },
            },
            dependsOn = { "accept-1516-call-of-earth", "objective-1516-call-of-earth" },
            id = "turnin-1516-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1516-call-of-earth",
        },
        {
            priority = 370,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = { "turnin-call-of-earth" },
            id = "accept-call-of-earth-92467",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-call-of-earth-92467",
        },
        {
            priority = 380,
            route = {
                { y = 0.24, mapID = 2521, label = "Minor Manifestation of Earth", offMapText = "Travel to Zephras Isle.", x = 0.496 },
            },
            id = "objective-92467-earth-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-call-of-earth-92467" },
            classAction = "objective-92467-earth-sapta",
        },
        {
            priority = 390,
            route = {
                { y = 0.24, mapID = 2521, label = "Minor Manifestation of Earth", offMapText = "Travel to Zephras Isle.", x = 0.496 },
            },
            dependsOn = { "accept-call-of-earth-92467", "objective-92467-earth-sapta" },
            id = "turnin-call-of-earth-92467",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-call-of-earth-92467",
        },
        {
            priority = 400,
            route = {
                { y = 0.24, mapID = 2521, label = "Minor Manifestation of Earth", offMapText = "Travel to Zephras Isle.", x = 0.496 },
            },
            dependsOn = { "turnin-call-of-earth-92467" },
            id = "accept-call-of-earth-92468",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-call-of-earth-92468",
        },
        {
            priority = 410,
            route = {
                { y = 0.236, mapID = 2521, label = "Windshaper Boro", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            dependsOn = { "accept-call-of-earth-92468" },
            id = "turnin-call-of-earth-92468",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 3 },
                    },
                    { race = 96 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-call-of-earth-92468",
        },
        {
            priority = 420,
            route = {
                { y = 0.762, mapID = 1412, label = "Seer Ravenfeather", x = 0.448, offMapText = "Travel to Seer Ravenfeather in Mulgore." },
            },
            dependsOn = { "turnin-1519-call-of-earth" },
            id = "accept-1520-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1520-call-of-earth",
        },
        {
            priority = 430,
            route = {
                {
                    y = 0.76,
                    mapID = 1411,
                    label = "Minor Manifestation of Earth",
                    x = 0.44,
                    offMapText = "Travel to Minor Manifestation of Earth in Durotar.",
                    complete = {
                        map = { 1412 },
                    },
                },
                { y = 0.804, mapID = 1412, label = "Minor Manifestation of Earth", x = 0.538, offMapText = "Travel to Minor Manifestation of Earth in Mulgore." },
            },
            id = "objective-1520-earth-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-1520-call-of-earth" },
            classAction = "objective-1520-earth-sapta",
        },
        {
            priority = 440,
            route = {
                { mapID = 1412, x = 0.5383, y = 0.8058, label = "Minor Manifestation of Earth at Kodo Rock", offMapText = "Travel to Kodo Rock southeast of Camp Narache in Mulgore." },
            },
            dependsOn = { "accept-1520-call-of-earth", "objective-1520-earth-sapta" },
            id = "turnin-1520-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1520-call-of-earth",
        },
        {
            priority = 450,
            route = {
                { mapID = 1412, x = 0.5383, y = 0.8058, label = "Minor Manifestation of Earth at Kodo Rock", offMapText = "Travel to Kodo Rock southeast of Camp Narache in Mulgore." },
            },
            dependsOn = { "turnin-1520-call-of-earth" },
            id = "accept-1521-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1521-call-of-earth",
        },
        {
            priority = 460,
            route = {
                { y = 0.762, mapID = 1412, label = "Seer Ravenfeather", x = 0.448, offMapText = "Travel to Seer Ravenfeather in Mulgore." },
            },
            dependsOn = { "accept-1521-call-of-earth" },
            id = "turnin-1521-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    { race = 6 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1521-call-of-earth",
        },
        {
            priority = 470,
            route = {
                { y = 0.69, mapID = 1411, label = "Canaga Earthcaller", x = 0.424, offMapText = "Travel to Canaga Earthcaller in Durotar." },
            },
            dependsOn = { "turnin-1516-call-of-earth" },
            id = "accept-1517-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1517-call-of-earth",
        },
        {
            priority = 480,
            route = {
                {
                    y = 0.76,
                    mapID = 1411,
                    label = "Minor Manifestation of Earth",
                    x = 0.44,
                    offMapText = "Travel to Minor Manifestation of Earth in Durotar.",
                    complete = {
                        map = { 1412 },
                    },
                },
                { y = 0.804, mapID = 1412, label = "Minor Manifestation of Earth", x = 0.538, offMapText = "Travel to Minor Manifestation of Earth in Mulgore." },
            },
            id = "objective-1517-earth-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-1517-call-of-earth" },
            classAction = "objective-1517-earth-sapta",
        },
        {
            priority = 490,
            route = {
                { y = 0.76, mapID = 1411, label = "Minor Manifestation of Earth", x = 0.44, offMapText = "Travel to Minor Manifestation of Earth in Durotar." },
            },
            dependsOn = { "accept-1517-call-of-earth", "objective-1517-earth-sapta" },
            id = "turnin-1517-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1517-call-of-earth",
        },
        {
            priority = 500,
            route = {
                { y = 0.76, mapID = 1411, label = "Minor Manifestation of Earth", x = 0.44, offMapText = "Travel to Minor Manifestation of Earth in Durotar." },
            },
            dependsOn = { "turnin-1517-call-of-earth" },
            id = "accept-1518-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1518-call-of-earth",
        },
        {
            priority = 510,
            route = {
                { y = 0.69, mapID = 1411, label = "Canaga Earthcaller", x = 0.424, offMapText = "Travel to Canaga Earthcaller in Durotar." },
            },
            dependsOn = { "accept-1518-call-of-earth" },
            id = "turnin-1518-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1518-call-of-earth",
        },
        {
            id = "level-before-accept-94373-call-of-earth",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94373,
            priority = 520,
        },
        {
            priority = 530,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            id = "accept-94373-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94373-call-of-earth",
        },
        {
            priority = 540,
            dependsOn = { "accept-94373-call-of-earth" },
            id = "objective-94373-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-94373-call-of-earth",
        },
        {
            priority = 550,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            dependsOn = { "accept-94373-call-of-earth", "objective-94373-call-of-earth" },
            id = "turnin-94373-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94373-call-of-earth",
        },
        {
            priority = 560,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            dependsOn = { "turnin-94373-call-of-earth" },
            id = "accept-94374-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94374-call-of-earth",
        },
        {
            priority = 570,
            dependsOn = { "accept-94374-call-of-earth" },
            id = "objective-94374-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-94374-reviewed-mechanics",
        },
        {
            priority = 580,
            dependsOn = { "accept-94374-call-of-earth", "objective-94374-reviewed-mechanics" },
            id = "turnin-94374-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "turnin-94374-call-of-earth",
        },
        {
            priority = 590,
            dependsOn = { "turnin-94374-call-of-earth" },
            id = "accept-94375-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "accept-94375-call-of-earth",
        },
        {
            priority = 600,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            dependsOn = { "accept-94375-call-of-earth" },
            id = "turnin-94375-call-of-earth",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94375-call-of-earth",
        },
        {
            priority = 610,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            id = "accept-94472-earth-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94472-earth-sapta",
        },
        {
            priority = 620,
            route = {
                { y = 0.662, mapID = 1426, label = "Teo Hammerstorm", x = 0.288, offMapText = "Travel to Teo Hammerstorm in Dun Morogh." },
            },
            dependsOn = { "accept-94472-earth-sapta" },
            id = "turnin-94472-earth-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94472-earth-sapta",
        },
        {
            id = "level-before-accept-76156-stalk-with-the-earthmother",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1, 7, 11 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 76156,
            priority = 630,
        },
        {
            priority = 640,
            route = {
                { y = 0.656, mapID = 1456, label = "Boarton Shadetotem", x = 0.396, offMapText = "Travel to Boarton Shadetotem in Thunder Bluff." },
            },
            id = "accept-76156-stalk-with-the-earthmother",
            conditions = {
                all = {
                    {
                        class = { 1, 7, 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-76156-stalk-with-the-earthmother",
        },
        {
            route = {
                { y = 0.436, mapID = 1412, label = "Venture Co. Mine", x = 0.644, offMapText = "Travel to the Venture Co. Mine in Mulgore." },
            },
            dependsOn = { "accept-76156-stalk-with-the-earthmother" },
            id = "objective-76156-stalk-with-the-earthmother-1",
            useClientPin = false,
            conditions = {
                all = {
                    {
                        class = { 1, 7, 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            priority = 650,
            classAction = "objective-76156-stalk-with-the-earthmother-1",
        },
        {
            priority = 660,
            route = {
                { y = 0.656, mapID = 1456, label = "Boarton Shadetotem", x = 0.396, offMapText = "Travel to Boarton Shadetotem in Thunder Bluff." },
            },
            dependsOn = { "accept-76156-stalk-with-the-earthmother", "objective-76156-stalk-with-the-earthmother-1" },
            id = "turnin-76156-stalk-with-the-earthmother",
            conditions = {
                all = {
                    {
                        class = { 1, 7, 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-76156-stalk-with-the-earthmother",
        },
        {
            id = "level-before-accept-76240-stalk-with-the-earthmother",
            kind = "note",
            text = "Reach level 4 before continuing. Choose how to gain XP, then return to this route.",
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
                },
            },
            complete = {
                level = { min = 4 },
            },
            requiredLevel = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 76240,
            priority = 670,
        },
        {
            priority = 680,
            route = {
                { y = 0.656, mapID = 1456, label = "Boarton Shadetotem", x = 0.396, offMapText = "Travel to Boarton Shadetotem in Thunder Bluff." },
            },
            id = "accept-76240-stalk-with-the-earthmother",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-76240-stalk-with-the-earthmother",
        },
        {
            priority = 690,
            route = {
                { y = 0.656, mapID = 1456, label = "Boarton Shadetotem", x = 0.396, offMapText = "Travel to Boarton Shadetotem in Thunder Bluff." },
            },
            dependsOn = { "accept-76240-stalk-with-the-earthmother" },
            id = "objective-76240-stalk-with-the-earthmother-1",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-76240-stalk-with-the-earthmother-1",
        },
        {
            priority = 700,
            route = {
                { y = 0.656, mapID = 1456, label = "Boarton Shadetotem", x = 0.396, offMapText = "Travel to Boarton Shadetotem in Thunder Bluff." },
            },
            dependsOn = { "accept-76240-stalk-with-the-earthmother", "objective-76240-stalk-with-the-earthmother-1" },
            id = "turnin-76240-stalk-with-the-earthmother",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 4 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-76240-stalk-with-the-earthmother",
        },
        {
            id = "level-before-accept-94449-call-of-fire",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94449,
            priority = 710,
        },
        {
            priority = 720,
            route = {
                { y = 0.136, mapID = 1455, label = "Eldrun Stormbreaker", x = 0.474, offMapText = "Travel to Eldrun Stormbreaker in Ironforge." },
            },
            id = "accept-94449-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94449-call-of-fire",
        },
        {
            priority = 730,
            route = {
                { y = 0.436, mapID = 1426, label = "Bruegs Kindleborn", x = 0.876, offMapText = "Travel to Bruegs Kindleborn in Dun Morogh." },
            },
            dependsOn = { "accept-94449-call-of-fire" },
            id = "turnin-94449-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94449-call-of-fire",
        },
        {
            priority = 740,
            route = {
                { y = 0.436, mapID = 1426, label = "Bruegs Kindleborn", x = 0.876, offMapText = "Travel to Bruegs Kindleborn in Dun Morogh." },
            },
            dependsOn = { "turnin-94449-call-of-fire" },
            id = "accept-94465-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94465-call-of-fire",
        },
        {
            priority = 750,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", x = 0.32, offMapText = "Travel to Braldir Ashmantle in Loch Modan." },
            },
            dependsOn = { "accept-94465-call-of-fire" },
            id = "turnin-94465-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94465-call-of-fire",
        },
        {
            priority = 760,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", x = 0.32, offMapText = "Travel to Braldir Ashmantle in Loch Modan." },
            },
            dependsOn = { "turnin-94465-call-of-fire" },
            id = "accept-94466-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94466-call-of-fire",
        },
        {
            priority = 770,
            dependsOn = { "accept-94466-call-of-fire" },
            id = "objective-94466-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-94466-call-of-fire",
        },
        {
            priority = 780,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", x = 0.32, offMapText = "Travel to Braldir Ashmantle in Loch Modan." },
            },
            dependsOn = { "accept-94466-call-of-fire", "objective-94466-call-of-fire" },
            id = "turnin-94466-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94466-call-of-fire",
        },
        {
            priority = 790,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", x = 0.32, offMapText = "Travel to Braldir Ashmantle in Loch Modan." },
            },
            dependsOn = { "turnin-94466-call-of-fire" },
            id = "accept-94467-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94467-call-of-fire",
        },
        {
            priority = 800,
            id = "objective-94467-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-94467-call-of-fire" },
            classAction = "objective-94467-quest-work",
        },
        {
            priority = 810,
            route = {
                { y = 0.645, mapID = 1432, label = "Brazier of the Dormant Flame", x = 0.319, offMapText = "Travel to Brazier of the Dormant Flame in Loch Modan." },
            },
            dependsOn = { "accept-94467-call-of-fire", "objective-94467-quest-work" },
            id = "turnin-94467-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94467-call-of-fire",
        },
        {
            priority = 820,
            route = {
                { y = 0.645, mapID = 1432, label = "Brazier of the Dormant Flame", x = 0.319, offMapText = "Travel to Brazier of the Dormant Flame in Loch Modan." },
            },
            dependsOn = { "turnin-94467-call-of-fire" },
            id = "accept-94468-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94468-call-of-fire",
        },
        {
            priority = 830,
            route = {
                { y = 0.436, mapID = 1426, label = "Bruegs Kindleborn", x = 0.876, offMapText = "Travel to Bruegs Kindleborn in Dun Morogh." },
            },
            dependsOn = { "accept-94468-call-of-fire" },
            id = "turnin-94468-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94468-call-of-fire",
        },
        {
            priority = 840,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", x = 0.32, offMapText = "Travel to Braldir Ashmantle in Loch Modan." },
            },
            id = "accept-94473-fire-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94473-fire-sapta",
        },
        {
            priority = 850,
            route = {
                { y = 0.66, mapID = 1432, label = "Braldir Ashmantle", x = 0.32, offMapText = "Travel to Braldir Ashmantle in Loch Modan." },
            },
            dependsOn = { "accept-94473-fire-sapta" },
            id = "turnin-94473-fire-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94473-fire-sapta",
        },
        {
            id = "level-before-accept-97243-call-of-fire",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            complete = {
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 97243,
            priority = 860,
        },
        {
            priority = 870,
            route = {
                { y = 0.784, mapID = 2521, label = "Sessaria Skystride", x = 0.582, offMapText = "Travel to Sessaria Skystride in Zephras Isle." },
                { y = 0.448, mapID = 2521, label = "Aarnor Galestrike", x = 0.434, offMapText = "Travel to Aarnor Galestrike in Zephras Isle." },
            },
            id = "accept-97243-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-97243-call-of-fire",
        },
        {
            priority = 880,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", x = 0.512, offMapText = "Travel to Olariaan Swiftburn in Zephras Isle." },
            },
            dependsOn = { "accept-97243-call-of-fire" },
            id = "turnin-97243-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-97243-call-of-fire",
        },
        {
            priority = 890,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", x = 0.512, offMapText = "Travel to Olariaan Swiftburn in Zephras Isle." },
            },
            dependsOn = { "turnin-97243-call-of-fire" },
            id = "accept-97244-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-97244-call-of-fire",
        },
        {
            priority = 900,
            route = {
                { y = 0.638, mapID = 2521, label = "Skypriest Faladiel", x = 0.644, offMapText = "Travel to Skypriest Faladiel in Zephras Isle." },
            },
            dependsOn = { "accept-97244-call-of-fire" },
            id = "objective-97244-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-97244-call-of-fire",
        },
        {
            priority = 910,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", x = 0.512, offMapText = "Travel to Olariaan Swiftburn in Zephras Isle." },
            },
            dependsOn = { "accept-97244-call-of-fire", "objective-97244-call-of-fire" },
            id = "turnin-97244-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-97244-call-of-fire",
        },
        {
            priority = 920,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", x = 0.512, offMapText = "Travel to Olariaan Swiftburn in Zephras Isle." },
            },
            dependsOn = { "turnin-97244-call-of-fire" },
            id = "accept-97245-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-97245-call-of-fire",
        },
        {
            priority = 930,
            route = {
                { y = 0.69, mapID = 2521, label = "Kuramaa", x = 0.424, offMapText = "Travel to Kuramaa in Zephras Isle." },
            },
            dependsOn = { "accept-97245-call-of-fire" },
            id = "objective-97245-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-97245-call-of-fire",
        },
        {
            priority = 940,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", x = 0.512, offMapText = "Travel to Olariaan Swiftburn in Zephras Isle." },
            },
            dependsOn = { "accept-97245-call-of-fire", "objective-97245-call-of-fire" },
            id = "turnin-97245-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-97245-call-of-fire",
        },
        {
            priority = 950,
            route = {
                { y = 0.86, mapID = 2521, label = "Olariaan Swiftburn", x = 0.512, offMapText = "Travel to Olariaan Swiftburn in Zephras Isle." },
            },
            dependsOn = { "turnin-97245-call-of-fire" },
            id = "accept-97257-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-97257-call-of-fire",
        },
        {
            priority = 960,
            id = "objective-97257-quest-work-ritual",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-97257-call-of-fire" },
            route = {
                { mapID = 2521, x = 0.512, y = 0.859, label = "Brazier of Offering", offMapText = "Travel to Brazier of Offering on Zephras Isle." },
            },
            classAction = "objective-97257-quest-work-ritual",
        },
        {
            priority = 970,
            id = "objective-97257-quest-work-deliver-flame",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-97257-call-of-fire" },
            route = {
                { mapID = 2521, x = 0.5835, y = 0.7884, label = "Brazier of Eternal Flame", offMapText = "Travel to Brazier of Eternal Flame on Zephras Isle." },
            },
            classAction = "objective-97257-quest-work-deliver-flame",
        },
        {
            priority = 980,
            route = {
                { y = 0.784, mapID = 2521, label = "Sessaria Skystride", x = 0.582, offMapText = "Travel to Sessaria Skystride in Zephras Isle." },
            },
            dependsOn = { "accept-97257-call-of-fire", "objective-97257-quest-work-ritual", "objective-97257-quest-work-deliver-flame" },
            id = "turnin-97257-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 96 },
                    {
                        race = { 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-97257-call-of-fire",
        },
        {
            id = "level-before-accept-1522-call-of-fire",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1522,
            alternativeQuests = { 1523, 2983, 2984 },
            priority = 990,
        },
        {
            priority = 1000,
            route = {
                { y = 0.374, mapID = 1454, label = "Searn Firewarder", x = 0.378, offMapText = "Travel to Searn Firewarder in Orgrimmar." },
            },
            id = "accept-1522-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-1522-call-of-fire",
        },
        {
            priority = 1010,
            route = {
                { y = 0.2, mapID = 1413, label = "Kranal Fiss", x = 0.558, offMapText = "Travel to Kranal Fiss in The Barrens." },
            },
            dependsOn = { "accept-1522-call-of-fire" },
            id = "turnin-1522-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-1522-call-of-fire",
        },
        {
            priority = 1020,
            route = {
                { y = 0.21, mapID = 1456, label = "Xanis Flameweaver", x = 0.252, offMapText = "Travel to Xanis Flameweaver in Thunder Bluff." },
            },
            dependsOn = { "turnin-1522-call-of-fire" },
            id = "accept-1523-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-1523-call-of-fire",
        },
        {
            priority = 1030,
            route = {
                { y = 0.2, mapID = 1413, label = "Kranal Fiss", x = 0.558, offMapText = "Travel to Kranal Fiss in The Barrens." },
            },
            dependsOn = { "accept-1523-call-of-fire" },
            id = "turnin-1523-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-1523-call-of-fire",
        },
        {
            priority = 1040,
            route = {
                { y = 0.426, mapID = 1411, label = "Swart", x = 0.544, offMapText = "Travel to Swart in Durotar." },
            },
            dependsOn = { "turnin-1523-call-of-fire" },
            id = "accept-2983-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-2983-call-of-fire",
        },
        {
            priority = 1050,
            route = {
                { y = 0.2, mapID = 1413, label = "Kranal Fiss", x = 0.558, offMapText = "Travel to Kranal Fiss in The Barrens." },
            },
            dependsOn = { "accept-2983-call-of-fire" },
            id = "turnin-2983-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-2983-call-of-fire",
        },
        {
            priority = 1060,
            route = {
                { y = 0.592, mapID = 1412, label = "Narm Skychaser", x = 0.484, offMapText = "Travel to Narm Skychaser in Mulgore." },
            },
            dependsOn = { "turnin-2983-call-of-fire" },
            id = "accept-2984-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-2984-call-of-fire",
        },
        {
            priority = 1070,
            route = {
                { y = 0.2, mapID = 1413, label = "Kranal Fiss", x = 0.558, offMapText = "Travel to Kranal Fiss in The Barrens." },
            },
            dependsOn = { "accept-2984-call-of-fire" },
            id = "turnin-2984-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-2984-call-of-fire",
        },
        {
            priority = 1080,
            route = {
                { y = 0.2, mapID = 1413, label = "Kranal Fiss", x = 0.558, offMapText = "Travel to Kranal Fiss in The Barrens." },
            },
            dependsOn = { "turnin-2984-call-of-fire", "turnin-2983-call-of-fire" },
            id = "accept-1524-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-1524-call-of-fire",
        },
        {
            priority = 1090,
            route = {
                { y = 0.588, mapID = 1411, label = "Telf Joolam", x = 0.386, offMapText = "Travel to Telf Joolam in Durotar." },
            },
            dependsOn = { "accept-1524-call-of-fire" },
            id = "turnin-1524-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-1524-call-of-fire",
        },
        {
            priority = 1100,
            route = {
                { y = 0.588, mapID = 1411, label = "Telf Joolam", x = 0.386, offMapText = "Travel to Telf Joolam in Durotar." },
            },
            dependsOn = { "turnin-1524-call-of-fire" },
            id = "accept-1525-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-1525-call-of-fire",
        },
        {
            priority = 1110,
            dependsOn = { "accept-1525-call-of-fire" },
            id = "objective-1525-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1525-call-of-fire",
        },
        {
            priority = 1120,
            route = {
                { y = 0.588, mapID = 1411, label = "Telf Joolam", x = 0.386, offMapText = "Travel to Telf Joolam in Durotar." },
            },
            dependsOn = { "accept-1525-call-of-fire", "objective-1525-call-of-fire" },
            id = "turnin-1525-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-1525-call-of-fire",
        },
        {
            priority = 1130,
            route = {
                { y = 0.588, mapID = 1411, label = "Telf Joolam", x = 0.386, offMapText = "Travel to Telf Joolam in Durotar." },
            },
            dependsOn = { "turnin-1525-call-of-fire", "turnin-1524-call-of-fire" },
            id = "accept-1526-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-1526-call-of-fire",
        },
        {
            priority = 1140,
            route = {
                { mapID = 1411, x = 0.3872, y = 0.5829, label = "Minor Manifestation of Fire", offMapText = "Travel to Minor Manifestation of Fire." },
            },
            dependsOn = { "accept-1526-call-of-fire" },
            id = "objective-1526-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "objective-1526-call-of-fire",
        },
        {
            priority = 1150,
            route = {
                { y = 0.582, mapID = 1411, label = "Brazier of the Dormant Flame", x = 0.389, offMapText = "Travel to Brazier of the Dormant Flame in Durotar." },
            },
            dependsOn = { "accept-1526-call-of-fire", "objective-1526-call-of-fire" },
            id = "turnin-1526-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-1526-call-of-fire",
        },
        {
            priority = 1160,
            route = {
                { y = 0.582, mapID = 1411, label = "Brazier of the Dormant Flame", x = 0.389, offMapText = "Travel to Brazier of the Dormant Flame in Durotar." },
            },
            dependsOn = { "turnin-1526-call-of-fire" },
            id = "accept-1527-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-1527-call-of-fire",
        },
        {
            priority = 1170,
            route = {
                { y = 0.2, mapID = 1413, label = "Kranal Fiss", x = 0.558, offMapText = "Travel to Kranal Fiss in The Barrens." },
            },
            dependsOn = { "accept-1527-call-of-fire" },
            id = "turnin-1527-call-of-fire",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-1527-call-of-fire",
        },
        {
            id = "level-before-accept-1528-call-of-water",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1528,
            alternativeQuests = { 1529, 2985, 2986 },
            priority = 1180,
        },
        {
            priority = 1190,
            route = {
                { y = 0.374, mapID = 1454, label = "Searn Firewarder", x = 0.378, offMapText = "Travel to Searn Firewarder in Orgrimmar." },
            },
            id = "accept-1528-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1528-call-of-water",
        },
        {
            priority = 1200,
            route = {
                { y = 0.438, mapID = 1413, label = "Islen Waterseer", x = 0.658, offMapText = "Travel to Islen Waterseer in The Barrens." },
            },
            dependsOn = { "accept-1528-call-of-water" },
            id = "turnin-1528-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1528-call-of-water",
        },
        {
            id = "level-before-accept-94495-call-of-water",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            checkpointQuest = 94495,
            priority = 1210,
        },
        {
            priority = 1220,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            id = "accept-94495-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94495-call-of-water",
        },
        {
            priority = 1230,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = { "accept-94495-call-of-water" },
            id = "turnin-94495-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94495-call-of-water",
        },
        {
            priority = 1240,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = { "turnin-94495-call-of-water" },
            id = "accept-94497-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "accept-94497-call-of-water",
        },
        {
            priority = 1250,
            id = "objective-94497-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = true,
            dependsOn = { "accept-94497-call-of-water" },
            classAction = "objective-94497-quest-work",
        },
        {
            priority = 1260,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = { "accept-94497-call-of-water", "objective-94497-quest-work" },
            id = "turnin-94497-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94497-call-of-water",
        },
        {
            priority = 1270,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = { "turnin-94497-call-of-water" },
            id = "accept-94499-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "accept-94499-call-of-water",
        },
        {
            priority = 1280,
            id = "objective-94499-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = true,
            dependsOn = { "accept-94499-call-of-water" },
            classAction = "objective-94499-quest-work",
        },
        {
            priority = 1290,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = { "accept-94499-call-of-water", "objective-94499-quest-work" },
            id = "turnin-94499-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94499-call-of-water",
        },
        {
            priority = 1300,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = { "turnin-94499-call-of-water" },
            id = "accept-94500-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "accept-94500-call-of-water",
        },
        {
            priority = 1310,
            id = "objective-94500-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = true,
            dependsOn = { "accept-94500-call-of-water" },
            classAction = "objective-94500-quest-work",
        },
        {
            priority = 1320,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = { "accept-94500-call-of-water", "objective-94500-quest-work" },
            id = "turnin-94500-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94500-call-of-water",
        },
        {
            priority = 1330,
            route = {
                { y = 0.764, mapID = 1437, label = "Hervdana Saegrund", x = 0.656, offMapText = "Travel to Hervdana Saegrund in Wetlands." },
            },
            dependsOn = { "turnin-94500-call-of-water" },
            id = "accept-94501-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "accept-94501-call-of-water",
        },
        {
            priority = 1340,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            dependsOn = { "accept-94501-call-of-water" },
            id = "turnin-94501-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94501-call-of-water",
        },
        {
            priority = 1350,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            dependsOn = { "turnin-94501-call-of-water" },
            id = "accept-94502-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "accept-94502-call-of-water",
        },
        {
            priority = 1360,
            id = "objective-94502-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = true,
            dependsOn = { "accept-94502-call-of-water" },
            classAction = "objective-94502-quest-work",
        },
        {
            priority = 1370,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            dependsOn = { "accept-94502-call-of-water", "objective-94502-quest-work" },
            id = "turnin-94502-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94502-call-of-water",
        },
        {
            priority = 1380,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            id = "accept-94616-water-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94616-water-sapta",
        },
        {
            priority = 1390,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            dependsOn = { "accept-94616-water-sapta" },
            id = "turnin-94616-water-sapta",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94616-water-sapta",
        },
        {
            priority = 1400,
            route = {
                { y = 0.21, mapID = 1456, label = "Xanis Flameweaver", x = 0.252, offMapText = "Travel to Xanis Flameweaver in Thunder Bluff." },
            },
            dependsOn = { "turnin-1528-call-of-water" },
            id = "accept-1529-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1529-call-of-water",
        },
        {
            priority = 1410,
            route = {
                { y = 0.438, mapID = 1413, label = "Islen Waterseer", x = 0.658, offMapText = "Travel to Islen Waterseer in The Barrens." },
            },
            dependsOn = { "accept-1529-call-of-water" },
            id = "turnin-1529-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1529-call-of-water",
        },
        {
            id = "level-before-accept-2985-call-of-water",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2985,
            alternativeQuests = { 1528, 1529, 2986 },
            priority = 1420,
        },
        {
            priority = 1430,
            route = {
                { y = 0.426, mapID = 1411, label = "Swart", x = 0.544, offMapText = "Travel to Swart in Durotar." },
            },
            dependsOn = { "turnin-1529-call-of-water" },
            id = "accept-2985-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
            useClientPin = false,
            classAction = "accept-2985-call-of-water",
        },
        {
            priority = 1440,
            route = {
                { y = 0.438, mapID = 1413, label = "Islen Waterseer", x = 0.658, offMapText = "Travel to Islen Waterseer in The Barrens." },
            },
            dependsOn = { "accept-2985-call-of-water" },
            id = "turnin-2985-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
            useClientPin = false,
            classAction = "turnin-2985-call-of-water",
        },
        {
            priority = 1450,
            route = {
                { y = 0.592, mapID = 1412, label = "Narm Skychaser", x = 0.484, offMapText = "Travel to Narm Skychaser in Mulgore." },
            },
            dependsOn = { "turnin-2985-call-of-water" },
            id = "accept-2986-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
            useClientPin = false,
            classAction = "accept-2986-call-of-water",
        },
        {
            priority = 1460,
            route = {
                { y = 0.438, mapID = 1413, label = "Islen Waterseer", x = 0.658, offMapText = "Travel to Islen Waterseer in The Barrens." },
            },
            dependsOn = { "accept-2986-call-of-water" },
            id = "turnin-2986-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
            useClientPin = false,
            classAction = "turnin-2986-call-of-water",
        },
        {
            priority = 1470,
            route = {
                { y = 0.136, mapID = 1455, label = "Eldrun Stormbreaker", x = 0.474, offMapText = "Travel to Eldrun Stormbreaker in Ironforge." },
            },
            dependsOn = { "turnin-2986-call-of-water" },
            id = "accept-94494-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "accept-94494-call-of-water",
        },
        {
            priority = 1480,
            route = {
                { y = 0.19, mapID = 1432, label = "Norric Lochthane", x = 0.418, offMapText = "Travel to Norric Lochthane in Loch Modan." },
            },
            dependsOn = { "accept-94494-call-of-water" },
            id = "turnin-94494-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
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
            useClientPin = false,
            classAction = "turnin-94494-call-of-water",
        },
        {
            priority = 1490,
            route = {
                { y = 0.438, mapID = 1413, label = "Islen Waterseer", x = 0.658, offMapText = "Travel to Islen Waterseer in The Barrens." },
            },
            dependsOn = { "turnin-94494-call-of-water", "turnin-1528-call-of-water" },
            id = "accept-1530-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1530-call-of-water",
        },
        {
            priority = 1500,
            route = {
                { y = 0.774, mapID = 1413, label = "Brine", x = 0.434, offMapText = "Travel to Brine in The Barrens." },
            },
            dependsOn = { "accept-1530-call-of-water" },
            id = "turnin-1530-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1530-call-of-water",
        },
        {
            priority = 1510,
            route = {
                { y = 0.774, mapID = 1413, label = "Brine", x = 0.434, offMapText = "Travel to Brine in The Barrens." },
            },
            dependsOn = { "turnin-1530-call-of-water" },
            id = "accept-1535-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1535-call-of-water",
        },
        {
            priority = 1520,
            route = {
                { mapID = 1413, x = 0.4435, y = 0.7696999999999999, label = "Filled Brown Waterskin", offMapText = "Travel to Filled Brown Waterskin." },
            },
            id = "objective-1535-quest-work",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-1535-call-of-water" },
            classAction = "objective-1535-quest-work",
        },
        {
            priority = 1530,
            route = {
                { y = 0.774, mapID = 1413, label = "Brine", x = 0.434, offMapText = "Travel to Brine in The Barrens." },
            },
            dependsOn = { "accept-1535-call-of-water", "objective-1535-quest-work" },
            id = "turnin-1535-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1535-call-of-water",
        },
        {
            priority = 1540,
            route = {
                { y = 0.774, mapID = 1413, label = "Brine", x = 0.434, offMapText = "Travel to Brine in The Barrens." },
            },
            dependsOn = { "turnin-1535-call-of-water", "turnin-1530-call-of-water" },
            id = "accept-1536-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1536-call-of-water",
        },
        {
            priority = 1550,
            route = {
                { mapID = 1424, x = 0.6214999999999999, y = 0.2075, label = "Filled Red Waterskin", offMapText = "Travel to Filled Red Waterskin." },
            },
            id = "objective-1536-quest-work",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-1536-call-of-water" },
            classAction = "objective-1536-quest-work",
        },
        {
            priority = 1560,
            route = {
                { y = 0.774, mapID = 1413, label = "Brine", x = 0.434, offMapText = "Travel to Brine in The Barrens." },
            },
            dependsOn = { "accept-1536-call-of-water", "objective-1536-quest-work" },
            id = "turnin-1536-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1536-call-of-water",
        },
        {
            priority = 1570,
            route = {
                { y = 0.774, mapID = 1413, label = "Brine", x = 0.434, offMapText = "Travel to Brine in The Barrens." },
            },
            dependsOn = { "turnin-1536-call-of-water" },
            id = "accept-1534-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1534-call-of-water",
        },
        {
            priority = 1580,
            route = {
                { mapID = 1440, x = 0.33549999999999996, y = 0.6744, label = "Filled Blue Waterskin", offMapText = "Travel to Filled Blue Waterskin." },
            },
            id = "objective-1534-quest-work",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-1534-call-of-water" },
            classAction = "objective-1534-quest-work",
        },
        {
            priority = 1590,
            route = {
                { y = 0.774, mapID = 1413, label = "Brine", x = 0.434, offMapText = "Travel to Brine in The Barrens." },
            },
            dependsOn = { "accept-1534-call-of-water", "objective-1534-quest-work" },
            id = "turnin-1534-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1534-call-of-water",
        },
        {
            priority = 1600,
            route = {
                { y = 0.774, mapID = 1413, label = "Brine", x = 0.434, offMapText = "Travel to Brine in The Barrens." },
            },
            dependsOn = { "turnin-1534-call-of-water", "turnin-1536-call-of-water" },
            id = "accept-220-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-220-call-of-water",
        },
        {
            priority = 1610,
            route = {
                { y = 0.438, mapID = 1413, label = "Islen Waterseer", x = 0.658, offMapText = "Travel to Islen Waterseer in The Barrens." },
            },
            dependsOn = { "accept-220-call-of-water" },
            id = "turnin-220-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-220-call-of-water",
        },
        {
            priority = 1620,
            route = {
                { y = 0.438, mapID = 1413, label = "Islen Waterseer", x = 0.658, offMapText = "Travel to Islen Waterseer in The Barrens." },
            },
            dependsOn = { "turnin-220-call-of-water" },
            id = "accept-63-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-63-call-of-water",
        },
        {
            priority = 1630,
            route = {
                { mapID = 1421, x = 0.38280000000000003, y = 0.4456, label = "Corrupt Manifestation's Bracers", offMapText = "Travel to Corrupt Manifestation's Bracers." },
            },
            id = "objective-63-quest-work",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-63-call-of-water" },
            classAction = "objective-63-quest-work",
        },
        {
            priority = 1640,
            route = {
                { y = 0.445, mapID = 1421, label = "Brazier of Everfount", x = 0.382, offMapText = "Travel to Brazier of Everfount in Silverpine Forest." },
            },
            dependsOn = { "accept-63-call-of-water", "objective-63-quest-work" },
            id = "turnin-63-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-63-call-of-water",
        },
        {
            priority = 1650,
            route = {
                { y = 0.445, mapID = 1421, label = "Brazier of Everfount", x = 0.382, offMapText = "Travel to Brazier of Everfount in Silverpine Forest." },
            },
            dependsOn = { "turnin-63-call-of-water" },
            id = "accept-100-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-100-call-of-water",
        },
        {
            priority = 1660,
            route = {
                { y = 0.446, mapID = 1421, label = "Minor Manifestation of Water", x = 0.386, offMapText = "Travel to Minor Manifestation of Water in Silverpine Forest." },
            },
            dependsOn = { "accept-100-call-of-water" },
            id = "turnin-100-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-100-call-of-water",
        },
        {
            priority = 1670,
            route = {
                { y = 0.446, mapID = 1421, label = "Minor Manifestation of Water", x = 0.386, offMapText = "Travel to Minor Manifestation of Water in Silverpine Forest." },
            },
            dependsOn = { "turnin-100-call-of-water" },
            id = "accept-96-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-96-call-of-water",
        },
        {
            priority = 1680,
            route = {
                { y = 0.438, mapID = 1413, label = "Islen Waterseer", x = 0.658, offMapText = "Travel to Islen Waterseer in The Barrens." },
            },
            dependsOn = { "accept-96-call-of-water" },
            id = "turnin-96-call-of-water",
            conditions = {
                all = {
                    { class = 7 },
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
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-96-call-of-water",
        },
        {
            id = "level-before-accept-1531-call-of-air",
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
            checkpointQuest = 1531,
            alternativeQuests = { 1532 },
            priority = 1690,
        },
        {
            priority = 1700,
            route = {
                { y = 0.374, mapID = 1454, label = "Searn Firewarder", x = 0.378, offMapText = "Travel to Searn Firewarder in Orgrimmar." },
            },
            id = "accept-1531-call-of-air",
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
            classAction = "accept-1531-call-of-air",
        },
        {
            priority = 1710,
            route = {
                { y = 0.428, mapID = 1441, label = "Prate Cloudseer", x = 0.536, offMapText = "Travel to Prate Cloudseer in Thousand Needles." },
            },
            dependsOn = { "accept-1531-call-of-air" },
            id = "turnin-1531-call-of-air",
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
            classAction = "turnin-1531-call-of-air",
        },
        {
            priority = 1720,
            route = {
                { y = 0.21, mapID = 1456, label = "Xanis Flameweaver", x = 0.252, offMapText = "Travel to Xanis Flameweaver in Thunder Bluff." },
            },
            id = "accept-1532-call-of-air",
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
            priority = 1730,
            route = {
                { y = 0.428, mapID = 1441, label = "Prate Cloudseer", x = 0.536, offMapText = "Travel to Prate Cloudseer in Thousand Needles." },
            },
            dependsOn = { "accept-1532-call-of-air" },
            id = "turnin-1532-call-of-air",
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
            id = "level-before-accept-8410-elemental-mastery",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8410,
            alternativeQuests = { 8411 },
            priority = 1740,
        },
        {
            priority = 1750,
            route = {
                { y = 0.362, mapID = 1454, label = "Sagorne Creststrider", x = 0.386, offMapText = "Travel to Sagorne Creststrider in Orgrimmar." },
            },
            id = "accept-8410-elemental-mastery",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
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
            classAction = "accept-8410-elemental-mastery",
        },
        {
            priority = 1760,
            id = "objective-8410-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-8410-elemental-mastery" },
            classAction = "objective-8410-quest-work",
        },
        {
            priority = 1770,
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "accept-8410-elemental-mastery", "objective-8410-quest-work" },
            id = "turnin-8410-elemental-mastery",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
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
            classAction = "turnin-8410-elemental-mastery",
        },
        {
            id = "level-before-accept-8411-mastering-the-elements",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
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
                },
            },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8411,
            alternativeQuests = { 8410 },
            priority = 1780,
        },
        {
            priority = 1790,
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "turnin-8410-elemental-mastery" },
            id = "accept-8411-mastering-the-elements",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8411-mastering-the-elements",
        },
        {
            priority = 1800,
            dependsOn = { "accept-8411-mastering-the-elements" },
            id = "objective-8411-mastering-the-elements",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-8411-mastering-the-elements",
        },
        {
            priority = 1810,
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "accept-8411-mastering-the-elements", "objective-8411-mastering-the-elements" },
            id = "turnin-8411-mastering-the-elements",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8411-mastering-the-elements",
        },
        {
            priority = 1820,
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "turnin-8411-mastering-the-elements", "turnin-8410-elemental-mastery" },
            id = "accept-8412-spirit-totem",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
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
            classAction = "accept-8412-spirit-totem",
        },
        {
            priority = 1830,
            id = "objective-8412-quest-work",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-8412-spirit-totem" },
            classAction = "objective-8412-quest-work",
        },
        {
            priority = 1840,
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "accept-8412-spirit-totem", "objective-8412-quest-work" },
            id = "turnin-8412-spirit-totem",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
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
            classAction = "turnin-8412-spirit-totem",
        },
        {
            id = "level-before-accept-7667-material-assistance",
            kind = "note",
            text = "Reach level 58 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 58 },
            },
            requiredLevel = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7667,
            priority = 1850,
        },
        {
            priority = 1860,
            route = {
                { y = 0.362, mapID = 1454, label = "Sagorne Creststrider", x = 0.386, offMapText = "Travel to Sagorne Creststrider in Orgrimmar." },
            },
            id = "accept-7667-material-assistance",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 58 },
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
            classAction = "accept-7667-material-assistance",
        },
        {
            priority = 1870,
            dependsOn = { "accept-7667-material-assistance" },
            id = "objective-7667-material-assistance",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 58 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 6, 8 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7667-material-assistance",
        },
        {
            priority = 1880,
            route = {
                { y = 0.362, mapID = 1454, label = "Sagorne Creststrider", x = 0.386, offMapText = "Travel to Sagorne Creststrider in Orgrimmar." },
            },
            dependsOn = { "accept-7667-material-assistance", "objective-7667-material-assistance" },
            id = "turnin-7667-material-assistance",
            conditions = {
                all = {
                    { class = 7 },
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 58 },
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
            classAction = "turnin-7667-material-assistance",
        },
    },
    routeMode = "ordered",
})
