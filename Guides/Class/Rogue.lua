local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Rogue",
    category = "Class Quests",
    id = "class-rogue",
    conditions = {
        all = {
            { class = 4 },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
            priority = 10,
            route = {
                { y = 0.4295, mapID = 1429, label = "Deputy Willem", offMapText = "Travel to Deputy Willem in Elwynn Forest.", x = 0.4817 },
            },
            id = "accept-783-a-threat-within",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 1 },
                                    {
                                        race = { 1 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 12,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-783-a-threat-within",
        },
        {
            priority = 20,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            dependsOn = { "accept-783-a-threat-within" },
            id = "turnin-783-a-threat-within",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 1 },
                                    {
                                        race = { 1 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 13,
            useClientPin = false,
            classAction = "turnin-783-a-threat-within",
        },
        {
            priority = 30,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            id = "accept-7-kobold-camp-cleanup",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 1 },
                                    {
                                        race = { 1 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 13,
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7-kobold-camp-cleanup",
        },
        {
            priority = 40,
            route = {
                { y = 0.376, mapID = 1429, label = "Kobold Vermin", offMapText = "Travel to Kobold Vermin.", x = 0.48 },
            },
            dependsOn = { "accept-7-kobold-camp-cleanup" },
            id = "objective-7-1-kobold-vermin",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 1 },
                                    {
                                        race = { 1 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 18,
            useClientPin = false,
            classAction = "objective-7-1-kobold-vermin",
        },
        {
            priority = 50,
            route = {
                { y = 0.4161, mapID = 1429, label = "Marshal McBride", offMapText = "Travel to Marshal McBride in Elwynn Forest.", x = 0.4892 },
            },
            dependsOn = { "accept-7-kobold-camp-cleanup", "objective-7-1-kobold-vermin" },
            id = "turnin-7-kobold-camp-cleanup",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 1 },
                                    {
                                        race = { 1 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 20,
            useClientPin = false,
            classAction = "turnin-7-kobold-camp-cleanup",
        },
        {
            priority = 60,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "accept-3102-encrypted-letter",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3102-encrypted-letter",
        },
        {
            priority = 70,
            route = {
                { y = 0.398, mapID = 1429, label = "Jorik Kerridan", x = 0.504, offMapText = "Travel to Jorik Kerridan in Elwynn Forest." },
            },
            dependsOn = { "accept-3102-encrypted-letter" },
            id = "turnin-3102-encrypted-letter",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3102-encrypted-letter",
        },
        {
            priority = 80,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
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
                    { class = 4 },
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
            priority = 90,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
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
                    { class = 4 },
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
            priority = 100,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
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
                    { class = 4 },
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
            priority = 110,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-3083-encrypted-tablet",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-3083-encrypted-tablet",
        },
        {
            priority = 120,
            route = {
                { y = 0.68, mapID = 1411, label = "Rwag", x = 0.412, offMapText = "Travel to Rwag in Durotar." },
            },
            dependsOn = { "accept-3083-encrypted-tablet" },
            id = "turnin-3083-encrypted-tablet",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-3083-encrypted-tablet",
        },
        {
            priority = 130,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-3088-encrypted-parchment",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-3088-encrypted-parchment",
        },
        {
            priority = 140,
            route = {
                { y = 0.68, mapID = 1411, label = "Rwag", x = 0.412, offMapText = "Travel to Rwag in Durotar." },
            },
            dependsOn = { "accept-3088-encrypted-parchment" },
            id = "turnin-3088-encrypted-parchment",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-3088-encrypted-parchment",
        },
        {
            route = {
                { y = 0.234, mapID = 2521, label = "Ailee Farheart", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            priority = 150,
            id = "accept-coming-of-age",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
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
            priority = 160,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-coming-of-age",
        },
        {
            priority = 170,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
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
            priority = 180,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-92461-harmony-in-balance",
        },
        {
            priority = 190,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92461-harmony-in-balance",
        },
        {
            priority = 200,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 3 },
                                    {
                                        race = { 3 },
                                    },
                                },
                            },
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 7 },
                                    {
                                        race = { 7 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
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
            priority = 210,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 3 },
                                    {
                                        race = { 3 },
                                    },
                                },
                            },
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 7 },
                                    {
                                        race = { 7 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
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
            priority = 220,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 3 },
                                    {
                                        race = { 3 },
                                    },
                                },
                            },
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 7 },
                                    {
                                        race = { 7 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
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
            priority = 230,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "accept-3109-encrypted-rune",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-3109-encrypted-rune",
        },
        {
            priority = 240,
            route = {
                { y = 0.674, mapID = 1426, label = "Solm Hargrin", x = 0.284, offMapText = "Travel to Solm Hargrin in Dun Morogh." },
            },
            dependsOn = { "accept-3109-encrypted-rune" },
            id = "turnin-3109-encrypted-rune",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-3109-encrypted-rune",
        },
        {
            priority = 250,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "accept-3113-encrypted-memorandum",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3113-encrypted-memorandum",
        },
        {
            priority = 260,
            route = {
                { y = 0.674, mapID = 1426, label = "Solm Hargrin", x = 0.284, offMapText = "Travel to Solm Hargrin in Dun Morogh." },
            },
            dependsOn = { "accept-3113-encrypted-memorandum" },
            id = "turnin-3113-encrypted-memorandum",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3113-encrypted-memorandum",
        },
        {
            priority = 270,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
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
                    { class = 4 },
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
            priority = 280,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
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
                    { class = 4 },
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
            priority = 290,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
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
                    { class = 4 },
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
            priority = 300,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
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
                    { class = 4 },
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
            priority = 310,
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
                                    { class = 4 },
                                    {
                                        class = { 4 },
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
                    { class = 4 },
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
            priority = 320,
            route = {
                { y = 0.442, mapID = 1438, label = "Conservator Ilthalaine", x = 0.586, offMapText = "Travel to Conservator Ilthalaine in Teldrassil." },
            },
            id = "accept-3118-encrypted-sigil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-3118-encrypted-sigil",
        },
        {
            priority = 330,
            route = {
                { y = 0.386, mapID = 1438, label = "Frahun Shadewhisper", x = 0.596, offMapText = "Travel to Frahun Shadewhisper in Teldrassil." },
            },
            dependsOn = { "accept-3118-encrypted-sigil" },
            id = "turnin-3118-encrypted-sigil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-3118-encrypted-sigil",
        },
        {
            priority = 340,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            id = "accept-364-the-mindless-ones",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Horde" },
                                    { race = 5 },
                                    {
                                        race = { 5 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
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
            classAction = "accept-364-the-mindless-ones",
        },
        {
            priority = 350,
            route = {
                { mapID = 1420, x = 0.326, y = 0.634, label = "Mindless Zombie", offMapText = "Travel to Mindless Zombie." },
            },
            id = "objective-364-1-duskbat",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Horde" },
                                    { race = 5 },
                                    {
                                        race = { 5 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
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
            dependsOn = { "accept-364-the-mindless-ones" },
            classAction = "objective-364-1-duskbat",
        },
        {
            id = "objective-364-2-wretched-zombie",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Horde" },
                                    { race = 5 },
                                    {
                                        race = { 5 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
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
                { mapID = 1420, x = 0.326, y = 0.634, label = "Wretched Zombie", offMapText = "Travel to Wretched Zombie." },
            },
            sourceStep = 13,
            priority = 360,
            useClientPin = false,
            dependsOn = { "accept-364-the-mindless-ones" },
            classAction = "objective-364-2-wretched-zombie",
        },
        {
            priority = 370,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades.", x = 0.3084 },
            },
            dependsOn = { "accept-364-the-mindless-ones", "objective-364-1-duskbat", "objective-364-2-wretched-zombie" },
            id = "turnin-364-the-mindless-ones",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 4 },
                                    {
                                        class = { 4 },
                                    },
                                    { faction = "Horde" },
                                    { race = 5 },
                                    {
                                        race = { 5 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 4 },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 14,
            useClientPin = false,
            classAction = "turnin-364-the-mindless-ones",
        },
        {
            priority = 380,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", x = 0.308, offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades." },
            },
            id = "accept-3096-encrypted-scroll",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-3096-encrypted-scroll",
        },
        {
            priority = 390,
            route = {
                { y = 0.656, mapID = 1420, label = "David Trias", x = 0.324, offMapText = "Travel to David Trias in Tirisfal Glades." },
            },
            dependsOn = { "accept-3096-encrypted-scroll" },
            id = "turnin-3096-encrypted-scroll",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-3096-encrypted-scroll",
        },
        {
            id = "level-before-accept-92483-at-home-in-the-shadows",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            checkpointQuest = 92483,
            priority = 400,
        },
        {
            priority = 410,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-92483-at-home-in-the-shadows",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-92483-at-home-in-the-shadows",
        },
        {
            priority = 420,
            route = {
                { y = 0.242, mapID = 2521, label = "Akeri Duskblade", x = 0.436, offMapText = "Travel to Akeri Duskblade in Zephras Isle." },
            },
            dependsOn = { "accept-92483-at-home-in-the-shadows" },
            id = "turnin-92483-at-home-in-the-shadows",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-92483-at-home-in-the-shadows",
        },
        {
            id = "level-before-accept-2218-road-to-salvation",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            checkpointQuest = 2218,
            priority = 430,
        },
        {
            priority = 440,
            route = {
                { y = 0.526, mapID = 1426, label = "Hogral Bakkan", x = 0.476, offMapText = "Travel to Hogral Bakkan in Dun Morogh." },
            },
            id = "accept-2218-road-to-salvation",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2218-road-to-salvation",
        },
        {
            priority = 450,
            route = {
                { y = 0.148, mapID = 1455, label = "Hulfdan Blackbeard", x = 0.516, offMapText = "Travel to Hulfdan Blackbeard in Ironforge." },
            },
            dependsOn = { "accept-2218-road-to-salvation" },
            id = "turnin-2218-road-to-salvation",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2218-road-to-salvation",
        },
        {
            priority = 460,
            route = {
                { y = 0.148, mapID = 1455, label = "Hulfdan Blackbeard", x = 0.516, offMapText = "Travel to Hulfdan Blackbeard in Ironforge." },
            },
            dependsOn = { "turnin-2218-road-to-salvation" },
            id = "accept-2238-simple-subterfugin",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2238-simple-subterfugin",
        },
        {
            priority = 470,
            route = {
                { y = 0.444, mapID = 1426, label = "Onin MacHammar", x = 0.252, offMapText = "Travel to Onin MacHammar in Dun Morogh." },
            },
            dependsOn = { "accept-2238-simple-subterfugin" },
            id = "turnin-2238-simple-subterfugin",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2238-simple-subterfugin",
        },
        {
            priority = 480,
            route = {
                { y = 0.444, mapID = 1426, label = "Onin MacHammar", x = 0.252, offMapText = "Travel to Onin MacHammar in Dun Morogh." },
            },
            dependsOn = { "turnin-2238-simple-subterfugin" },
            id = "accept-2239-onins-report",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2239-onins-report",
        },
        {
            priority = 490,
            route = {
                { y = 0.148, mapID = 1455, label = "Hulfdan Blackbeard", x = 0.516, offMapText = "Travel to Hulfdan Blackbeard in Ironforge." },
            },
            dependsOn = { "accept-2239-onins-report" },
            id = "turnin-2239-onins-report",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2239-onins-report",
        },
        {
            id = "level-before-accept-1859-therzok",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    { race = 2 },
                    {
                        race = { 2 },
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
            checkpointQuest = 1859,
            alternativeQuests = { 1885 },
            priority = 500,
        },
        {
            priority = 510,
            route = {
                { y = 0.436, mapID = 1411, label = "Kaplak", x = 0.52, offMapText = "Travel to Kaplak in Durotar." },
            },
            id = "accept-1859-therzok",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 2 },
                    {
                        race = { 2 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1859-therzok",
        },
        {
            priority = 520,
            route = {
                { y = 0.534, mapID = 1454, label = "Therzok", x = 0.428, offMapText = "Travel to Therzok in Orgrimmar." },
            },
            dependsOn = { "accept-1859-therzok" },
            id = "turnin-1859-therzok",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 2 },
                    {
                        race = { 2 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1859-therzok",
        },
        {
            id = "level-before-accept-1885-mennet-carkad",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
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
            checkpointQuest = 1885,
            alternativeQuests = { 1859 },
            priority = 530,
        },
        {
            priority = 540,
            route = {
                { y = 0.52, mapID = 1420, label = "Marion Call", x = 0.616, offMapText = "Travel to Marion Call in Tirisfal Glades." },
            },
            id = "accept-1885-mennet-carkad",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1885-mennet-carkad",
        },
        {
            priority = 550,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = { "accept-1885-mennet-carkad" },
            id = "turnin-1885-mennet-carkad",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1885-mennet-carkad",
        },
        {
            priority = 560,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = { "turnin-1885-mennet-carkad" },
            id = "accept-1886-the-deathstalkers",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1886-the-deathstalkers",
        },
        {
            priority = 570,
            id = "objective-1886-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1886-the-deathstalkers" },
            classAction = "objective-1886-quest-work",
        },
        {
            priority = 580,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = { "accept-1886-the-deathstalkers", "objective-1886-quest-work" },
            id = "turnin-1886-the-deathstalkers",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1886-the-deathstalkers",
        },
        {
            priority = 590,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = { "turnin-1886-the-deathstalkers" },
            id = "accept-1898-the-deathstalkers",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1898-the-deathstalkers",
        },
        {
            priority = 600,
            route = {
                { y = 0.756, mapID = 1458, label = "Andron Gant", x = 0.546, offMapText = "Travel to Andron Gant in Undercity." },
            },
            dependsOn = { "accept-1898-the-deathstalkers" },
            id = "turnin-1898-the-deathstalkers",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1898-the-deathstalkers",
        },
        {
            priority = 610,
            route = {
                { y = 0.756, mapID = 1458, label = "Andron Gant", x = 0.546, offMapText = "Travel to Andron Gant in Undercity." },
            },
            dependsOn = { "turnin-1898-the-deathstalkers" },
            id = "accept-1899-the-deathstalkers",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1899-the-deathstalkers",
        },
        {
            priority = 620,
            route = {
                { mapID = 1458, x = 0.5542, y = 0.7705, label = "Andron's Ledger", offMapText = "Travel to Andron's Ledger." },
            },
            id = "objective-1899-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-1899-the-deathstalkers" },
            classAction = "objective-1899-quest-work",
        },
        {
            priority = 630,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = { "accept-1899-the-deathstalkers", "objective-1899-quest-work" },
            id = "turnin-1899-the-deathstalkers",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1899-the-deathstalkers",
        },
        {
            id = "level-before-accept-1963-the-shattered-hand",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            checkpointQuest = 1963,
            priority = 640,
        },
        {
            priority = 650,
            route = {
                { y = 0.534, mapID = 1454, label = "Therzok", x = 0.428, offMapText = "Travel to Therzok in Orgrimmar." },
            },
            dependsOn = { "turnin-1859-therzok" },
            id = "accept-1963-the-shattered-hand",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-1963-the-shattered-hand",
        },
        {
            priority = 660,
            route = {
                { mapID = 1413, x = 0.6459999999999999, y = 0.44, label = "Tazan's Satchel", offMapText = "Travel to Tazan's Satchel." },
            },
            id = "objective-1963-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            dependsOn = { "accept-1963-the-shattered-hand" },
            classAction = "objective-1963-quest-work",
        },
        {
            priority = 670,
            route = {
                { y = 0.534, mapID = 1454, label = "Therzok", x = 0.428, offMapText = "Travel to Therzok in Orgrimmar." },
            },
            dependsOn = { "accept-1963-the-shattered-hand", "objective-1963-quest-work" },
            id = "turnin-1963-the-shattered-hand",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-1963-the-shattered-hand",
        },
        {
            priority = 680,
            route = {
                { y = 0.534, mapID = 1454, label = "Therzok", x = 0.428, offMapText = "Travel to Therzok in Orgrimmar." },
            },
            dependsOn = { "turnin-1963-the-shattered-hand" },
            id = "accept-1858-the-shattered-hand",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-1858-the-shattered-hand",
        },
        {
            priority = 690,
            route = {
                { y = 0.682, mapID = 1454, label = "Gamon", x = 0.542, offMapText = "Travel to Gamon in Orgrimmar." },
            },
            dependsOn = { "accept-1858-the-shattered-hand" },
            id = "objective-1858-the-shattered-hand",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "objective-1858-the-shattered-hand",
        },
        {
            priority = 700,
            route = {
                { y = 0.534, mapID = 1454, label = "Therzok", x = 0.428, offMapText = "Travel to Therzok in Orgrimmar." },
            },
            dependsOn = { "accept-1858-the-shattered-hand", "objective-1858-the-shattered-hand" },
            id = "turnin-1858-the-shattered-hand",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-1858-the-shattered-hand",
        },
        {
            priority = 710,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = { "turnin-1899-the-deathstalkers" },
            id = "accept-1978-the-deathstalkers",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1978-the-deathstalkers",
        },
        {
            priority = 720,
            route = {
                { y = 0.926, mapID = 1458, label = "Varimathras", x = 0.562, offMapText = "Travel to Varimathras in Undercity." },
            },
            dependsOn = { "accept-1978-the-deathstalkers" },
            id = "turnin-1978-the-deathstalkers",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1978-the-deathstalkers",
        },
        {
            priority = 730,
            route = {
                { y = 0.658, mapID = 1429, label = "Keryn Sylvius", x = 0.438, offMapText = "Travel to Keryn Sylvius in Elwynn Forest." },
            },
            id = "accept-2205-seek-out-si-7",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2205-seek-out-si-7",
        },
        {
            priority = 740,
            route = {
                { y = 0.598, mapID = 1453, label = "Master Mathias Shaw", x = 0.758, offMapText = "Travel to Master Mathias Shaw in Stormwind City." },
            },
            dependsOn = { "accept-2205-seek-out-si-7" },
            id = "turnin-2205-seek-out-si-7",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2205-seek-out-si-7",
        },
        {
            priority = 750,
            route = {
                { y = 0.598, mapID = 1453, label = "Master Mathias Shaw", x = 0.758, offMapText = "Travel to Master Mathias Shaw in Stormwind City." },
            },
            id = "accept-2206-snatch-and-grab",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2206-snatch-and-grab",
        },
        {
            priority = 760,
            id = "objective-2206-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            dependsOn = { "accept-2206-snatch-and-grab" },
            classAction = "objective-2206-quest-work",
        },
        {
            priority = 770,
            route = {
                { y = 0.598, mapID = 1453, label = "Master Mathias Shaw", x = 0.758, offMapText = "Travel to Master Mathias Shaw in Stormwind City." },
            },
            dependsOn = { "accept-2206-snatch-and-grab", "objective-2206-quest-work" },
            id = "turnin-2206-snatch-and-grab",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2206-snatch-and-grab",
        },
        {
            priority = 780,
            route = {
                { y = 0.6, mapID = 1438, label = "Jannok Breezesong", x = 0.562, offMapText = "Travel to Jannok Breezesong in Teldrassil." },
            },
            id = "accept-2241-the-apple-falls",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2241-the-apple-falls",
        },
        {
            priority = 790,
            route = {
                { y = 0.218, mapID = 1457, label = "Syurna", x = 0.368, offMapText = "Travel to Syurna in Darnassus." },
            },
            dependsOn = { "accept-2241-the-apple-falls" },
            id = "turnin-2241-the-apple-falls",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2241-the-apple-falls",
        },
        {
            priority = 800,
            route = {
                { y = 0.218, mapID = 1457, label = "Syurna", x = 0.368, offMapText = "Travel to Syurna in Darnassus." },
            },
            id = "accept-2242-destiny-calls",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2242-destiny-calls",
        },
        {
            priority = 810,
            route = {
                { mapID = 1438, x = 0.37520000000000003, y = 0.2429, label = "Sethir's Journal", offMapText = "Travel to Sethir's Journal." },
            },
            id = "objective-2242-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            dependsOn = { "accept-2242-destiny-calls" },
            classAction = "objective-2242-quest-work",
        },
        {
            priority = 820,
            route = {
                { y = 0.218, mapID = 1457, label = "Syurna", x = 0.368, offMapText = "Travel to Syurna in Darnassus." },
            },
            dependsOn = { "accept-2242-destiny-calls", "objective-2242-quest-work" },
            id = "turnin-2242-destiny-calls",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2242-destiny-calls",
        },
        {
            id = "level-before-accept-1998-fenwick-thatros",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 16 },
            },
            requiredLevel = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1998,
            priority = 830,
        },
        {
            priority = 840,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            id = "accept-1998-fenwick-thatros",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1998-fenwick-thatros",
        },
        {
            priority = 850,
            id = "objective-1998-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1998-fenwick-thatros" },
            classAction = "objective-1998-quest-work",
        },
        {
            priority = 860,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = { "accept-1998-fenwick-thatros", "objective-1998-quest-work" },
            id = "turnin-1998-fenwick-thatros",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1998-fenwick-thatros",
        },
        {
            priority = 870,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = { "turnin-1998-fenwick-thatros" },
            id = "accept-1999-tools-of-the-trade",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1999-tools-of-the-trade",
        },
        {
            priority = 880,
            id = "objective-1999-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1999-tools-of-the-trade" },
            classAction = "objective-1999-quest-work",
        },
        {
            priority = 890,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            dependsOn = { "accept-1999-tools-of-the-trade", "objective-1999-quest-work" },
            id = "turnin-1999-tools-of-the-trade",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1999-tools-of-the-trade",
        },
        {
            id = "level-before-accept-2259-erion-shadewhisper",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 16 },
            },
            requiredLevel = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2259,
            priority = 900,
        },
        {
            priority = 910,
            route = {
                { y = 0.6, mapID = 1438, label = "Jannok Breezesong", x = 0.562, offMapText = "Travel to Jannok Breezesong in Teldrassil." },
            },
            id = "accept-2259-erion-shadewhisper",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2259-erion-shadewhisper",
        },
        {
            priority = 920,
            route = {
                { y = 0.256, mapID = 1457, label = "Erion Shadewhisper", x = 0.346, offMapText = "Travel to Erion Shadewhisper in Darnassus." },
            },
            dependsOn = { "accept-2259-erion-shadewhisper" },
            id = "turnin-2259-erion-shadewhisper",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2259-erion-shadewhisper",
        },
        {
            priority = 930,
            route = {
                { y = 0.256, mapID = 1457, label = "Erion Shadewhisper", x = 0.346, offMapText = "Travel to Erion Shadewhisper in Darnassus." },
            },
            dependsOn = { "turnin-2259-erion-shadewhisper" },
            id = "accept-2260-erions-behest",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2260-erions-behest",
        },
        {
            priority = 940,
            route = {
                { y = 0.602, mapID = 1453, label = "Renzik \"The Shiv\"", x = 0.758, offMapText = "Travel to Renzik \"The Shiv\" in Stormwind City." },
            },
            dependsOn = { "accept-2260-erions-behest" },
            id = "turnin-2260-erions-behest",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2260-erions-behest",
        },
        {
            priority = 950,
            route = {
                { y = 0.602, mapID = 1453, label = "Renzik \"The Shiv\"", x = 0.758, offMapText = "Travel to Renzik \"The Shiv\" in Stormwind City." },
            },
            id = "accept-2281-redridge-rendezvous",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2281-redridge-rendezvous",
        },
        {
            priority = 960,
            route = {
                { y = 0.522, mapID = 1433, label = "Lucius", x = 0.282, offMapText = "Travel to Lucius in Redridge Mountains." },
            },
            dependsOn = { "accept-2281-redridge-rendezvous" },
            id = "turnin-2281-redridge-rendezvous",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2281-redridge-rendezvous",
        },
        {
            priority = 970,
            route = {
                { y = 0.522, mapID = 1433, label = "Lucius", x = 0.282, offMapText = "Travel to Lucius in Redridge Mountains." },
            },
            dependsOn = { "turnin-2281-redridge-rendezvous" },
            id = "accept-2282-althers-mill",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2282-althers-mill",
        },
        {
            priority = 980,
            route = {
                { mapID = 1433, x = 0.5204, y = 0.44689999999999996, label = "Token of Thievery", offMapText = "Travel to Token of Thievery." },
            },
            id = "objective-2282-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-2282-althers-mill" },
            classAction = "objective-2282-quest-work",
        },
        {
            priority = 990,
            route = {
                { y = 0.522, mapID = 1433, label = "Lucius", x = 0.282, offMapText = "Travel to Lucius in Redridge Mountains." },
            },
            dependsOn = { "accept-2282-althers-mill", "objective-2282-quest-work" },
            id = "turnin-2282-althers-mill",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2282-althers-mill",
        },
        {
            priority = 1000,
            route = {
                { y = 0.526, mapID = 1426, label = "Hogral Bakkan", x = 0.476, offMapText = "Travel to Hogral Bakkan in Dun Morogh." },
            },
            id = "accept-2299-to-hulfdan",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2299-to-hulfdan",
        },
        {
            priority = 1010,
            route = {
                { y = 0.148, mapID = 1455, label = "Hulfdan Blackbeard", x = 0.516, offMapText = "Travel to Hulfdan Blackbeard in Ironforge." },
            },
            dependsOn = { "accept-2299-to-hulfdan" },
            id = "turnin-2299-to-hulfdan",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2299-to-hulfdan",
        },
        {
            priority = 1020,
            route = {
                { y = 0.148, mapID = 1455, label = "Hulfdan Blackbeard", x = 0.516, offMapText = "Travel to Hulfdan Blackbeard in Ironforge." },
            },
            dependsOn = { "turnin-2299-to-hulfdan" },
            id = "accept-2298-kingly-shakedown",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2298-kingly-shakedown",
        },
        {
            priority = 1030,
            route = {
                { y = 0.602, mapID = 1453, label = "Renzik \"The Shiv\"", x = 0.758, offMapText = "Travel to Renzik \"The Shiv\" in Stormwind City." },
            },
            dependsOn = { "accept-2298-kingly-shakedown" },
            id = "turnin-2298-kingly-shakedown",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2298-kingly-shakedown",
        },
        {
            priority = 1040,
            route = {
                { y = 0.658, mapID = 1429, label = "Keryn Sylvius", x = 0.438, offMapText = "Travel to Keryn Sylvius in Elwynn Forest." },
            },
            id = "accept-2300-si-7",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2300-si-7",
        },
        {
            priority = 1050,
            route = {
                { y = 0.602, mapID = 1453, label = "Renzik \"The Shiv\"", x = 0.758, offMapText = "Travel to Renzik \"The Shiv\" in Stormwind City." },
            },
            dependsOn = { "accept-2300-si-7" },
            id = "turnin-2300-si-7",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2300-si-7",
        },
        {
            id = "level-before-accept-2378-find-the-shattered-hand",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            complete = {
                level = { min = 16 },
            },
            requiredLevel = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2378,
            alternativeQuests = { 2380 },
            priority = 1060,
        },
        {
            priority = 1070,
            route = {
                { y = 0.69, mapID = 1458, label = "Mennet Carkad", x = 0.832, offMapText = "Travel to Mennet Carkad in Undercity." },
            },
            id = "accept-2378-find-the-shattered-hand",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2378-find-the-shattered-hand",
        },
        {
            priority = 1080,
            route = {
                { y = 0.534, mapID = 1454, label = "Shenthul", x = 0.43, offMapText = "Travel to Shenthul in Orgrimmar." },
            },
            dependsOn = { "accept-2378-find-the-shattered-hand" },
            id = "turnin-2378-find-the-shattered-hand",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2378-find-the-shattered-hand",
        },
        {
            id = "level-before-accept-2380-to-orgrimmar",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 16 },
            },
            requiredLevel = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2380,
            alternativeQuests = { 2378 },
            priority = 1090,
        },
        {
            priority = 1100,
            route = {
                { y = 0.436, mapID = 1411, label = "Kaplak", x = 0.52, offMapText = "Travel to Kaplak in Durotar." },
            },
            dependsOn = { "turnin-2378-find-the-shattered-hand" },
            id = "accept-2380-to-orgrimmar",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2380-to-orgrimmar",
        },
        {
            priority = 1110,
            route = {
                { y = 0.534, mapID = 1454, label = "Shenthul", x = 0.43, offMapText = "Travel to Shenthul in Orgrimmar." },
            },
            dependsOn = { "accept-2380-to-orgrimmar" },
            id = "turnin-2380-to-orgrimmar",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2380-to-orgrimmar",
        },
        {
            priority = 1120,
            route = {
                { y = 0.534, mapID = 1454, label = "Shenthul", x = 0.43, offMapText = "Travel to Shenthul in Orgrimmar." },
            },
            dependsOn = { "turnin-2380-to-orgrimmar" },
            id = "accept-2379-zandozan",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2379-zandozan",
        },
        {
            priority = 1130,
            route = {
                { y = 0.53, mapID = 1454, label = "Zando'zan", x = 0.428, offMapText = "Travel to Zando'zan in Orgrimmar." },
            },
            dependsOn = { "accept-2379-zandozan" },
            id = "turnin-2379-zandozan",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2379-zandozan",
        },
        {
            priority = 1140,
            route = {
                { y = 0.53, mapID = 1454, label = "Zando'zan", x = 0.428, offMapText = "Travel to Zando'zan in Orgrimmar." },
            },
            dependsOn = { "turnin-2379-zandozan" },
            id = "accept-2382-wrenix-of-ratchet",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2382-wrenix-of-ratchet",
        },
        {
            priority = 1150,
            route = {
                { y = 0.364, mapID = 1413, label = "Wrenix the Wretched", x = 0.63, offMapText = "Travel to Wrenix the Wretched in The Barrens." },
            },
            dependsOn = { "accept-2382-wrenix-of-ratchet" },
            id = "turnin-2382-wrenix-of-ratchet",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2382-wrenix-of-ratchet",
        },
        {
            priority = 1160,
            route = {
                { y = 0.364, mapID = 1413, label = "Wrenix the Wretched", x = 0.63, offMapText = "Travel to Wrenix the Wretched in The Barrens." },
            },
            dependsOn = { "turnin-2382-wrenix-of-ratchet" },
            id = "accept-2381-plundering-the-plunderers",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2381-plundering-the-plunderers",
        },
        {
            priority = 1170,
            route = {
                { y = 0.454, mapID = 1413, label = "Polly", x = 0.648, offMapText = "Travel to Polly in The Barrens." },
            },
            dependsOn = { "accept-2381-plundering-the-plunderers" },
            id = "objective-2381-plundering-the-plunderers",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-2381-plundering-the-plunderers",
        },
        {
            priority = 1180,
            route = {
                { y = 0.364, mapID = 1413, label = "Wrenix the Wretched", x = 0.63, offMapText = "Travel to Wrenix the Wretched in The Barrens." },
            },
            dependsOn = { "accept-2381-plundering-the-plunderers", "objective-2381-plundering-the-plunderers" },
            id = "turnin-2381-plundering-the-plunderers",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2381-plundering-the-plunderers",
        },
        {
            id = "level-before-accept-2360-mathias-and-the-defias",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            checkpointQuest = 2360,
            priority = 1190,
        },
        {
            priority = 1200,
            route = {
                { y = 0.598, mapID = 1453, label = "Master Mathias Shaw", x = 0.758, offMapText = "Travel to Master Mathias Shaw in Stormwind City." },
            },
            id = "accept-2360-mathias-and-the-defias",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2360-mathias-and-the-defias",
        },
        {
            priority = 1210,
            route = {
                { y = 0.7, mapID = 1436, label = "Agent Kearnen", x = 0.684, offMapText = "Travel to Agent Kearnen in Westfall." },
            },
            dependsOn = { "accept-2360-mathias-and-the-defias" },
            id = "turnin-2360-mathias-and-the-defias",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2360-mathias-and-the-defias",
        },
        {
            priority = 1220,
            route = {
                { y = 0.7, mapID = 1436, label = "Agent Kearnen", x = 0.684, offMapText = "Travel to Agent Kearnen in Westfall." },
            },
            dependsOn = { "turnin-2360-mathias-and-the-defias" },
            id = "accept-2359-klavens-tower",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2359-klavens-tower",
        },
        {
            priority = 1230,
            dependsOn = { "accept-2359-klavens-tower" },
            id = "objective-2359-klavens-tower",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "objective-2359-klavens-tower",
        },
        {
            priority = 1240,
            route = {
                { y = 0.598, mapID = 1453, label = "Master Mathias Shaw", x = 0.758, offMapText = "Travel to Master Mathias Shaw in Stormwind City." },
            },
            dependsOn = { "accept-2359-klavens-tower", "objective-2359-klavens-tower" },
            id = "turnin-2359-klavens-tower",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2359-klavens-tower",
        },
        {
            priority = 1250,
            route = {
                { y = 0.598, mapID = 1453, label = "Master Mathias Shaw", x = 0.758, offMapText = "Travel to Master Mathias Shaw in Stormwind City." },
            },
            dependsOn = { "turnin-2359-klavens-tower" },
            id = "accept-2607-the-touch-of-zanzil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2607-the-touch-of-zanzil",
        },
        {
            priority = 1260,
            route = {
                { y = 0.59, mapID = 1453, label = "Doc Mixilpixil", x = 0.78, offMapText = "Travel to Doc Mixilpixil in Stormwind City." },
            },
            dependsOn = { "accept-2607-the-touch-of-zanzil" },
            id = "turnin-2607-the-touch-of-zanzil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2607-the-touch-of-zanzil",
        },
        {
            priority = 1270,
            route = {
                { y = 0.59, mapID = 1453, label = "Doc Mixilpixil", x = 0.78, offMapText = "Travel to Doc Mixilpixil in Stormwind City." },
            },
            dependsOn = { "turnin-2607-the-touch-of-zanzil" },
            id = "accept-2608-the-touch-of-zanzil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2608-the-touch-of-zanzil",
        },
        {
            priority = 1280,
            dependsOn = { "accept-2608-the-touch-of-zanzil" },
            id = "objective-2608-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "objective-2608-reviewed-mechanics",
        },
        {
            priority = 1290,
            route = {
                { y = 0.59, mapID = 1453, label = "Doc Mixilpixil", x = 0.78, offMapText = "Travel to Doc Mixilpixil in Stormwind City." },
            },
            dependsOn = { "accept-2608-the-touch-of-zanzil", "objective-2608-reviewed-mechanics" },
            id = "turnin-2608-the-touch-of-zanzil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2608-the-touch-of-zanzil",
        },
        {
            id = "level-before-accept-2460-the-shattered-salute",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
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
            checkpointQuest = 2460,
            priority = 1300,
        },
        {
            priority = 1310,
            route = {
                { y = 0.534, mapID = 1454, label = "Shenthul", x = 0.43, offMapText = "Travel to Shenthul in Orgrimmar." },
            },
            id = "accept-2460-the-shattered-salute",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-2460-the-shattered-salute",
        },
        {
            priority = 1320,
            id = "objective-2460-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-2460-the-shattered-salute" },
            classAction = "objective-2460-quest-work",
        },
        {
            priority = 1330,
            route = {
                { y = 0.534, mapID = 1454, label = "Shenthul", x = 0.43, offMapText = "Travel to Shenthul in Orgrimmar." },
            },
            dependsOn = { "accept-2460-the-shattered-salute", "objective-2460-quest-work" },
            id = "turnin-2460-the-shattered-salute",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2460-the-shattered-salute",
        },
        {
            priority = 1340,
            route = {
                { y = 0.534, mapID = 1454, label = "Shenthul", x = 0.43, offMapText = "Travel to Shenthul in Orgrimmar." },
            },
            dependsOn = { "turnin-2460-the-shattered-salute" },
            id = "accept-2458-deep-cover",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2458-deep-cover",
        },
        {
            priority = 1350,
            dependsOn = { "accept-2458-deep-cover" },
            id = "objective-2458-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-2458-reviewed-mechanics",
        },
        {
            priority = 1360,
            route = {
                { y = 0.056, mapID = 1413, label = "Taskmaster Fizzule", x = 0.554, offMapText = "Travel to Taskmaster Fizzule in The Barrens." },
            },
            dependsOn = { "accept-2458-deep-cover", "objective-2458-reviewed-mechanics" },
            id = "turnin-2458-deep-cover",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2458-deep-cover",
        },
        {
            priority = 1370,
            route = {
                { y = 0.056, mapID = 1413, label = "Taskmaster Fizzule", x = 0.554, offMapText = "Travel to Taskmaster Fizzule in The Barrens." },
            },
            dependsOn = { "turnin-2458-deep-cover" },
            id = "accept-2478-mission-possible-but-not-probable",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2478-mission-possible-but-not-probable",
        },
        {
            priority = 1380,
            dependsOn = { "accept-2478-mission-possible-but-not-probable" },
            id = "objective-2478-mission-possible-but-not-probable",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-2478-mission-possible-but-not-probable",
        },
        {
            priority = 1390,
            route = {
                { y = 0.534, mapID = 1454, label = "Shenthul", x = 0.43, offMapText = "Travel to Shenthul in Orgrimmar." },
            },
            dependsOn = { "accept-2478-mission-possible-but-not-probable", "objective-2478-mission-possible-but-not-probable" },
            id = "turnin-2478-mission-possible-but-not-probable",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2478-mission-possible-but-not-probable",
        },
        {
            priority = 1400,
            route = {
                { y = 0.534, mapID = 1454, label = "Shenthul", x = 0.43, offMapText = "Travel to Shenthul in Orgrimmar." },
            },
            dependsOn = { "turnin-2478-mission-possible-but-not-probable" },
            id = "accept-2479-hinotts-assistance",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2479-hinotts-assistance",
        },
        {
            priority = 1410,
            route = {
                { y = 0.192, mapID = 1424, label = "Serge Hinott", x = 0.616, offMapText = "Travel to Serge Hinott in Hillsbrad Foothills." },
            },
            dependsOn = { "accept-2479-hinotts-assistance" },
            id = "turnin-2479-hinotts-assistance",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2479-hinotts-assistance",
        },
        {
            priority = 1420,
            route = {
                { y = 0.192, mapID = 1424, label = "Serge Hinott", x = 0.616, offMapText = "Travel to Serge Hinott in Hillsbrad Foothills." },
            },
            dependsOn = { "turnin-2479-hinotts-assistance" },
            id = "accept-2480-hinotts-assistance",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-2480-hinotts-assistance",
        },
        {
            priority = 1430,
            dependsOn = { "accept-2480-hinotts-assistance" },
            id = "objective-2480-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-2480-reviewed-mechanics",
        },
        {
            priority = 1440,
            route = {
                { y = 0.192, mapID = 1424, label = "Serge Hinott", x = 0.616, offMapText = "Travel to Serge Hinott in Hillsbrad Foothills." },
            },
            dependsOn = { "accept-2480-hinotts-assistance", "objective-2480-reviewed-mechanics" },
            id = "turnin-2480-hinotts-assistance",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-2480-hinotts-assistance",
        },
        {
            priority = 1450,
            route = {
                { y = 0.59, mapID = 1453, label = "Doc Mixilpixil", x = 0.78, offMapText = "Travel to Doc Mixilpixil in Stormwind City." },
            },
            id = "accept-2609-the-touch-of-zanzil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "accept-2609-the-touch-of-zanzil",
        },
        {
            priority = 1460,
            dependsOn = { "accept-2609-the-touch-of-zanzil" },
            id = "objective-2609-the-touch-of-zanzil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "objective-2609-the-touch-of-zanzil",
        },
        {
            priority = 1470,
            route = {
                { y = 0.59, mapID = 1453, label = "Doc Mixilpixil", x = 0.78, offMapText = "Travel to Doc Mixilpixil in Stormwind City." },
            },
            dependsOn = { "accept-2609-the-touch-of-zanzil", "objective-2609-the-touch-of-zanzil" },
            id = "turnin-2609-the-touch-of-zanzil",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            classAction = "turnin-2609-the-touch-of-zanzil",
        },
        {
            id = "level-before-note-6681-elegant-letter",
            kind = "note",
            text = "Reach level 24 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                class = { 4 },
            },
            complete = {
                level = { min = 24 },
            },
            requiredLevel = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6681,
            priority = 1480,
        },
        {
            id = "note-6681-elegant-letter",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 1490,
            classAction = "note-6681-elegant-letter",
        },
        {
            id = "loot-starter-before-accept-6681-authored-class-prerequisite",
            instructionOnly = true,
            conditions = {
                class = { 4 },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 1500,
            classAction = "loot-starter-before-accept-6681-authored-class-prerequisite",
        },
        {
            id = "accept-6681-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 1510,
            classAction = "accept-6681-authored-class-prerequisite",
        },
        {
            id = "objective-6681-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-6681-authored-class-prerequisite" },
            priority = 1520,
            classAction = "objective-6681-authored-class-prerequisite",
        },
        {
            id = "turnin-6681-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            route = {
                { mapID = 1424, x = 0.8445, y = 0.8032, label = "Fahrad", offMapText = "Travel to Fahrad." },
            },
            dependsOn = { "accept-6681-authored-class-prerequisite", "objective-6681-authored-class-prerequisite" },
            priority = 1530,
            classAction = "turnin-6681-authored-class-prerequisite",
        },
        {
            id = "level-before-accept-6701-syndicate-emblems",
            kind = "note",
            text = "Reach level 24 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                },
            },
            complete = {
                level = { min = 24 },
            },
            requiredLevel = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6701,
            priority = 1540,
        },
        {
            priority = 1550,
            route = {
                {
                    y = 0.2,
                    mapID = 1424,
                    label = "Ravenholdt Guard",
                    x = 0.776,
                    offMapText = "Travel to Ravenholdt Guard in Hillsbrad Foothills.",
                    complete = {
                        map = { 1416 },
                    },
                },
                { y = 0.794, mapID = 1416, label = "Ravenholdt Guard", x = 0.844, offMapText = "Travel to Ravenholdt Guard in Alterac Mountains." },
            },
            id = "accept-6701-syndicate-emblems",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-6701-syndicate-emblems",
        },
        {
            priority = 1560,
            route = {
                {
                    y = 0.414,
                    mapID = 1424,
                    label = "Syndicate Shadow Mage",
                    x = 0.788,
                    offMapText = "Travel to Syndicate Shadow Mage in Hillsbrad Foothills.",
                    complete = {
                        map = { 1416 },
                    },
                },
                {
                    y = 0.408,
                    mapID = 1424,
                    label = "Syndicate Rogue",
                    x = 0.752,
                    offMapText = "Travel to Syndicate Rogue in Hillsbrad Foothills.",
                    complete = {
                        map = { 1416 },
                    },
                },
                {
                    y = 0.44,
                    mapID = 1424,
                    label = "Syndicate Watchman",
                    x = 0.81,
                    offMapText = "Travel to Syndicate Watchman in Hillsbrad Foothills.",
                    complete = {
                        map = { 1416 },
                    },
                },
                { y = 0.656, mapID = 1416, label = "Syndicate Footpad", x = 0.564, offMapText = "Travel to Syndicate Footpad in Alterac Mountains." },
                { y = 0.692, mapID = 1416, label = "Syndicate Thief", x = 0.59, offMapText = "Travel to Syndicate Thief in Alterac Mountains." },
                { y = 0.41, mapID = 1416, label = "Syndicate Spy", x = 0.618, offMapText = "Travel to Syndicate Spy in Alterac Mountains." },
                { y = 0.272, mapID = 1416, label = "Syndicate Sentry", x = 0.562, offMapText = "Travel to Syndicate Sentry in Alterac Mountains." },
                { y = 0.274, mapID = 1416, label = "Syndicate Saboteur", x = 0.562, offMapText = "Travel to Syndicate Saboteur in Alterac Mountains." },
                { y = 0.152, mapID = 1416, label = "Syndicate Assassin", x = 0.392, offMapText = "Travel to Syndicate Assassin in Alterac Mountains." },
                { y = 0.154, mapID = 1416, label = "Syndicate Enforcer", x = 0.392, offMapText = "Travel to Syndicate Enforcer in Alterac Mountains." },
                { y = 0.41, mapID = 1416, label = "Syndicate Wizard", x = 0.618, offMapText = "Travel to Syndicate Wizard in Alterac Mountains." },
                { y = 0.432, mapID = 1416, label = "Gravis Slipknot", x = 0.622, offMapText = "Travel to Gravis Slipknot in Alterac Mountains." },
            },
            dependsOn = { "accept-6701-syndicate-emblems" },
            id = "objective-6701-syndicate-emblems",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-6701-syndicate-emblems",
        },
        {
            priority = 1570,
            route = {
                {
                    y = 0.2,
                    mapID = 1424,
                    label = "Ravenholdt Guard",
                    x = 0.776,
                    offMapText = "Travel to Ravenholdt Guard in Hillsbrad Foothills.",
                    complete = {
                        map = { 1416 },
                    },
                },
                { y = 0.794, mapID = 1416, label = "Ravenholdt Guard", x = 0.844, offMapText = "Travel to Ravenholdt Guard in Alterac Mountains." },
            },
            dependsOn = { "accept-6701-syndicate-emblems", "objective-6701-syndicate-emblems" },
            id = "turnin-6701-syndicate-emblems",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 24 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-6701-syndicate-emblems",
        },
        {
            id = "level-before-accept-8233-a-simple-request",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            checkpointQuest = 8233,
            priority = 1580,
        },
        {
            priority = 1590,
            route = {
                { y = 0.528, mapID = 1453, label = "Osborne the Night Man", x = 0.744, offMapText = "Travel to Osborne the Night Man in Stormwind City." },
            },
            id = "accept-8233-a-simple-request",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8233-a-simple-request",
        },
        {
            id = "level-before-accept-8233-a-simple-request-horde",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            checkpointQuest = 8233,
            priority = 1600,
        },
        {
            priority = 1610,
            route = {
                { y = 0.712, mapID = 1458, label = "Miles Dexter", x = 0.85, offMapText = "Travel to Miles Dexter in Undercity." },
            },
            id = "accept-8233-a-simple-request-horde",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8233-a-simple-request-horde",
        },
        {
            id = "level-before-turnin-8233-a-simple-request",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
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
            checkpointQuest = 8233,
            priority = 1620,
        },
        {
            priority = 1630,
            route = {
                { y = 0.79, mapID = 1416, label = "Lord Jorach Ravenholdt", x = 0.86, offMapText = "Travel to Lord Jorach Ravenholdt in Alterac Mountains." },
            },
            dependsOn = { "accept-8233-a-simple-request", "accept-8233-a-simple-request-horde" },
            id = "turnin-8233-a-simple-request",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8233-a-simple-request",
        },
        {
            priority = 1640,
            route = {
                { y = 0.79, mapID = 1416, label = "Lord Jorach Ravenholdt", x = 0.86, offMapText = "Travel to Lord Jorach Ravenholdt in Alterac Mountains." },
            },
            dependsOn = { "turnin-8233-a-simple-request" },
            id = "accept-8234-sealed-azure-bag",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8234-sealed-azure-bag",
        },
        {
            priority = 1650,
            id = "objective-8234-quest-work",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-8234-sealed-azure-bag" },
            classAction = "objective-8234-quest-work",
        },
        {
            priority = 1660,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "accept-8234-sealed-azure-bag", "objective-8234-quest-work" },
            id = "turnin-8234-sealed-azure-bag",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8234-sealed-azure-bag",
        },
        {
            id = "level-before-travel-3503-xylem-teleport",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { class = 4 },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8235,
            priority = 1670,
        },
        {
            priority = 1680,
            route = {
                { y = 0.5, mapID = 1447, label = "Sanath Lim-yo", x = 0.28, offMapText = "Travel to Sanath Lim-yo in Azshara." },
            },
            id = "travel-3503-xylem-teleport",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        level = { min = 45 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            contextQuest = 8235,
            classAction = "travel-3503-xylem-teleport",
        },
        {
            priority = 1690,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "turnin-8234-sealed-azure-bag" },
            id = "accept-8235-encoded-fragments",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8235-encoded-fragments",
        },
        {
            priority = 1700,
            route = {
                { y = 0.656, mapID = 1447, label = "The Evalcharr", x = 0.184, offMapText = "Travel to The Evalcharr in Azshara." },
                { y = 0.29, mapID = 1447, label = "Forest Ooze", x = 0.714, offMapText = "Travel to Forest Ooze in Azshara." },
            },
            dependsOn = { "accept-8235-encoded-fragments" },
            id = "objective-8235-encoded-fragments",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8235-encoded-fragments",
        },
        {
            priority = 1710,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "accept-8235-encoded-fragments", "objective-8235-encoded-fragments" },
            id = "turnin-8235-encoded-fragments",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        class = { 4 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8235-encoded-fragments",
        },
        {
            priority = 1720,
            route = {
                { y = 0.462, mapID = 1447, label = "Nyrill", x = 0.264, offMapText = "Travel to Nyrill in Azshara." },
            },
            id = "travel-3421-xylem-teleport",
            conditions = {
                all = {
                    { class = 4 },
                    {
                        level = { min = 45 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            contextQuest = 8235,
            classAction = "travel-3421-xylem-teleport",
        },
    },
    routeMode = "ordered",
})
