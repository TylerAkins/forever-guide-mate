local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Priest",
    category = "Class Quests",
    id = "class-priest",
    conditions = {
        all = {
            { class = 5 },
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
            id = "accept-98574-hallowed-memorandum",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-98574-hallowed-memorandum",
        },
        {
            priority = 20,
            route = {
                { y = 0.664, mapID = 1426, label = "Branstock Khalder", x = 0.286, offMapText = "Travel to Branstock Khalder in Dun Morogh." },
            },
            dependsOn = { "accept-98574-hallowed-memorandum" },
            id = "turnin-98574-hallowed-memorandum",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-98574-hallowed-memorandum",
        },
        {
            priority = 30,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 40,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 50,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 60,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 70,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 80,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-3085-hallowed-tablet",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-3085-hallowed-tablet",
        },
        {
            priority = 90,
            route = {
                { y = 0.688, mapID = 1411, label = "Ken'jai", x = 0.424, offMapText = "Travel to Ken'jai in Durotar." },
            },
            dependsOn = { "accept-3085-hallowed-tablet" },
            id = "turnin-3085-hallowed-tablet",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-3085-hallowed-tablet",
        },
        {
            priority = 100,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 110,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 120,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 130,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "accept-3103-hallowed-letter",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-3103-hallowed-letter",
        },
        {
            priority = 140,
            route = {
                { y = 0.396, mapID = 1429, label = "Priestess Anetta", x = 0.498, offMapText = "Travel to Priestess Anetta in Elwynn Forest." },
            },
            dependsOn = { "accept-3103-hallowed-letter" },
            id = "turnin-3103-hallowed-letter",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-3103-hallowed-letter",
        },
        {
            priority = 150,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 160,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 170,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 180,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "accept-3110-hallowed-rune",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-3110-hallowed-rune",
        },
        {
            priority = 190,
            route = {
                { y = 0.664, mapID = 1426, label = "Branstock Khalder", x = 0.286, offMapText = "Travel to Branstock Khalder in Dun Morogh." },
            },
            dependsOn = { "accept-3110-hallowed-rune" },
            id = "turnin-3110-hallowed-rune",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-3110-hallowed-rune",
        },
        {
            priority = 200,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 210,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 220,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 230,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 240,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 250,
            route = {
                { y = 0.442, mapID = 1438, label = "Conservator Ilthalaine", x = 0.586, offMapText = "Travel to Conservator Ilthalaine in Teldrassil." },
            },
            id = "accept-3119-hallowed-sigil",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-3119-hallowed-sigil",
        },
        {
            priority = 260,
            route = {
                { y = 0.404, mapID = 1438, label = "Shanda", x = 0.592, offMapText = "Travel to Shanda in Teldrassil." },
            },
            dependsOn = { "accept-3119-hallowed-sigil" },
            id = "turnin-3119-hallowed-sigil",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-3119-hallowed-sigil",
        },
        {
            priority = 270,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 280,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 290,
            useClientPin = false,
            dependsOn = { "accept-364-the-mindless-ones" },
            classAction = "objective-364-2-wretched-zombie",
        },
        {
            priority = 300,
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
                                    { class = 5 },
                                    {
                                        class = { 5 },
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
                    { class = 5 },
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
            priority = 310,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", x = 0.308, offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades." },
            },
            id = "accept-3097-hallowed-scroll",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-3097-hallowed-scroll",
        },
        {
            priority = 320,
            route = {
                { y = 0.66, mapID = 1420, label = "Dark Cleric Duesten", x = 0.31, offMapText = "Travel to Dark Cleric Duesten in Tirisfal Glades." },
            },
            dependsOn = { "accept-3097-hallowed-scroll" },
            id = "turnin-3097-hallowed-scroll",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-3097-hallowed-scroll",
        },
        {
            id = "level-before-accept-5622-in-favor-of-elune",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5622,
            priority = 330,
        },
        {
            priority = 340,
            route = {
                { y = 0.404, mapID = 1438, label = "Shanda", x = 0.592, offMapText = "Travel to Shanda in Teldrassil." },
            },
            id = "accept-5622-in-favor-of-elune",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5622-in-favor-of-elune",
        },
        {
            priority = 350,
            route = {
                { y = 0.568, mapID = 1438, label = "Laurna Morninglight", x = 0.556, offMapText = "Travel to Laurna Morninglight in Teldrassil." },
            },
            dependsOn = { "accept-5622-in-favor-of-elune" },
            id = "turnin-5622-in-favor-of-elune",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5622-in-favor-of-elune",
        },
        {
            priority = 360,
            route = {
                { y = 0.568, mapID = 1438, label = "Laurna Morninglight", x = 0.556, offMapText = "Travel to Laurna Morninglight in Teldrassil." },
            },
            dependsOn = { "turnin-5622-in-favor-of-elune" },
            id = "accept-5621-garments-of-the-moon",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-5621-garments-of-the-moon",
        },
        {
            priority = 370,
            id = "objective-5621-quest-work",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-5621-garments-of-the-moon" },
            classAction = "objective-5621-quest-work",
        },
        {
            priority = 380,
            route = {
                { y = 0.568, mapID = 1438, label = "Laurna Morninglight", x = 0.556, offMapText = "Travel to Laurna Morninglight in Teldrassil." },
            },
            dependsOn = { "accept-5621-garments-of-the-moon", "objective-5621-quest-work" },
            id = "turnin-5621-garments-of-the-moon",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5621-garments-of-the-moon",
        },
        {
            id = "level-before-accept-5623-in-favor-of-the-light",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5623,
            priority = 390,
        },
        {
            priority = 400,
            route = {
                { y = 0.396, mapID = 1429, label = "Priestess Anetta", x = 0.498, offMapText = "Travel to Priestess Anetta in Elwynn Forest." },
            },
            id = "accept-5623-in-favor-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5623-in-favor-of-the-light",
        },
        {
            priority = 410,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", x = 0.432, offMapText = "Travel to Priestess Josetta in Elwynn Forest." },
            },
            dependsOn = { "accept-5623-in-favor-of-the-light" },
            id = "turnin-5623-in-favor-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5623-in-favor-of-the-light",
        },
        {
            priority = 420,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", x = 0.434, offMapText = "Travel to Priestess Josetta in Elwynn Forest." },
            },
            dependsOn = { "turnin-5623-in-favor-of-the-light" },
            id = "accept-5624-garments-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-5624-garments-of-the-light",
        },
        {
            priority = 430,
            id = "objective-5624-quest-work",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-5624-garments-of-the-light" },
            classAction = "objective-5624-quest-work",
        },
        {
            priority = 440,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", x = 0.434, offMapText = "Travel to Priestess Josetta in Elwynn Forest." },
            },
            dependsOn = { "accept-5624-garments-of-the-light", "objective-5624-quest-work" },
            id = "turnin-5624-garments-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5624-garments-of-the-light",
        },
        {
            id = "level-before-accept-5626-in-favor-of-the-light",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 3 },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5626,
            priority = 450,
        },
        {
            priority = 460,
            route = {
                { y = 0.664, mapID = 1426, label = "Branstock Khalder", x = 0.286, offMapText = "Travel to Branstock Khalder in Dun Morogh." },
            },
            id = "accept-5626-in-favor-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 3 },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5626-in-favor-of-the-light",
        },
        {
            priority = 470,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", x = 0.472, offMapText = "Travel to Maxan Anvol in Dun Morogh." },
            },
            dependsOn = { "accept-5626-in-favor-of-the-light" },
            id = "turnin-5626-in-favor-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 3 },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5626-in-favor-of-the-light",
        },
        {
            priority = 480,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", x = 0.472, offMapText = "Travel to Maxan Anvol in Dun Morogh." },
            },
            dependsOn = { "turnin-5626-in-favor-of-the-light" },
            id = "accept-5625-garments-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 3 },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-5625-garments-of-the-light",
        },
        {
            priority = 490,
            id = "objective-5625-quest-work",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 3 },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-5625-garments-of-the-light" },
            classAction = "objective-5625-quest-work",
        },
        {
            priority = 500,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", x = 0.472, offMapText = "Travel to Maxan Anvol in Dun Morogh." },
            },
            dependsOn = { "accept-5625-garments-of-the-light", "objective-5625-quest-work" },
            id = "turnin-5625-garments-of-the-light",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 5 },
                    },
                    { race = 3 },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5625-garments-of-the-light",
        },
        {
            id = "level-before-accept-5649-in-favor-of-spirituality",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5649,
            priority = 510,
        },
        {
            priority = 520,
            route = {
                { y = 0.688, mapID = 1411, label = "Ken'jai", x = 0.424, offMapText = "Travel to Ken'jai in Durotar." },
            },
            id = "accept-5649-in-favor-of-spirituality",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5649-in-favor-of-spirituality",
        },
        {
            priority = 530,
            route = {
                { y = 0.428, mapID = 1411, label = "Tai'jin", x = 0.542, offMapText = "Travel to Tai'jin in Durotar." },
            },
            dependsOn = { "accept-5649-in-favor-of-spirituality" },
            id = "turnin-5649-in-favor-of-spirituality",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5649-in-favor-of-spirituality",
        },
        {
            priority = 540,
            route = {
                { y = 0.428, mapID = 1411, label = "Tai'jin", x = 0.542, offMapText = "Travel to Tai'jin in Durotar." },
            },
            dependsOn = { "turnin-5649-in-favor-of-spirituality" },
            id = "accept-5648-garments-of-spirituality",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-5648-garments-of-spirituality",
        },
        {
            priority = 550,
            id = "objective-5648-quest-work",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-5648-garments-of-spirituality" },
            classAction = "objective-5648-quest-work",
        },
        {
            priority = 560,
            route = {
                { y = 0.428, mapID = 1411, label = "Tai'jin", x = 0.542, offMapText = "Travel to Tai'jin in Durotar." },
            },
            dependsOn = { "accept-5648-garments-of-spirituality", "objective-5648-quest-work" },
            id = "turnin-5648-garments-of-spirituality",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5648-garments-of-spirituality",
        },
        {
            id = "level-before-accept-5651-in-favor-of-darkness",
            kind = "note",
            text = "Reach level 5 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                level = { min = 5 },
            },
            requiredLevel = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5651,
            priority = 570,
        },
        {
            priority = 580,
            route = {
                { y = 0.66, mapID = 1420, label = "Dark Cleric Duesten", x = 0.31, offMapText = "Travel to Dark Cleric Duesten in Tirisfal Glades." },
            },
            id = "accept-5651-in-favor-of-darkness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5651-in-favor-of-darkness",
        },
        {
            priority = 590,
            route = {
                { y = 0.522, mapID = 1420, label = "Dark Cleric Beryl", x = 0.616, offMapText = "Travel to Dark Cleric Beryl in Tirisfal Glades." },
            },
            dependsOn = { "accept-5651-in-favor-of-darkness" },
            id = "turnin-5651-in-favor-of-darkness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5651-in-favor-of-darkness",
        },
        {
            priority = 600,
            route = {
                { y = 0.522, mapID = 1420, label = "Dark Cleric Beryl", x = 0.616, offMapText = "Travel to Dark Cleric Beryl in Tirisfal Glades." },
            },
            dependsOn = { "turnin-5651-in-favor-of-darkness" },
            id = "accept-5650-garments-of-darkness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-5650-garments-of-darkness",
        },
        {
            priority = 610,
            id = "objective-5650-quest-work",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-5650-garments-of-darkness" },
            classAction = "objective-5650-quest-work",
        },
        {
            priority = 620,
            route = {
                { y = 0.522, mapID = 1420, label = "Dark Cleric Beryl", x = 0.616, offMapText = "Travel to Dark Cleric Beryl in Tirisfal Glades." },
            },
            dependsOn = { "accept-5650-garments-of-darkness", "objective-5650-quest-work" },
            id = "turnin-5650-garments-of-darkness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 5 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5650-garments-of-darkness",
        },
        {
            id = "level-before-accept-5637-desperate-prayer",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3 },
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
            checkpointQuest = 5637,
            alternativeQuests = { 5634, 5635, 5636, 5638, 5639, 5640 },
            priority = 630,
        },
        {
            priority = 640,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", x = 0.472, offMapText = "Travel to Maxan Anvol in Dun Morogh." },
            },
            id = "accept-5637-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5637-desperate-prayer",
        },
        {
            priority = 650,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-5637-desperate-prayer" },
            id = "turnin-5637-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5637-desperate-prayer",
        },
        {
            id = "level-before-accept-5629-returning-home",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            checkpointQuest = 5629,
            alternativeQuests = { 5627, 5628, 5630, 5631, 5632, 5633 },
            priority = 660,
        },
        {
            priority = 670,
            route = {
                { y = 0.568, mapID = 1438, label = "Laurna Morninglight", x = 0.556, offMapText = "Travel to Laurna Morninglight in Teldrassil." },
            },
            id = "accept-5629-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-5629-returning-home",
        },
        {
            priority = 680,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "accept-5629-returning-home" },
            id = "turnin-5629-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5629-returning-home",
        },
        {
            id = "level-before-accept-94774-divine-grace",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 1 },
                    {
                        race = { 1 },
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
            checkpointQuest = 94774,
            priority = 690,
        },
        {
            priority = 700,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", x = 0.434, offMapText = "Travel to Priestess Josetta in Elwynn Forest." },
            },
            id = "accept-94774-divine-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94774-divine-grace",
        },
        {
            priority = 710,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-94774-divine-grace" },
            id = "turnin-94774-divine-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94774-divine-grace",
        },
        {
            priority = 720,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "turnin-94774-divine-grace" },
            id = "accept-94773-divine-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94773-divine-grace",
        },
        {
            priority = 730,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-94773-divine-grace" },
            id = "turnin-94773-divine-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94773-divine-grace",
        },
        {
            id = "level-before-accept-94824-confounding-flash",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 7 },
                    {
                        race = { 7 },
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
            checkpointQuest = 94824,
            priority = 740,
        },
        {
            priority = 750,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", x = 0.472, offMapText = "Travel to Maxan Anvol in Dun Morogh." },
            },
            id = "accept-94824-confounding-flash",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-94824-confounding-flash",
        },
        {
            priority = 760,
            route = {
                { y = 0.1, mapID = 1455, label = "High Priestess Mims", x = 0.248, offMapText = "Travel to High Priestess Mims in Ironforge." },
            },
            dependsOn = { "accept-94824-confounding-flash" },
            id = "turnin-94824-confounding-flash",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94824-confounding-flash",
        },
        {
            priority = 770,
            route = {
                { y = 0.1, mapID = 1455, label = "High Priestess Mims", x = 0.248, offMapText = "Travel to High Priestess Mims in Ironforge." },
            },
            dependsOn = { "turnin-94824-confounding-flash" },
            id = "accept-94817-confounding-flash",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-94817-confounding-flash",
        },
        {
            priority = 780,
            route = {
                { y = 0.1, mapID = 1455, label = "High Priestess Mims", x = 0.248, offMapText = "Travel to High Priestess Mims in Ironforge." },
            },
            dependsOn = { "accept-94817-confounding-flash" },
            id = "turnin-94817-confounding-flash",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 7 },
                    {
                        race = { 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-94817-confounding-flash",
        },
        {
            priority = 790,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", x = 0.432, offMapText = "Travel to Priestess Josetta in Elwynn Forest." },
            },
            id = "accept-5628-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-5628-returning-home",
        },
        {
            priority = 800,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "accept-5628-returning-home" },
            id = "turnin-5628-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5628-returning-home",
        },
        {
            priority = 810,
            route = {
                { y = 0.522, mapID = 1426, label = "Maxan Anvol", x = 0.472, offMapText = "Travel to Maxan Anvol in Dun Morogh." },
            },
            id = "accept-5630-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-5630-returning-home",
        },
        {
            priority = 820,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "accept-5630-returning-home" },
            id = "turnin-5630-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5630-returning-home",
        },
        {
            priority = 830,
            route = {
                { y = 0.268, mapID = 1453, label = "Brother Joshua", x = 0.388, offMapText = "Travel to Brother Joshua in Stormwind City." },
            },
            id = "accept-5631-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-5631-returning-home",
        },
        {
            priority = 840,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "accept-5631-returning-home" },
            id = "turnin-5631-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5631-returning-home",
        },
        {
            priority = 850,
            route = {
                { y = 0.502, mapID = 1453, label = "Nara Meideros", x = 0.208, offMapText = "Travel to Nara Meideros in Stormwind City." },
            },
            id = "accept-5632-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-5632-returning-home",
        },
        {
            priority = 860,
            route = {
                { y = 0.502, mapID = 1453, label = "Nara Meideros", x = 0.208, offMapText = "Travel to Nara Meideros in Stormwind City." },
            },
            dependsOn = { "accept-5632-returning-home" },
            id = "turnin-5632-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5632-returning-home",
        },
        {
            priority = 870,
            route = {
                { y = 0.092, mapID = 1455, label = "Braenna Flintcrag", x = 0.246, offMapText = "Travel to Braenna Flintcrag in Ironforge." },
            },
            id = "accept-5633-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-5633-returning-home",
        },
        {
            priority = 880,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "accept-5633-returning-home" },
            id = "turnin-5633-returning-home",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5633-returning-home",
        },
        {
            priority = 890,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            id = "accept-5627-stars-of-elune",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-5627-stars-of-elune",
        },
        {
            priority = 900,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "accept-5627-stars-of-elune" },
            id = "turnin-5627-stars-of-elune",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5627-stars-of-elune",
        },
        {
            priority = 910,
            route = {
                { y = 0.656, mapID = 1429, label = "Priestess Josetta", x = 0.432, offMapText = "Travel to Priestess Josetta in Elwynn Forest." },
            },
            id = "accept-5635-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5635-desperate-prayer",
        },
        {
            priority = 920,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-5635-desperate-prayer" },
            id = "turnin-5635-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5635-desperate-prayer",
        },
        {
            id = "level-before-accept-5636-desperate-prayer",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            checkpointQuest = 5636,
            alternativeQuests = { 5634, 5635, 5637, 5638, 5639, 5640 },
            priority = 930,
        },
        {
            priority = 940,
            route = {
                { y = 0.568, mapID = 1438, label = "Laurna Morninglight", x = 0.556, offMapText = "Travel to Laurna Morninglight in Teldrassil." },
            },
            id = "accept-5636-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-5636-desperate-prayer",
        },
        {
            priority = 950,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-5636-desperate-prayer" },
            id = "turnin-5636-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5636-desperate-prayer",
        },
        {
            priority = 960,
            route = {
                { y = 0.502, mapID = 1453, label = "Nara Meideros", x = 0.208, offMapText = "Travel to Nara Meideros in Stormwind City." },
            },
            id = "accept-5638-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5638-desperate-prayer",
        },
        {
            priority = 970,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-5638-desperate-prayer" },
            id = "turnin-5638-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5638-desperate-prayer",
        },
        {
            priority = 980,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            id = "accept-5639-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5639-desperate-prayer",
        },
        {
            priority = 990,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-5639-desperate-prayer" },
            id = "turnin-5639-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5639-desperate-prayer",
        },
        {
            priority = 1000,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            id = "accept-5640-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5640-desperate-prayer",
        },
        {
            priority = 1010,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-5640-desperate-prayer" },
            id = "turnin-5640-desperate-prayer",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5640-desperate-prayer",
        },
        {
            id = "level-before-accept-5654-hex-of-weakness",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    { race = 8 },
                    {
                        race = { 8 },
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
            checkpointQuest = 5654,
            alternativeQuests = { 5652, 5655, 5656, 5657 },
            priority = 1020,
        },
        {
            priority = 1030,
            route = {
                { y = 0.428, mapID = 1411, label = "Tai'jin", x = 0.542, offMapText = "Travel to Tai'jin in Durotar." },
            },
            id = "accept-5654-hex-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5654-hex-of-weakness",
        },
        {
            priority = 1040,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            dependsOn = { "accept-5654-hex-of-weakness" },
            id = "turnin-5654-hex-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5654-hex-of-weakness",
        },
        {
            priority = 1050,
            route = {
                { y = 0.588, mapID = 1412, label = "Var'jun", x = 0.47, offMapText = "Travel to Var'jun in Mulgore." },
            },
            id = "accept-5655-hex-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5655-hex-of-weakness",
        },
        {
            priority = 1060,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            dependsOn = { "accept-5655-hex-of-weakness" },
            id = "turnin-5655-hex-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5655-hex-of-weakness",
        },
        {
            priority = 1070,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            id = "accept-5657-hex-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5657-hex-of-weakness",
        },
        {
            priority = 1080,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            dependsOn = { "accept-5657-hex-of-weakness" },
            id = "turnin-5657-hex-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5657-hex-of-weakness",
        },
        {
            id = "level-before-accept-5660-touch-of-weakness",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            checkpointQuest = 5660,
            alternativeQuests = { 5658, 5661, 5662, 5663 },
            priority = 1090,
        },
        {
            priority = 1100,
            route = {
                { y = 0.428, mapID = 1411, label = "Tai'jin", x = 0.542, offMapText = "Travel to Tai'jin in Durotar." },
            },
            id = "accept-5660-touch-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-5660-touch-of-weakness",
        },
        {
            priority = 1110,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "accept-5660-touch-of-weakness" },
            id = "turnin-5660-touch-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5660-touch-of-weakness",
        },
        {
            priority = 1120,
            route = {
                { y = 0.588, mapID = 1412, label = "Var'jun", x = 0.47, offMapText = "Travel to Var'jun in Mulgore." },
            },
            id = "accept-5661-touch-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-5661-touch-of-weakness",
        },
        {
            priority = 1130,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "accept-5661-touch-of-weakness" },
            id = "turnin-5661-touch-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5661-touch-of-weakness",
        },
        {
            priority = 1140,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            id = "accept-5662-touch-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-5662-touch-of-weakness",
        },
        {
            priority = 1150,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "accept-5662-touch-of-weakness" },
            id = "turnin-5662-touch-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5662-touch-of-weakness",
        },
        {
            priority = 1160,
            route = {
                { y = 0.154, mapID = 1456, label = "Miles Welsh", x = 0.254, offMapText = "Travel to Miles Welsh in Thunder Bluff." },
            },
            id = "accept-5663-touch-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "accept-5663-touch-of-weakness",
        },
        {
            priority = 1170,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "accept-5663-touch-of-weakness" },
            id = "turnin-5663-touch-of-weakness",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            classAction = "turnin-5663-touch-of-weakness",
        },
        {
            id = "level-before-accept-5641-a-lack-of-fear",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 3 },
                    {
                        race = { 3 },
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
            checkpointQuest = 5641,
            alternativeQuests = { 5645, 5647 },
            priority = 1180,
        },
        {
            priority = 1190,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            id = "accept-5641-a-lack-of-fear",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5641-a-lack-of-fear",
        },
        {
            priority = 1200,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            dependsOn = { "accept-5641-a-lack-of-fear" },
            id = "turnin-5641-a-lack-of-fear",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5641-a-lack-of-fear",
        },
        {
            id = "level-before-accept-5676-arcane-feedback",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 1 },
                    {
                        race = { 1 },
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
            checkpointQuest = 5676,
            alternativeQuests = { 5677, 5678 },
            priority = 1210,
        },
        {
            priority = 1220,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            id = "accept-5676-arcane-feedback",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5676-arcane-feedback",
        },
        {
            priority = 1230,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-5676-arcane-feedback" },
            id = "turnin-5676-arcane-feedback",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5676-arcane-feedback",
        },
        {
            id = "level-before-accept-5672-elunes-grace",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    { race = 4 },
                    {
                        race = { 4 },
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
            checkpointQuest = 5672,
            alternativeQuests = { 5673, 5674, 5675 },
            priority = 1240,
        },
        {
            priority = 1250,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            id = "accept-5672-elunes-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5672-elunes-grace",
        },
        {
            priority = 1260,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "accept-5672-elunes-grace" },
            id = "turnin-5672-elunes-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5672-elunes-grace",
        },
        {
            id = "level-before-accept-5643-shadowguard",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    { race = 8 },
                    {
                        race = { 8 },
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
            checkpointQuest = 5643,
            alternativeQuests = { 5642, 5680 },
            priority = 1270,
        },
        {
            priority = 1280,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            id = "accept-5643-shadowguard",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5643-shadowguard",
        },
        {
            priority = 1290,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            dependsOn = { "accept-5643-shadowguard" },
            id = "turnin-5643-shadowguard",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5643-shadowguard",
        },
        {
            id = "level-before-accept-5644-devouring-plague",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
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
            checkpointQuest = 5644,
            alternativeQuests = { 5646, 5679 },
            priority = 1300,
        },
        {
            priority = 1310,
            route = {
                { y = 0.154, mapID = 1456, label = "Miles Welsh", x = 0.254, offMapText = "Travel to Miles Welsh in Thunder Bluff." },
            },
            id = "accept-5644-devouring-plague",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5644-devouring-plague",
        },
        {
            priority = 1320,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "accept-5644-devouring-plague" },
            id = "turnin-5644-devouring-plague",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5644-devouring-plague",
        },
        {
            priority = 1330,
            route = {
                { y = 0.154, mapID = 1456, label = "Miles Welsh", x = 0.254, offMapText = "Travel to Miles Welsh in Thunder Bluff." },
            },
            id = "accept-5642-shadowguard",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5642-shadowguard",
        },
        {
            priority = 1340,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            dependsOn = { "accept-5642-shadowguard" },
            id = "turnin-5642-shadowguard",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5642-shadowguard",
        },
        {
            priority = 1350,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            id = "accept-5645-a-lack-of-fear",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5645-a-lack-of-fear",
        },
        {
            priority = 1360,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            dependsOn = { "accept-5645-a-lack-of-fear" },
            id = "turnin-5645-a-lack-of-fear",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5645-a-lack-of-fear",
        },
        {
            priority = 1370,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            id = "accept-5646-devouring-plague",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5646-devouring-plague",
        },
        {
            priority = 1380,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "accept-5646-devouring-plague" },
            id = "turnin-5646-devouring-plague",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5646-devouring-plague",
        },
        {
            priority = 1390,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            id = "accept-5647-a-lack-of-fear",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5647-a-lack-of-fear",
        },
        {
            priority = 1400,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            dependsOn = { "accept-5647-a-lack-of-fear" },
            id = "turnin-5647-a-lack-of-fear",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 3 },
                    {
                        race = { 3 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5647-a-lack-of-fear",
        },
        {
            priority = 1410,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            id = "accept-5673-elunes-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5673-elunes-grace",
        },
        {
            priority = 1420,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "accept-5673-elunes-grace" },
            id = "turnin-5673-elunes-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5673-elunes-grace",
        },
        {
            priority = 1430,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            id = "accept-5675-elunes-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5675-elunes-grace",
        },
        {
            priority = 1440,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            dependsOn = { "accept-5675-elunes-grace" },
            id = "turnin-5675-elunes-grace",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 4 },
                    {
                        race = { 4 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5675-elunes-grace",
        },
        {
            priority = 1450,
            route = {
                { y = 0.084, mapID = 1455, label = "High Priest Rohan", x = 0.25, offMapText = "Travel to High Priest Rohan in Ironforge." },
            },
            id = "accept-5677-arcane-feedback",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5677-arcane-feedback",
        },
        {
            priority = 1460,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-5677-arcane-feedback" },
            id = "turnin-5677-arcane-feedback",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5677-arcane-feedback",
        },
        {
            priority = 1470,
            route = {
                { y = 0.81, mapID = 1457, label = "Priestess Alathea", x = 0.392, offMapText = "Travel to Priestess Alathea in Darnassus." },
            },
            id = "accept-5678-arcane-feedback",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5678-arcane-feedback",
        },
        {
            priority = 1480,
            route = {
                { y = 0.264, mapID = 1453, label = "High Priestess Laurena", x = 0.388, offMapText = "Travel to High Priestess Laurena in Stormwind City." },
            },
            dependsOn = { "accept-5678-arcane-feedback" },
            id = "turnin-5678-arcane-feedback",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    { race = 1 },
                    {
                        race = { 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5678-arcane-feedback",
        },
        {
            priority = 1490,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            id = "accept-5679-devouring-plague",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5679-devouring-plague",
        },
        {
            priority = 1500,
            route = {
                { y = 0.182, mapID = 1458, label = "Aelthalyste", x = 0.492, offMapText = "Travel to Aelthalyste in Undercity." },
            },
            dependsOn = { "accept-5679-devouring-plague" },
            id = "turnin-5679-devouring-plague",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5679-devouring-plague",
        },
        {
            priority = 1510,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            id = "accept-5680-shadowguard",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-5680-shadowguard",
        },
        {
            priority = 1520,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            dependsOn = { "accept-5680-shadowguard" },
            id = "turnin-5680-shadowguard",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 8 },
                    {
                        race = { 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-5680-shadowguard",
        },
        {
            id = "level-before-accept-8254-cenarion-aid",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8254,
            priority = 1530,
        },
        {
            priority = 1540,
            route = {
                { y = 0.268, mapID = 1453, label = "Brother Joshua", x = 0.388, offMapText = "Travel to Brother Joshua in Stormwind City." },
            },
            id = "accept-8254-cenarion-aid",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8254-cenarion-aid",
        },
        {
            id = "level-before-accept-8254-cenarion-aid-horde",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            checkpointQuest = 8254,
            priority = 1550,
        },
        {
            priority = 1560,
            route = {
                { y = 0.876, mapID = 1454, label = "Ur'kyo", x = 0.356, offMapText = "Travel to Ur'kyo in Orgrimmar." },
            },
            id = "accept-8254-cenarion-aid-horde",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8254-cenarion-aid-horde",
        },
        {
            id = "level-before-turnin-8254-cenarion-aid",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            checkpointQuest = 8254,
            priority = 1570,
        },
        {
            priority = 1580,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "accept-8254-cenarion-aid", "accept-8254-cenarion-aid-horde" },
            id = "turnin-8254-cenarion-aid",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8254-cenarion-aid",
        },
        {
            priority = 1590,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "turnin-8254-cenarion-aid" },
            id = "accept-8255-of-coursers-we-know",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8255-of-coursers-we-know",
        },
        {
            priority = 1600,
            route = {
                { y = 0.692, mapID = 1447, label = "Mosshoof Courser", x = 0.378, offMapText = "Travel to Mosshoof Courser in Azshara." },
            },
            dependsOn = { "accept-8255-of-coursers-we-know" },
            id = "objective-8255-of-coursers-we-know",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8255-of-coursers-we-know",
        },
        {
            priority = 1610,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "accept-8255-of-coursers-we-know", "objective-8255-of-coursers-we-know" },
            id = "turnin-8255-of-coursers-we-know",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8255-of-coursers-we-know",
        },
        {
            priority = 1620,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "turnin-8255-of-coursers-we-know", "turnin-8254-cenarion-aid" },
            id = "accept-8256-the-ichor-of-undeath",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8256-the-ichor-of-undeath",
        },
        {
            priority = 1630,
            route = {
                { y = 0.734, mapID = 1447, label = "Highborne Apparition", x = 0.134, offMapText = "Travel to Highborne Apparition in Azshara." },
                { y = 0.732, mapID = 1447, label = "Highborne Lichling", x = 0.134, offMapText = "Travel to Highborne Lichling in Azshara." },
                { y = 0.692, mapID = 1447, label = "Varo'then's Ghost", x = 0.176, offMapText = "Travel to Varo'then's Ghost in Azshara." },
                { y = 0.502, mapID = 1447, label = "Lingering Highborne", x = 0.394, offMapText = "Travel to Lingering Highborne in Azshara." },
            },
            dependsOn = { "accept-8256-the-ichor-of-undeath" },
            id = "objective-8256-the-ichor-of-undeath",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8256-the-ichor-of-undeath",
        },
        {
            priority = 1640,
            route = {
                { y = 0.426, mapID = 1447, label = "Ogtinc", x = 0.424, offMapText = "Travel to Ogtinc in Azshara." },
            },
            dependsOn = { "accept-8256-the-ichor-of-undeath", "objective-8256-the-ichor-of-undeath" },
            id = "turnin-8256-the-ichor-of-undeath",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8256-the-ichor-of-undeath",
        },
        {
            id = "level-before-accept-7621-a-warning",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
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
            checkpointQuest = 7621,
            priority = 1650,
        },
        {
            priority = 1660,
            route = {
                { y = 0.184, mapID = 1423, label = "Eris Havenfire", x = 0.208, offMapText = "Travel to Eris Havenfire in Eastern Plaguelands." },
            },
            id = "accept-7621-a-warning",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
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
            priority = 1670,
            route = {
                { y = 0.184, mapID = 1423, label = "Eris Havenfire", x = 0.208, offMapText = "Travel to Eris Havenfire in Eastern Plaguelands." },
            },
            dependsOn = { "accept-7621-a-warning" },
            id = "turnin-7621-a-warning",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7621-a-warning",
        },
        {
            priority = 1680,
            route = {
                { y = 0.184, mapID = 1423, label = "Eris Havenfire", x = 0.208, offMapText = "Travel to Eris Havenfire in Eastern Plaguelands." },
            },
            id = "accept-7622-the-balance-of-light-and-shadow",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
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
            priority = 1690,
            dependsOn = { "accept-7622-the-balance-of-light-and-shadow" },
            id = "objective-7622-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7622-reviewed-mechanics",
        },
        {
            priority = 1700,
            route = {
                { y = 0.184, mapID = 1423, label = "Eris Havenfire", x = 0.208, offMapText = "Travel to Eris Havenfire in Eastern Plaguelands." },
            },
            dependsOn = { "accept-7622-the-balance-of-light-and-shadow", "objective-7622-reviewed-mechanics" },
            id = "turnin-7622-the-balance-of-light-and-shadow",
            conditions = {
                all = {
                    { class = 5 },
                    {
                        class = { 5 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7622-the-balance-of-light-and-shadow",
        },
    },
    routeMode = "ordered",
})
