local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Hunter",
    category = "Class Quests",
    id = "class-hunter",
    conditions = {
        all = {
            { class = 3 },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
            priority = 10,
            route = {
                { mapID = 1426, x = 0.2993, y = 0.7120000000000001, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "accept-179-dwarven-outfitters",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 3 },
                                    {
                                        race = { 3 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 8,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-179-dwarven-outfitters",
        },
        {
            priority = 20,
            route = {
                { y = 0.744, mapID = 1426, label = "Ragged Young Wolf", offMapText = "Travel to Ragged Young Wolf.", x = 0.306 },
            },
            id = "objective-179-1-ragged-young-wolf",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 3 },
                                    {
                                        race = { 3 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 9,
            useClientPin = false,
            dependsOn = { "accept-179-dwarven-outfitters" },
            classAction = "objective-179-1-ragged-young-wolf",
        },
        {
            priority = 30,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", offMapText = "Travel to Sten Stoutarm in Dun Morogh.", x = 0.2993 },
            },
            dependsOn = { "accept-179-dwarven-outfitters", "objective-179-1-ragged-young-wolf" },
            id = "turnin-179-dwarven-outfitters",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 3 },
                                    {
                                        race = { 3 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 11,
            useClientPin = false,
            classAction = "turnin-179-dwarven-outfitters",
        },
        {
            priority = 40,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "accept-3108-etched-rune",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            classAction = "accept-3108-etched-rune",
        },
        {
            priority = 50,
            route = {
                { y = 0.674, mapID = 1426, label = "Thorgas Grimson", x = 0.29, offMapText = "Travel to Thorgas Grimson in Dun Morogh." },
            },
            dependsOn = { "accept-3108-etched-rune" },
            id = "turnin-3108-etched-rune",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            classAction = "turnin-3108-etched-rune",
        },
        {
            priority = 60,
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
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
                    { class = 3 },
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
            priority = 70,
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
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
                    { class = 3 },
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
            priority = 80,
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
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
                    { class = 3 },
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
            priority = 90,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-3082-etched-tablet",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            classAction = "accept-3082-etched-tablet",
        },
        {
            priority = 100,
            route = {
                { y = 0.692, mapID = 1411, label = "Jen'shan", x = 0.428, offMapText = "Travel to Jen'shan in Durotar." },
            },
            dependsOn = { "accept-3082-etched-tablet" },
            id = "turnin-3082-etched-tablet",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            classAction = "turnin-3082-etched-tablet",
        },
        {
            priority = 110,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-3087-etched-parchment",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            classAction = "accept-3087-etched-parchment",
        },
        {
            priority = 120,
            route = {
                { y = 0.692, mapID = 1411, label = "Jen'shan", x = 0.428, offMapText = "Travel to Jen'shan in Durotar." },
            },
            dependsOn = { "accept-3087-etched-parchment" },
            id = "turnin-3087-etched-parchment",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            classAction = "turnin-3087-etched-parchment",
        },
        {
            route = {
                { y = 0.234, mapID = 2521, label = "Ailee Farheart", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            priority = 130,
            id = "accept-coming-of-age",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
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
            priority = 140,
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-coming-of-age",
        },
        {
            priority = 150,
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
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
            priority = 160,
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-92461-harmony-in-balance",
        },
        {
            priority = 170,
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92461-harmony-in-balance",
        },
        {
            priority = 180,
            route = {
                { y = 0.4427, mapID = 1438, label = "Conservator Ilthalaine", offMapText = "Travel to Conservator Ilthalaine in Teldrassil.", x = 0.5869 },
            },
            id = "accept-456-the-balance-of-nature",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 4 },
                                    {
                                        race = { 4 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 7,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-456-the-balance-of-nature",
        },
        {
            priority = 190,
            route = {
                { y = 0.454, mapID = 1438, label = "Young Nightsaber", offMapText = "Travel to Young Nightsaber.", x = 0.582 },
            },
            id = "objective-456-1-young-nightsaber",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 4 },
                                    {
                                        race = { 4 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 8,
            useClientPin = false,
            dependsOn = { "accept-456-the-balance-of-nature" },
            classAction = "objective-456-1-young-nightsaber",
        },
        {
            priority = 200,
            route = {
                { y = 0.454, mapID = 1438, label = "Young Nightsaber", offMapText = "Travel to Young Nightsaber.", x = 0.582 },
            },
            dependsOn = { "accept-456-the-balance-of-nature" },
            id = "objective-456-1-young-nightsaber-2",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 4 },
                                    {
                                        race = { 4 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-456-1-young-nightsaber-2",
        },
        {
            priority = 210,
            route = {
                { y = 0.454, mapID = 1438, label = "Young Thistle Boar", offMapText = "Travel to Young Thistle Boar.", x = 0.582 },
            },
            dependsOn = { "accept-456-the-balance-of-nature" },
            id = "objective-456-2-young-thistle-boar",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 4 },
                                    {
                                        race = { 4 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 8,
            useClientPin = false,
            classAction = "objective-456-2-young-thistle-boar",
        },
        {
            priority = 220,
            route = {
                { y = 0.4427, mapID = 1438, label = "Conservator Ilthalaine", offMapText = "Travel to Conservator Ilthalaine in Teldrassil.", x = 0.587 },
            },
            dependsOn = {
                "accept-456-the-balance-of-nature",
                "objective-456-1-young-nightsaber",
                "objective-456-1-young-nightsaber-2",
                "objective-456-2-young-thistle-boar",
            },
            id = "turnin-456-the-balance-of-nature",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 3 },
                                    {
                                        class = { 3 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 4 },
                                    {
                                        race = { 4 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 3 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 11,
            useClientPin = false,
            classAction = "turnin-456-the-balance-of-nature",
        },
        {
            priority = 230,
            route = {
                { y = 0.442, mapID = 1438, label = "Conservator Ilthalaine", x = 0.586, offMapText = "Travel to Conservator Ilthalaine in Teldrassil." },
            },
            id = "accept-3117-etched-sigil",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3117-etched-sigil",
        },
        {
            priority = 240,
            route = {
                { y = 0.404, mapID = 1438, label = "Ayanna Everstride", x = 0.586, offMapText = "Travel to Ayanna Everstride in Teldrassil." },
            },
            dependsOn = { "accept-3117-etched-sigil" },
            id = "turnin-3117-etched-sigil",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3117-etched-sigil",
        },
        {
            priority = 250,
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
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
                    { class = 3 },
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
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
                    { class = 3 },
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
            priority = 260,
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
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
                    { class = 3 },
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
            priority = 270,
            useClientPin = false,
            dependsOn = { "accept-747-the-hunt-begins" },
            classAction = "objective-747-2-plainstrider-feather",
        },
        {
            priority = 280,
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
                                    { class = 3 },
                                    {
                                        class = { 3 },
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
                    { class = 3 },
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
            priority = 290,
            route = {
                { y = 0.772, mapID = 1412, label = "Grull Hawkwind", x = 0.448, offMapText = "Travel to Grull Hawkwind in Mulgore." },
            },
            id = "accept-3092-etched-note",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            classAction = "accept-3092-etched-note",
        },
        {
            priority = 300,
            route = {
                { y = 0.758, mapID = 1412, label = "Lanka Farshot", x = 0.442, offMapText = "Travel to Lanka Farshot in Mulgore." },
            },
            dependsOn = { "accept-3092-etched-note" },
            id = "turnin-3092-etched-note",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            classAction = "turnin-3092-etched-note",
        },
        {
            id = "level-before-accept-92482-the-way-of-the-hunter",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 92482,
            priority = 310,
        },
        {
            priority = 320,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-92482-the-way-of-the-hunter",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-92482-the-way-of-the-hunter",
        },
        {
            priority = 330,
            route = {
                { y = 0.236, mapID = 2521, label = "Tai'ree Farsight", x = 0.424, offMapText = "Travel to Tai'ree Farsight in Zephras Isle." },
            },
            dependsOn = { "accept-92482-the-way-of-the-hunter" },
            id = "turnin-92482-the-way-of-the-hunter",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 2 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92482-the-way-of-the-hunter",
        },
        {
            id = "level-before-accept-6063-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    { race = 4 },
                    {
                        race = { 4 },
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
            checkpointQuest = 6063,
            priority = 340,
        },
        {
            priority = 350,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            id = "accept-6063-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-6063-taming-the-beast",
        },
        {
            priority = 360,
            id = "objective-6063-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6063-taming-the-beast" },
            classAction = "objective-6063-quest-work",
        },
        {
            priority = 370,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = { "accept-6063-taming-the-beast", "objective-6063-quest-work" },
            id = "turnin-6063-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6063-taming-the-beast",
        },
        {
            priority = 380,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = { "turnin-6063-taming-the-beast" },
            id = "accept-6101-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6101-taming-the-beast",
        },
        {
            priority = 390,
            id = "objective-6101-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6101-taming-the-beast" },
            classAction = "objective-6101-quest-work",
        },
        {
            priority = 400,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = { "accept-6101-taming-the-beast", "objective-6101-quest-work" },
            id = "turnin-6101-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6101-taming-the-beast",
        },
        {
            priority = 410,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = { "turnin-6101-taming-the-beast", "turnin-6063-taming-the-beast" },
            id = "accept-6102-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6102-taming-the-beast",
        },
        {
            priority = 420,
            id = "objective-6102-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6102-taming-the-beast" },
            classAction = "objective-6102-quest-work",
        },
        {
            priority = 430,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = { "accept-6102-taming-the-beast", "objective-6102-quest-work" },
            id = "turnin-6102-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6102-taming-the-beast",
        },
        {
            priority = 440,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = { "turnin-6102-taming-the-beast", "turnin-6101-taming-the-beast" },
            id = "accept-6103-training-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6103-training-the-beast",
        },
        {
            priority = 450,
            route = {
                { y = 0.088, mapID = 1457, label = "Jocaste", x = 0.402, offMapText = "Travel to Jocaste in Darnassus." },
            },
            dependsOn = { "accept-6103-training-the-beast" },
            id = "turnin-6103-training-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6103-training-the-beast",
        },
        {
            id = "level-before-accept-94007-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        race = { 95, 96 },
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
            checkpointQuest = 94007,
            priority = 460,
        },
        {
            priority = 470,
            route = {
                { y = 0.442, mapID = 2521, label = "Elayaa Easewind", x = 0.452, offMapText = "Travel to Elayaa Easewind in Zephras Isle." },
            },
            id = "accept-94007-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94007-taming-the-beast",
        },
        {
            priority = 480,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "accept-94007-taming-the-beast" },
            id = "turnin-94007-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94007-taming-the-beast",
        },
        {
            priority = 490,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "turnin-94007-taming-the-beast" },
            id = "accept-94978-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94978-taming-the-beast",
        },
        {
            priority = 500,
            id = "objective-94978-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-94978-taming-the-beast" },
            classAction = "objective-94978-quest-work",
        },
        {
            priority = 510,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "accept-94978-taming-the-beast", "objective-94978-quest-work" },
            id = "turnin-94978-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94978-taming-the-beast",
        },
        {
            priority = 520,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "turnin-94978-taming-the-beast" },
            id = "accept-94979-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94979-taming-the-beast",
        },
        {
            priority = 530,
            id = "objective-94979-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-94979-taming-the-beast" },
            classAction = "objective-94979-quest-work",
        },
        {
            priority = 540,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "accept-94979-taming-the-beast", "objective-94979-quest-work" },
            id = "turnin-94979-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94979-taming-the-beast",
        },
        {
            priority = 550,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "turnin-94979-taming-the-beast" },
            id = "accept-94013-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94013-taming-the-beast",
        },
        {
            priority = 560,
            id = "objective-94013-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-94013-taming-the-beast" },
            classAction = "objective-94013-quest-work",
        },
        {
            priority = 570,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "accept-94013-taming-the-beast", "objective-94013-quest-work" },
            id = "turnin-94013-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94013-taming-the-beast",
        },
        {
            priority = 580,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'ana Quickgale", x = 0.596, offMapText = "Travel to Quel'ana Quickgale in Zephras Isle." },
            },
            dependsOn = { "turnin-94013-taming-the-beast" },
            id = "accept-94050-training-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94050-training-the-beast",
        },
        {
            priority = 590,
            route = {
                { y = 0.726, mapID = 2521, label = "Quel'dora Quickgale", x = 0.596, offMapText = "Travel to Quel'dora Quickgale in Zephras Isle." },
            },
            dependsOn = { "accept-94050-training-the-beast" },
            id = "turnin-94050-training-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 95, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94050-training-the-beast",
        },
        {
            id = "level-before-accept-94792-taming-the-beast",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 94792,
            priority = 600,
        },
        {
            priority = 610,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            id = "accept-94792-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-94792-taming-the-beast",
        },
        {
            priority = 620,
            dependsOn = { "accept-94792-taming-the-beast" },
            id = "objective-94792-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "objective-94792-reviewed-mechanics",
        },
        {
            priority = 630,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            dependsOn = { "accept-94792-taming-the-beast", "objective-94792-reviewed-mechanics" },
            id = "turnin-94792-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-94792-taming-the-beast",
        },
        {
            priority = 640,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            dependsOn = { "turnin-94792-taming-the-beast" },
            id = "accept-94863-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-94863-taming-the-beast",
        },
        {
            priority = 650,
            dependsOn = { "accept-94863-taming-the-beast" },
            id = "objective-94863-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "objective-94863-reviewed-mechanics",
        },
        {
            priority = 660,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            dependsOn = { "accept-94863-taming-the-beast", "objective-94863-reviewed-mechanics" },
            id = "turnin-94863-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-94863-taming-the-beast",
        },
        {
            priority = 670,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            dependsOn = { "turnin-94863-taming-the-beast" },
            id = "accept-94864-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-94864-taming-the-beast",
        },
        {
            priority = 680,
            dependsOn = { "accept-94864-taming-the-beast" },
            id = "objective-94864-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "objective-94864-reviewed-mechanics",
        },
        {
            priority = 690,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            dependsOn = { "accept-94864-taming-the-beast", "objective-94864-reviewed-mechanics" },
            id = "turnin-94864-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-94864-taming-the-beast",
        },
        {
            priority = 700,
            route = {
                { y = 0.662, mapID = 1429, label = "Josephine Carson", x = 0.412, offMapText = "Travel to Josephine Carson in Elwynn Forest." },
            },
            dependsOn = { "turnin-94864-taming-the-beast" },
            id = "accept-94793-training-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-94793-training-the-beast",
        },
        {
            priority = 710,
            route = {
                { y = 0.664, mapID = 1429, label = "Isaac Chan", x = 0.418, offMapText = "Travel to Isaac Chan in Elwynn Forest." },
            },
            dependsOn = { "accept-94793-training-the-beast" },
            id = "turnin-94793-training-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-94793-training-the-beast",
        },
        {
            id = "level-before-accept-6065-the-hunters-path",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    { race = 6 },
                    {
                        race = { 6 },
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
            checkpointQuest = 6065,
            alternativeQuests = { 6066, 6067 },
            priority = 720,
        },
        {
            priority = 730,
            route = {
                { y = 0.878, mapID = 1456, label = "Kary Thunderhorn", x = 0.582, offMapText = "Travel to Kary Thunderhorn in Thunder Bluff." },
            },
            id = "accept-6065-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-6065-the-hunters-path",
        },
        {
            priority = 740,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "accept-6065-the-hunters-path" },
            id = "turnin-6065-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6065-the-hunters-path",
        },
        {
            priority = 750,
            route = {
                { y = 0.178, mapID = 1454, label = "Sian'dur", x = 0.678, offMapText = "Travel to Sian'dur in Orgrimmar." },
            },
            dependsOn = { "turnin-6065-the-hunters-path" },
            id = "accept-6066-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6066-the-hunters-path",
        },
        {
            priority = 760,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "accept-6066-the-hunters-path" },
            id = "turnin-6066-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6066-the-hunters-path",
        },
        {
            priority = 770,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "turnin-6066-the-hunters-path" },
            id = "accept-6067-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6067-the-hunters-path",
        },
        {
            priority = 780,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "accept-6067-the-hunters-path" },
            id = "turnin-6067-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6067-the-hunters-path",
        },
        {
            priority = 790,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "turnin-6067-the-hunters-path" },
            id = "accept-6061-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6061-taming-the-beast",
        },
        {
            priority = 800,
            id = "objective-6061-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6061-taming-the-beast" },
            classAction = "objective-6061-quest-work",
        },
        {
            priority = 810,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "accept-6061-taming-the-beast", "objective-6061-quest-work" },
            id = "turnin-6061-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6061-taming-the-beast",
        },
        {
            priority = 820,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "turnin-6061-taming-the-beast" },
            id = "accept-6087-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6087-taming-the-beast",
        },
        {
            priority = 830,
            id = "objective-6087-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6087-taming-the-beast" },
            classAction = "objective-6087-quest-work",
        },
        {
            priority = 840,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "accept-6087-taming-the-beast", "objective-6087-quest-work" },
            id = "turnin-6087-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6087-taming-the-beast",
        },
        {
            priority = 850,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "turnin-6087-taming-the-beast", "turnin-6061-taming-the-beast" },
            id = "accept-6088-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6088-taming-the-beast",
        },
        {
            priority = 860,
            id = "objective-6088-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6088-taming-the-beast" },
            classAction = "objective-6088-quest-work",
        },
        {
            priority = 870,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "accept-6088-taming-the-beast", "objective-6088-quest-work" },
            id = "turnin-6088-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6088-taming-the-beast",
        },
        {
            priority = 880,
            route = {
                { y = 0.556, mapID = 1412, label = "Yaw Sharpmane", x = 0.478, offMapText = "Travel to Yaw Sharpmane in Mulgore." },
            },
            dependsOn = { "turnin-6088-taming-the-beast", "turnin-6087-taming-the-beast" },
            id = "accept-6089-training-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6089-training-the-beast",
        },
        {
            priority = 890,
            route = {
                { y = 0.892, mapID = 1456, label = "Holt Thunderhorn", x = 0.574, offMapText = "Travel to Holt Thunderhorn in Thunder Bluff." },
            },
            dependsOn = { "accept-6089-training-the-beast" },
            id = "turnin-6089-training-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 6 },
                    {
                        race = { 6 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6089-training-the-beast",
        },
        {
            id = "level-before-accept-6068-the-hunters-path",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 8 },
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
            checkpointQuest = 6068,
            alternativeQuests = { 6069, 6070 },
            priority = 900,
        },
        {
            priority = 910,
            route = {
                { y = 0.178, mapID = 1454, label = "Sian'dur", x = 0.678, offMapText = "Travel to Sian'dur in Orgrimmar." },
            },
            id = "accept-6068-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-6068-the-hunters-path",
        },
        {
            priority = 920,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "accept-6068-the-hunters-path" },
            id = "turnin-6068-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6068-the-hunters-path",
        },
        {
            priority = 930,
            route = {
                { y = 0.742, mapID = 1411, label = "Kali Remik", x = 0.562, offMapText = "Travel to Kali Remik in Durotar." },
            },
            dependsOn = { "turnin-6068-the-hunters-path" },
            id = "accept-6069-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6069-the-hunters-path",
        },
        {
            priority = 940,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "accept-6069-the-hunters-path" },
            id = "turnin-6069-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6069-the-hunters-path",
        },
        {
            priority = 950,
            route = {
                { y = 0.878, mapID = 1456, label = "Kary Thunderhorn", x = 0.582, offMapText = "Travel to Kary Thunderhorn in Thunder Bluff." },
            },
            dependsOn = { "turnin-6069-the-hunters-path" },
            id = "accept-6070-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6070-the-hunters-path",
        },
        {
            priority = 960,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "accept-6070-the-hunters-path" },
            id = "turnin-6070-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6070-the-hunters-path",
        },
        {
            priority = 970,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "turnin-6070-the-hunters-path" },
            id = "accept-6062-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6062-taming-the-beast",
        },
        {
            priority = 980,
            id = "objective-6062-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6062-taming-the-beast" },
            classAction = "objective-6062-quest-work",
        },
        {
            priority = 990,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "accept-6062-taming-the-beast", "objective-6062-quest-work" },
            id = "turnin-6062-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6062-taming-the-beast",
        },
        {
            priority = 1000,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "turnin-6062-taming-the-beast" },
            id = "accept-6083-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6083-taming-the-beast",
        },
        {
            priority = 1010,
            id = "objective-6083-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6083-taming-the-beast" },
            classAction = "objective-6083-quest-work",
        },
        {
            priority = 1020,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "accept-6083-taming-the-beast", "objective-6083-quest-work" },
            id = "turnin-6083-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6083-taming-the-beast",
        },
        {
            priority = 1030,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "turnin-6083-taming-the-beast", "turnin-6062-taming-the-beast" },
            id = "accept-6082-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6082-taming-the-beast",
        },
        {
            priority = 1040,
            id = "objective-6082-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6082-taming-the-beast" },
            classAction = "objective-6082-quest-work",
        },
        {
            priority = 1050,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "accept-6082-taming-the-beast", "objective-6082-quest-work" },
            id = "turnin-6082-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6082-taming-the-beast",
        },
        {
            priority = 1060,
            route = {
                { y = 0.434, mapID = 1411, label = "Thotar", x = 0.518, offMapText = "Travel to Thotar in Durotar." },
            },
            dependsOn = { "turnin-6082-taming-the-beast", "turnin-6083-taming-the-beast" },
            id = "accept-6081-training-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6081-training-the-beast",
        },
        {
            priority = 1070,
            route = {
                { y = 0.182, mapID = 1454, label = "Ormak Grimshot", x = 0.662, offMapText = "Travel to Ormak Grimshot in Orgrimmar." },
            },
            dependsOn = { "accept-6081-training-the-beast" },
            id = "turnin-6081-training-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6081-training-the-beast",
        },
        {
            priority = 1080,
            route = {
                { y = 0.088, mapID = 1457, label = "Jocaste", x = 0.402, offMapText = "Travel to Jocaste in Darnassus." },
            },
            id = "accept-6071-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-6071-the-hunters-path",
        },
        {
            priority = 1090,
            route = {
                { y = 0.596, mapID = 1438, label = "Dazalar", x = 0.566, offMapText = "Travel to Dazalar in Teldrassil." },
            },
            dependsOn = { "accept-6071-the-hunters-path" },
            id = "turnin-6071-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6071-the-hunters-path",
        },
        {
            id = "level-before-accept-6074-the-hunters-path",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    { race = 3 },
                    {
                        race = { 3 },
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
            checkpointQuest = 6074,
            alternativeQuests = { 6075, 6076 },
            priority = 1100,
        },
        {
            priority = 1110,
            route = {
                { y = 0.838, mapID = 1455, label = "Olmin Burningbeard", x = 0.706, offMapText = "Travel to Olmin Burningbeard in Ironforge." },
            },
            id = "accept-6074-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-6074-the-hunters-path",
        },
        {
            priority = 1120,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "accept-6074-the-hunters-path" },
            id = "turnin-6074-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6074-the-hunters-path",
        },
        {
            priority = 1130,
            route = {
                { y = 0.454, mapID = 1426, label = "Tristane Shadowstone", x = 0.306, offMapText = "Travel to Tristane Shadowstone in Dun Morogh." },
            },
            dependsOn = { "turnin-6074-the-hunters-path" },
            id = "accept-6075-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6075-the-hunters-path",
        },
        {
            priority = 1140,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "accept-6075-the-hunters-path" },
            id = "turnin-6075-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6075-the-hunters-path",
        },
        {
            priority = 1150,
            route = {
                { y = 0.154, mapID = 1453, label = "Einris Brightspear", x = 0.616, offMapText = "Travel to Einris Brightspear in Stormwind City." },
            },
            dependsOn = { "turnin-6075-the-hunters-path" },
            id = "accept-6076-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6076-the-hunters-path",
        },
        {
            priority = 1160,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "accept-6076-the-hunters-path" },
            id = "turnin-6076-the-hunters-path",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6076-the-hunters-path",
        },
        {
            priority = 1170,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "turnin-6076-the-hunters-path" },
            id = "accept-6064-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6064-taming-the-beast",
        },
        {
            priority = 1180,
            id = "objective-6064-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6064-taming-the-beast" },
            classAction = "objective-6064-quest-work",
        },
        {
            priority = 1190,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "accept-6064-taming-the-beast", "objective-6064-quest-work" },
            id = "turnin-6064-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6064-taming-the-beast",
        },
        {
            priority = 1200,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "turnin-6064-taming-the-beast" },
            id = "accept-6084-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6084-taming-the-beast",
        },
        {
            priority = 1210,
            id = "objective-6084-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6084-taming-the-beast" },
            classAction = "objective-6084-quest-work",
        },
        {
            priority = 1220,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "accept-6084-taming-the-beast", "objective-6084-quest-work" },
            id = "turnin-6084-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6084-taming-the-beast",
        },
        {
            priority = 1230,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "turnin-6084-taming-the-beast", "turnin-6064-taming-the-beast" },
            id = "accept-6085-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6085-taming-the-beast",
        },
        {
            priority = 1240,
            id = "objective-6085-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6085-taming-the-beast" },
            classAction = "objective-6085-quest-work",
        },
        {
            priority = 1250,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "accept-6085-taming-the-beast", "objective-6085-quest-work" },
            id = "turnin-6085-taming-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6085-taming-the-beast",
        },
        {
            priority = 1260,
            route = {
                { y = 0.53, mapID = 1426, label = "Grif Wildheart", x = 0.458, offMapText = "Travel to Grif Wildheart in Dun Morogh." },
            },
            dependsOn = { "turnin-6085-taming-the-beast", "turnin-6084-taming-the-beast" },
            id = "accept-6086-training-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-6086-training-the-beast",
        },
        {
            priority = 1270,
            route = {
                { y = 0.854, mapID = 1455, label = "Belia Thundergranite", x = 0.708, offMapText = "Travel to Belia Thundergranite in Ironforge." },
            },
            dependsOn = { "accept-6086-training-the-beast" },
            id = "turnin-6086-training-the-beast",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6086-training-the-beast",
        },
        {
            id = "level-before-accept-8151-the-hunters-charm",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8151,
            priority = 1280,
        },
        {
            priority = 1290,
            route = {
                { y = 0.15, mapID = 1453, label = "Ulfir Ironbeard", x = 0.62, offMapText = "Travel to Ulfir Ironbeard in Stormwind City." },
            },
            id = "accept-8151-the-hunters-charm",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8151-the-hunters-charm",
        },
        {
            id = "level-before-accept-8151-the-hunters-charm-horde",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8151,
            priority = 1300,
        },
        {
            priority = 1310,
            route = {
                { y = 0.182, mapID = 1454, label = "Ormak Grimshot", x = 0.662, offMapText = "Travel to Ormak Grimshot in Orgrimmar." },
            },
            id = "accept-8151-the-hunters-charm-horde",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8151-the-hunters-charm-horde",
        },
        {
            id = "level-before-turnin-8151-the-hunters-charm",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            checkpointQuest = 8151,
            priority = 1320,
        },
        {
            priority = 1330,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "accept-8151-the-hunters-charm", "accept-8151-the-hunters-charm-horde" },
            id = "turnin-8151-the-hunters-charm",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8151-the-hunters-charm",
        },
        {
            priority = 1340,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "turnin-8151-the-hunters-charm" },
            id = "accept-8153-courser-antlers",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8153-courser-antlers",
        },
        {
            priority = 1350,
            route = {
                { y = 0.692, mapID = 1447, label = "Mosshoof Courser", x = 0.378, offMapText = "Travel to Mosshoof Courser in Azshara." },
            },
            dependsOn = { "accept-8153-courser-antlers" },
            id = "objective-8153-courser-antlers",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8153-courser-antlers",
        },
        {
            priority = 1360,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "accept-8153-courser-antlers", "objective-8153-courser-antlers" },
            id = "turnin-8153-courser-antlers",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8153-courser-antlers",
        },
        {
            priority = 1370,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "turnin-8153-courser-antlers", "turnin-8151-the-hunters-charm" },
            id = "accept-8231-wavethrashing",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8231-wavethrashing",
        },
        {
            priority = 1380,
            route = {
                { y = 0.086, mapID = 1447, label = "Young Wavethrasher", x = 0.654, offMapText = "Travel to Young Wavethrasher in Azshara." },
                { y = 0.346, mapID = 1447, label = "Wavethrasher", x = 0.712, offMapText = "Travel to Wavethrasher in Azshara." },
                { y = 0.722, mapID = 1447, label = "Great Wavethrasher", x = 0.558, offMapText = "Travel to Great Wavethrasher in Azshara." },
            },
            dependsOn = { "accept-8231-wavethrashing" },
            id = "objective-8231-wavethrashing",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8231-wavethrashing",
        },
        {
            priority = 1390,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "accept-8231-wavethrashing", "objective-8231-wavethrashing" },
            id = "turnin-8231-wavethrashing",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8231-wavethrashing",
        },
        {
            id = "loot-starter-before-accept-7632-the-ancient-leaf",
            instructionOnly = true,
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 1400,
            classAction = "loot-starter-before-accept-7632-the-ancient-leaf",
        },
        {
            id = "level-before-accept-7632-the-ancient-leaf",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
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
            checkpointQuest = 7632,
            priority = 1410,
        },
        {
            priority = 1420,
            id = "accept-7632-the-ancient-leaf",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
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
            priority = 1430,
            route = {
                { y = 0.242, mapID = 1448, label = "Vartrus the Ancient", x = 0.488, offMapText = "Travel to Vartrus the Ancient in Felwood." },
            },
            dependsOn = { "accept-7632-the-ancient-leaf" },
            id = "turnin-7632-the-ancient-leaf",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7632-the-ancient-leaf",
        },
        {
            priority = 1440,
            route = {
                { y = 0.242, mapID = 1448, label = "Vartrus the Ancient", x = 0.488, offMapText = "Travel to Vartrus the Ancient in Felwood." },
            },
            dependsOn = { "turnin-7632-the-ancient-leaf" },
            id = "accept-7633-an-introduction",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7633-an-introduction",
        },
        {
            priority = 1450,
            route = {
                { y = 0.242, mapID = 1448, label = "Vartrus the Ancient", x = 0.488, offMapText = "Travel to Vartrus the Ancient in Felwood." },
            },
            dependsOn = { "accept-7633-an-introduction" },
            id = "turnin-7633-an-introduction",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7633-an-introduction",
        },
        {
            priority = 1460,
            route = {
                { y = 0.242, mapID = 1448, label = "Vartrus the Ancient", x = 0.488, offMapText = "Travel to Vartrus the Ancient in Felwood." },
            },
            dependsOn = { "turnin-7632-the-ancient-leaf" },
            id = "accept-7636-stave-of-the-ancients",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7636-stave-of-the-ancients",
        },
        {
            priority = 1470,
            id = "objective-7636-quest-work",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-7636-stave-of-the-ancients" },
            classAction = "objective-7636-quest-work",
        },
        {
            priority = 1480,
            route = {
                { y = 0.242, mapID = 1448, label = "Vartrus the Ancient", x = 0.488, offMapText = "Travel to Vartrus the Ancient in Felwood." },
            },
            dependsOn = { "accept-7636-stave-of-the-ancients", "objective-7636-quest-work" },
            id = "turnin-7636-stave-of-the-ancients",
            conditions = {
                all = {
                    { class = 3 },
                    {
                        class = { 3 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7636-stave-of-the-ancients",
        },
    },
    routeMode = "ordered",
})
