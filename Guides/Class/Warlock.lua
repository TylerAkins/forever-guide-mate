local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Warlock",
    category = "Class Quests",
    id = "class-warlock",
    conditions = {
        all = {
            { class = 9 },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
            priority = 10,
            route = {
                { y = 0.426, mapID = 1429, label = "Drusilla La Salle", x = 0.498, offMapText = "Travel to Drusilla La Salle in Elwynn Forest." },
            },
            id = "accept-1598-the-stolen-tome",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
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
            classAction = "accept-1598-the-stolen-tome",
        },
        {
            priority = 20,
            route = {
                { mapID = 1429, x = 0.5674, y = 0.43770000000000003, label = "Powers of the Void", offMapText = "Travel to Powers of the Void." },
            },
            id = "objective-1598-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
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
            dependsOn = { "accept-1598-the-stolen-tome" },
            classAction = "objective-1598-quest-work",
        },
        {
            priority = 30,
            route = {
                { y = 0.426, mapID = 1429, label = "Drusilla La Salle", x = 0.498, offMapText = "Travel to Drusilla La Salle in Elwynn Forest." },
            },
            dependsOn = { "accept-1598-the-stolen-tome", "objective-1598-quest-work" },
            id = "turnin-1598-the-stolen-tome",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
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
            classAction = "turnin-1598-the-stolen-tome",
        },
        {
            priority = 40,
            route = {
                { y = 0.662, mapID = 1426, label = "Alamar Grimm", x = 0.286, offMapText = "Travel to Alamar Grimm in Dun Morogh." },
            },
            id = "accept-1599-beginnings",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
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
            classAction = "accept-1599-beginnings",
        },
        {
            priority = 50,
            route = {
                { y = 0.794, mapID = 1426, label = "Frostmane Novice", x = 0.304, offMapText = "Travel to Frostmane Novice in Dun Morogh." },
            },
            dependsOn = { "accept-1599-beginnings" },
            id = "objective-1599-beginnings",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
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
            classAction = "objective-1599-beginnings",
        },
        {
            priority = 60,
            route = {
                { y = 0.662, mapID = 1426, label = "Alamar Grimm", x = 0.286, offMapText = "Travel to Alamar Grimm in Dun Morogh." },
            },
            dependsOn = { "accept-1599-beginnings", "objective-1599-beginnings" },
            id = "turnin-1599-beginnings",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 1 },
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
            classAction = "turnin-1599-beginnings",
        },
        {
            priority = 70,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-98575-tainted-tablet",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-98575-tainted-tablet",
        },
        {
            priority = 80,
            route = {
                { y = 0.684, mapID = 1411, label = "Nartok", x = 0.406, offMapText = "Travel to Nartok in Durotar." },
            },
            dependsOn = { "accept-98575-tainted-tablet" },
            id = "turnin-98575-tainted-tablet",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-98575-tainted-tablet",
        },
        {
            priority = 90,
            route = {
                { y = 0.69, mapID = 1411, label = "Ruzan", x = 0.426, offMapText = "Travel to Ruzan in Durotar." },
            },
            id = "accept-1485-vile-familiars",
            conditions = {
                all = {
                    { class = 9 },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1485-vile-familiars",
        },
        {
            priority = 100,
            route = {
                { y = 0.55, mapID = 1411, label = "Vile Familiar", x = 0.452, offMapText = "Travel to Vile Familiar in Durotar." },
            },
            dependsOn = { "accept-1485-vile-familiars" },
            id = "objective-1485-vile-familiars",
            conditions = {
                all = {
                    { class = 9 },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1485-vile-familiars",
        },
        {
            priority = 110,
            route = {
                { y = 0.69, mapID = 1411, label = "Ruzan", x = 0.426, offMapText = "Travel to Ruzan in Durotar." },
            },
            dependsOn = { "accept-1485-vile-familiars", "objective-1485-vile-familiars" },
            id = "turnin-1485-vile-familiars",
            conditions = {
                all = {
                    { class = 9 },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1485-vile-familiars",
        },
        {
            priority = 120,
            route = {
                { y = 0.662, mapID = 1420, label = "Venya Marthand", x = 0.31, offMapText = "Travel to Venya Marthand in Tirisfal Glades." },
            },
            id = "accept-1470-piercing-the-veil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
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
            classAction = "accept-1470-piercing-the-veil",
        },
        {
            priority = 130,
            route = {
                { y = 0.632, mapID = 1420, label = "Rattlecage Skeleton", x = 0.33, offMapText = "Travel to Rattlecage Skeleton in Tirisfal Glades." },
            },
            dependsOn = { "accept-1470-piercing-the-veil" },
            id = "objective-1470-piercing-the-veil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
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
            classAction = "objective-1470-piercing-the-veil",
        },
        {
            priority = 140,
            route = {
                { y = 0.662, mapID = 1420, label = "Venya Marthand", x = 0.31, offMapText = "Travel to Venya Marthand in Tirisfal Glades." },
            },
            dependsOn = { "accept-1470-piercing-the-veil", "objective-1470-piercing-the-veil" },
            id = "turnin-1470-piercing-the-veil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
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
            classAction = "turnin-1470-piercing-the-veil",
        },
        {
            priority = 150,
            route = {
                { y = 0.69, mapID = 1411, label = "Ruzan", x = 0.426, offMapText = "Travel to Ruzan in Durotar." },
            },
            dependsOn = { "turnin-1485-vile-familiars" },
            id = "accept-1499-vile-familiars",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
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
            classAction = "accept-1499-vile-familiars",
        },
        {
            priority = 160,
            route = {
                { y = 0.69, mapID = 1411, label = "Zureetha Fargaze", x = 0.428, offMapText = "Travel to Zureetha Fargaze in Durotar." },
            },
            dependsOn = { "accept-1499-vile-familiars" },
            id = "turnin-1499-vile-familiars",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 1 },
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
            classAction = "turnin-1499-vile-familiars",
        },
        {
            priority = 170,
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
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
                    { class = 9 },
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
            priority = 180,
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
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
                    { class = 9 },
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
            priority = 190,
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
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
                    { class = 9 },
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
            priority = 200,
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "accept-3115-tainted-memorandum",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-3115-tainted-memorandum",
        },
        {
            priority = 210,
            route = {
                { y = 0.662, mapID = 1426, label = "Alamar Grimm", x = 0.286, offMapText = "Travel to Alamar Grimm in Dun Morogh." },
            },
            dependsOn = { "accept-3115-tainted-memorandum" },
            id = "turnin-3115-tainted-memorandum",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-3115-tainted-memorandum",
        },
        {
            priority = 220,
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
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
                    { class = 9 },
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
            priority = 230,
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
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
                    { class = 9 },
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
            priority = 240,
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
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
                    { class = 9 },
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
            priority = 250,
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
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
                    { class = 9 },
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
            priority = 260,
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
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
                    { class = 9 },
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
            priority = 270,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "accept-3105-tainted-letter",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-3105-tainted-letter",
        },
        {
            priority = 280,
            route = {
                { y = 0.426, mapID = 1429, label = "Drusilla La Salle", x = 0.498, offMapText = "Travel to Drusilla La Salle in Elwynn Forest." },
            },
            dependsOn = { "accept-3105-tainted-letter" },
            id = "turnin-3105-tainted-letter",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-3105-tainted-letter",
        },
        {
            priority = 290,
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
                                    },
                                    { faction = "Horde" },
                                    { race = 2 },
                                    {
                                        race = { 2 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 9 },
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
            priority = 300,
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
                                    },
                                    { faction = "Horde" },
                                    { race = 2 },
                                    {
                                        race = { 2 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 9 },
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
            priority = 310,
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
                                    },
                                    { faction = "Horde" },
                                    { race = 2 },
                                    {
                                        race = { 2 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 9 },
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
            priority = 320,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-3090-tainted-parchment",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-3090-tainted-parchment",
        },
        {
            priority = 330,
            route = {
                { y = 0.684, mapID = 1411, label = "Nartok", x = 0.406, offMapText = "Travel to Nartok in Durotar." },
            },
            dependsOn = { "accept-3090-tainted-parchment" },
            id = "turnin-3090-tainted-parchment",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-3090-tainted-parchment",
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
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
                    { class = 9 },
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
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
                    { class = 9 },
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
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
                    { class = 9 },
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
                                    { class = 9 },
                                    {
                                        class = { 9 },
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
                    { class = 9 },
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
            id = "accept-3099-tainted-scroll",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-3099-tainted-scroll",
        },
        {
            priority = 390,
            route = {
                { y = 0.662, mapID = 1420, label = "Maximillion", x = 0.308, offMapText = "Travel to Maximillion in Tirisfal Glades." },
            },
            dependsOn = { "accept-3099-tainted-scroll" },
            id = "turnin-3099-tainted-scroll",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-3099-tainted-scroll",
        },
        {
            id = "level-before-accept-1715-the-slaughtered-lamb",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1715,
            alternativeQuests = { 1688 },
            priority = 400,
        },
        {
            priority = 410,
            route = {
                { y = 0.096, mapID = 1455, label = "Lago Blackwrench", x = 0.476, offMapText = "Travel to Lago Blackwrench in Ironforge." },
            },
            id = "accept-1715-the-slaughtered-lamb",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-1715-the-slaughtered-lamb",
        },
        {
            priority = 420,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "accept-1715-the-slaughtered-lamb" },
            id = "turnin-1715-the-slaughtered-lamb",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-1715-the-slaughtered-lamb",
        },
        {
            priority = 430,
            route = {
                { y = 0.662, mapID = 1429, label = "Remen Marcot", x = 0.444, offMapText = "Travel to Remen Marcot in Elwynn Forest." },
            },
            id = "accept-1685-gakins-summons",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-1685-gakins-summons",
        },
        {
            priority = 440,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "accept-1685-gakins-summons" },
            id = "turnin-1685-gakins-summons",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-1685-gakins-summons",
        },
        {
            priority = 450,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "turnin-1685-gakins-summons", "turnin-1715-the-slaughtered-lamb" },
            id = "accept-1688-surena-caledon",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-1688-surena-caledon",
        },
        {
            priority = 460,
            route = {
                { mapID = 1429, x = 0.7101999999999999, y = 0.8078, label = "Surena's Choker", offMapText = "Travel to Surena's Choker." },
            },
            id = "objective-1688-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            dependsOn = { "accept-1688-surena-caledon" },
            classAction = "objective-1688-quest-work",
        },
        {
            priority = 470,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "accept-1688-surena-caledon", "objective-1688-quest-work" },
            id = "turnin-1688-surena-caledon",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-1688-surena-caledon",
        },
        {
            priority = 480,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "turnin-1688-surena-caledon", "turnin-1715-the-slaughtered-lamb", "turnin-1685-gakins-summons" },
            id = "accept-1689-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-1689-the-binding",
        },
        {
            priority = 490,
            route = {
                { mapID = 1453, x = 0.2511, y = 0.7746, label = "Summoned Voidwalker", offMapText = "Travel to Summoned Voidwalker." },
            },
            id = "objective-1689-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            dependsOn = { "accept-1689-the-binding" },
            classAction = "objective-1689-quest-work",
        },
        {
            priority = 500,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "accept-1689-the-binding", "objective-1689-quest-work" },
            id = "turnin-1689-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-1689-the-binding",
        },
        {
            id = "level-before-accept-1478-halgars-summons",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 10 },
            },
            requiredLevel = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1478,
            priority = 510,
        },
        {
            priority = 520,
            route = {
                { y = 0.526, mapID = 1420, label = "Ageron Kargal", x = 0.616, offMapText = "Travel to Ageron Kargal in Tirisfal Glades." },
            },
            id = "accept-1478-halgars-summons",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-1478-halgars-summons",
        },
        {
            priority = 530,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "accept-1478-halgars-summons" },
            id = "turnin-1478-halgars-summons",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-1478-halgars-summons",
        },
        {
            id = "level-before-accept-1473-creature-of-the-void",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            checkpointQuest = 1473,
            priority = 540,
        },
        {
            priority = 550,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "turnin-1478-halgars-summons" },
            id = "accept-1473-creature-of-the-void",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-1473-creature-of-the-void",
        },
        {
            priority = 560,
            route = {
                { mapID = 1420, x = 0.5106, y = 0.6757, label = "Egalin's Grimoire", offMapText = "Travel to Egalin's Grimoire." },
            },
            id = "objective-1473-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            dependsOn = { "accept-1473-creature-of-the-void" },
            classAction = "objective-1473-quest-work",
        },
        {
            priority = 570,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "accept-1473-creature-of-the-void", "objective-1473-quest-work" },
            id = "turnin-1473-creature-of-the-void",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-1473-creature-of-the-void",
        },
        {
            priority = 580,
            route = {
                { y = 0.412, mapID = 1411, label = "Ophek", x = 0.542, offMapText = "Travel to Ophek in Durotar." },
            },
            id = "accept-1506-ganruls-summons",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "accept-1506-ganruls-summons",
        },
        {
            priority = 590,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "accept-1506-ganruls-summons" },
            id = "turnin-1506-ganruls-summons",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
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
            classAction = "turnin-1506-ganruls-summons",
        },
        {
            id = "level-before-accept-1501-creature-of-the-void",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            checkpointQuest = 1501,
            priority = 600,
        },
        {
            priority = 610,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "turnin-1506-ganruls-summons" },
            id = "accept-1501-creature-of-the-void",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-1501-creature-of-the-void",
        },
        {
            priority = 620,
            id = "objective-1501-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            useClientPin = true,
            dependsOn = { "accept-1501-creature-of-the-void" },
            classAction = "objective-1501-quest-work",
        },
        {
            priority = 630,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "accept-1501-creature-of-the-void", "objective-1501-quest-work" },
            id = "turnin-1501-creature-of-the-void",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-1501-creature-of-the-void",
        },
        {
            priority = 640,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "turnin-1501-creature-of-the-void", "turnin-1506-ganruls-summons" },
            id = "accept-1504-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-1504-the-binding",
        },
        {
            priority = 650,
            id = "objective-1504-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            useClientPin = true,
            dependsOn = { "accept-1504-the-binding" },
            classAction = "objective-1504-quest-work",
        },
        {
            priority = 660,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "accept-1504-the-binding", "objective-1504-quest-work" },
            id = "turnin-1504-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-1504-the-binding",
        },
        {
            priority = 670,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "turnin-1473-creature-of-the-void", "turnin-1805-tome-of-the-cabal", "turnin-1478-halgars-summons" },
            id = "accept-1471-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "accept-1471-the-binding",
        },
        {
            priority = 680,
            route = {
                { mapID = 1458, x = 0.8662000000000001, y = 0.271, label = "Summoned Voidwalker", offMapText = "Travel to Summoned Voidwalker." },
            },
            id = "objective-1471-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            dependsOn = { "accept-1471-the-binding" },
            classAction = "objective-1471-quest-work",
        },
        {
            priority = 690,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "accept-1471-the-binding", "objective-1471-quest-work" },
            id = "turnin-1471-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            classAction = "turnin-1471-the-binding",
        },
        {
            id = "level-before-accept-1717-gakins-summons",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1717,
            alternativeQuests = { 1716 },
            priority = 700,
        },
        {
            priority = 710,
            route = {
                { y = 0.096, mapID = 1455, label = "Lago Blackwrench", x = 0.476, offMapText = "Travel to Lago Blackwrench in Ironforge." },
            },
            id = "accept-1717-gakins-summons",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1717-gakins-summons",
        },
        {
            priority = 720,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "accept-1717-gakins-summons" },
            id = "turnin-1717-gakins-summons",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1717-gakins-summons",
        },
        {
            priority = 730,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "turnin-1717-gakins-summons" },
            id = "accept-1716-devourer-of-souls",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1716-devourer-of-souls",
        },
        {
            priority = 740,
            route = {
                { y = 0.57, mapID = 1413, label = "Takar the Seer", x = 0.492, offMapText = "Travel to Takar the Seer in The Barrens." },
            },
            dependsOn = { "accept-1716-devourer-of-souls" },
            id = "turnin-1716-devourer-of-souls",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1716-devourer-of-souls",
        },
        {
            priority = 750,
            route = {
                { y = 0.57, mapID = 1413, label = "Takar the Seer", x = 0.492, offMapText = "Travel to Takar the Seer in The Barrens." },
            },
            dependsOn = { "turnin-1716-devourer-of-souls" },
            id = "accept-1738-heartswood",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1738-heartswood",
        },
        {
            priority = 760,
            route = {
                { mapID = 1440, x = 0.31489999999999996, y = 0.3145, label = "Heartswood", offMapText = "Travel to Heartswood." },
            },
            id = "objective-1738-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            dependsOn = { "accept-1738-heartswood" },
            classAction = "objective-1738-quest-work",
        },
        {
            priority = 770,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "accept-1738-heartswood", "objective-1738-quest-work" },
            id = "turnin-1738-heartswood",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1738-heartswood",
        },
        {
            priority = 780,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "turnin-1738-heartswood" },
            id = "accept-1739-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1739-the-binding",
        },
        {
            priority = 790,
            route = {
                { mapID = 1453, x = 0.2511, y = 0.7746, label = "Summoned Succubus", offMapText = "Travel to Summoned Succubus." },
            },
            id = "objective-1739-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            dependsOn = { "accept-1739-the-binding" },
            classAction = "objective-1739-quest-work",
        },
        {
            priority = 800,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "accept-1739-the-binding", "objective-1739-quest-work" },
            id = "turnin-1739-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1739-the-binding",
        },
        {
            priority = 810,
            route = {
                { y = 0.57, mapID = 1413, label = "Takar the Seer", x = 0.492, offMapText = "Travel to Takar the Seer in The Barrens." },
            },
            dependsOn = { "turnin-1716-devourer-of-souls" },
            id = "accept-65602-what-is-love",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-65602-what-is-love",
        },
        {
            priority = 820,
            id = "objective-65602-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            dependsOn = { "accept-65602-what-is-love" },
            classAction = "objective-65602-quest-work",
        },
        {
            priority = 830,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "accept-65602-what-is-love", "objective-65602-quest-work" },
            id = "turnin-65602-what-is-love",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-65602-what-is-love",
        },
        {
            priority = 840,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "turnin-65602-what-is-love" },
            id = "accept-65603-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-65603-the-binding",
        },
        {
            priority = 850,
            id = "objective-65603-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            dependsOn = { "accept-65603-the-binding" },
            classAction = "objective-65603-quest-work",
        },
        {
            priority = 860,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "accept-65603-the-binding", "objective-65603-quest-work" },
            id = "turnin-65603-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-65603-the-binding",
        },
        {
            id = "level-before-accept-1507-devourer-of-souls",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1507,
            alternativeQuests = { 1472 },
            priority = 870,
        },
        {
            priority = 880,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "turnin-1504-the-binding" },
            id = "accept-1507-devourer-of-souls",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1507-devourer-of-souls",
        },
        {
            priority = 890,
            route = {
                { y = 0.466, mapID = 1454, label = "Cazul", x = 0.472, offMapText = "Travel to Cazul in Orgrimmar." },
            },
            dependsOn = { "accept-1507-devourer-of-souls" },
            id = "turnin-1507-devourer-of-souls",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1507-devourer-of-souls",
        },
        {
            priority = 900,
            route = {
                { y = 0.466, mapID = 1454, label = "Cazul", x = 0.472, offMapText = "Travel to Cazul in Orgrimmar." },
            },
            dependsOn = { "turnin-1507-devourer-of-souls" },
            id = "accept-65601-love-hurts",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-65601-love-hurts",
        },
        {
            priority = 910,
            route = {
                { y = 0.5, mapID = 1454, label = "Magar", x = 0.634, offMapText = "Travel to Magar in Orgrimmar." },
            },
            dependsOn = { "accept-65601-love-hurts" },
            id = "turnin-65601-love-hurts",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-65601-love-hurts",
        },
        {
            priority = 920,
            route = {
                { y = 0.5, mapID = 1454, label = "Magar", x = 0.634, offMapText = "Travel to Magar in Orgrimmar." },
            },
            dependsOn = { "turnin-65601-love-hurts" },
            id = "accept-65610-wish-you-were-here",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-65610-wish-you-were-here",
        },
        {
            priority = 930,
            id = "objective-65610-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            dependsOn = { "accept-65610-wish-you-were-here" },
            classAction = "objective-65610-quest-work",
        },
        {
            priority = 940,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "accept-65610-wish-you-were-here", "objective-65610-quest-work" },
            id = "turnin-65610-wish-you-were-here",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-65610-wish-you-were-here",
        },
        {
            priority = 950,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "turnin-65610-wish-you-were-here" },
            id = "accept-65604-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-65604-the-binding",
        },
        {
            priority = 960,
            id = "objective-65604-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            dependsOn = { "accept-65604-the-binding" },
            classAction = "objective-65604-quest-work",
        },
        {
            priority = 970,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "accept-65604-the-binding", "objective-65604-quest-work" },
            id = "turnin-65604-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-65604-the-binding",
        },
        {
            priority = 980,
            route = {
                { y = 0.466, mapID = 1454, label = "Cazul", x = 0.472, offMapText = "Travel to Cazul in Orgrimmar." },
            },
            dependsOn = { "turnin-1507-devourer-of-souls" },
            id = "accept-1508-blind-cazul",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1508-blind-cazul",
        },
        {
            priority = 990,
            route = {
                { y = 0.596, mapID = 1454, label = "Zankaja", x = 0.37, offMapText = "Travel to Zankaja in Orgrimmar." },
            },
            dependsOn = { "accept-1508-blind-cazul" },
            id = "turnin-1508-blind-cazul",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1508-blind-cazul",
        },
        {
            priority = 1000,
            route = {
                { y = 0.596, mapID = 1454, label = "Zankaja", x = 0.37, offMapText = "Travel to Zankaja in Orgrimmar." },
            },
            dependsOn = { "turnin-1508-blind-cazul" },
            id = "accept-1509-news-of-dogran",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1509-news-of-dogran",
        },
        {
            priority = 1010,
            route = {
                { y = 0.302, mapID = 1413, label = "Gazrog", x = 0.518, offMapText = "Travel to Gazrog in The Barrens." },
            },
            dependsOn = { "accept-1509-news-of-dogran" },
            id = "turnin-1509-news-of-dogran",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1509-news-of-dogran",
        },
        {
            priority = 1020,
            route = {
                { y = 0.302, mapID = 1413, label = "Gazrog", x = 0.518, offMapText = "Travel to Gazrog in The Barrens." },
            },
            dependsOn = { "turnin-1509-news-of-dogran" },
            id = "accept-1510-news-of-dogran",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1510-news-of-dogran",
        },
        {
            priority = 1030,
            route = {
                { y = 0.95, mapID = 1442, label = "Ken'zigla", x = 0.732, offMapText = "Travel to Ken'zigla in Stonetalon Mountains." },
            },
            dependsOn = { "accept-1510-news-of-dogran" },
            id = "turnin-1510-news-of-dogran",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1510-news-of-dogran",
        },
        {
            priority = 1040,
            route = {
                { y = 0.95, mapID = 1442, label = "Ken'zigla", x = 0.732, offMapText = "Travel to Ken'zigla in Stonetalon Mountains." },
            },
            dependsOn = { "turnin-1510-news-of-dogran" },
            id = "accept-1511-kenziglas-draught",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1511-kenziglas-draught",
        },
        {
            priority = 1050,
            route = {
                { y = 0.592, mapID = 1413, label = "Grunt Logmar", x = 0.446, offMapText = "Travel to Grunt Logmar in The Barrens." },
            },
            dependsOn = { "accept-1511-kenziglas-draught" },
            id = "turnin-1511-kenziglas-draught",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1511-kenziglas-draught",
        },
        {
            priority = 1060,
            route = {
                { y = 0.592, mapID = 1413, label = "Grunt Logmar", x = 0.446, offMapText = "Travel to Grunt Logmar in The Barrens." },
            },
            dependsOn = { "turnin-1511-kenziglas-draught" },
            id = "accept-1515-dograns-captivity",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1515-dograns-captivity",
        },
        {
            priority = 1070,
            route = {
                { y = 0.478, mapID = 1413, label = "Grunt Dogran", x = 0.432, offMapText = "Travel to Grunt Dogran in The Barrens." },
            },
            dependsOn = { "accept-1515-dograns-captivity" },
            id = "turnin-1515-dograns-captivity",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1515-dograns-captivity",
        },
        {
            priority = 1080,
            route = {
                { y = 0.478, mapID = 1413, label = "Grunt Dogran", x = 0.432, offMapText = "Travel to Grunt Dogran in The Barrens." },
            },
            dependsOn = { "turnin-1515-dograns-captivity" },
            id = "accept-1512-loves-gift",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1512-loves-gift",
        },
        {
            priority = 1090,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "accept-1512-loves-gift" },
            id = "turnin-1512-loves-gift",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1512-loves-gift",
        },
        {
            priority = 1100,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "turnin-1512-loves-gift" },
            id = "accept-1513-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1513-the-binding",
        },
        {
            priority = 1110,
            route = {
                { mapID = 1454, x = 0.49450000000000005, y = 0.5003, label = "Summoned Succubus", offMapText = "Travel to Summoned Succubus." },
            },
            id = "objective-1513-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            dependsOn = { "accept-1513-the-binding" },
            classAction = "objective-1513-quest-work",
        },
        {
            priority = 1120,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "accept-1513-the-binding", "objective-1513-quest-work" },
            id = "turnin-1513-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1513-the-binding",
        },
        {
            priority = 1130,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            id = "accept-1472-devourer-of-souls",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1472-devourer-of-souls",
        },
        {
            priority = 1140,
            route = {
                { y = 0.148, mapID = 1458, label = "Godrick Farsan", x = 0.85, offMapText = "Travel to Godrick Farsan in Undercity." },
            },
            dependsOn = { "accept-1472-devourer-of-souls" },
            id = "turnin-1472-devourer-of-souls",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1472-devourer-of-souls",
        },
        {
            priority = 1150,
            route = {
                { y = 0.148, mapID = 1458, label = "Godrick Farsan", x = 0.85, offMapText = "Travel to Godrick Farsan in Undercity." },
            },
            dependsOn = { "turnin-1472-devourer-of-souls" },
            id = "accept-65593-hearts-of-the-lovers",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-65593-hearts-of-the-lovers",
        },
        {
            priority = 1160,
            id = "objective-65593-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            dependsOn = { "accept-65593-hearts-of-the-lovers" },
            classAction = "objective-65593-quest-work",
        },
        {
            priority = 1170,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "accept-65593-hearts-of-the-lovers", "objective-65593-quest-work" },
            id = "turnin-65593-hearts-of-the-lovers",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-65593-hearts-of-the-lovers",
        },
        {
            priority = 1180,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "turnin-65593-hearts-of-the-lovers" },
            id = "accept-65597-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-65597-the-binding",
        },
        {
            priority = 1190,
            id = "objective-65597-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            dependsOn = { "accept-65597-the-binding" },
            classAction = "objective-65597-quest-work",
        },
        {
            priority = 1200,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "accept-65597-the-binding", "objective-65597-quest-work" },
            id = "turnin-65597-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-65597-the-binding",
        },
        {
            priority = 1210,
            route = {
                { y = 0.148, mapID = 1458, label = "Godrick Farsan", x = 0.85, offMapText = "Travel to Godrick Farsan in Undercity." },
            },
            id = "accept-1476-hearts-of-the-pure",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1476-hearts-of-the-pure",
        },
        {
            priority = 1220,
            id = "objective-1476-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            dependsOn = { "accept-1476-hearts-of-the-pure" },
            classAction = "objective-1476-quest-work",
        },
        {
            priority = 1230,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "accept-1476-hearts-of-the-pure", "objective-1476-quest-work" },
            id = "turnin-1476-hearts-of-the-pure",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1476-hearts-of-the-pure",
        },
        {
            priority = 1240,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "turnin-1476-hearts-of-the-pure" },
            id = "accept-1474-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "accept-1474-the-binding",
        },
        {
            priority = 1250,
            id = "objective-1474-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            dependsOn = { "accept-1474-the-binding" },
            classAction = "objective-1474-quest-work",
        },
        {
            priority = 1260,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            dependsOn = { "accept-1474-the-binding", "objective-1474-quest-work" },
            id = "turnin-1474-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
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
            classAction = "turnin-1474-the-binding",
        },
        {
            id = "level-before-accept-1798-seeking-strahad",
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
            checkpointQuest = 1798,
            priority = 1270,
        },
        {
            priority = 1280,
            route = {
                { y = 0.784, mapID = 1453, label = "Gakin the Darkbinder", x = 0.254, offMapText = "Travel to Gakin the Darkbinder in Stormwind City." },
            },
            dependsOn = { "turnin-1739-the-binding" },
            id = "accept-1798-seeking-strahad",
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
            classAction = "accept-1798-seeking-strahad",
        },
        {
            priority = 1290,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "accept-1798-seeking-strahad" },
            id = "turnin-1798-seeking-strahad",
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
            classAction = "turnin-1798-seeking-strahad",
        },
        {
            priority = 1300,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "turnin-1798-seeking-strahad" },
            id = "accept-1758-tome-of-the-cabal",
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
            classAction = "accept-1758-tome-of-the-cabal",
        },
        {
            priority = 1310,
            route = {
                { y = 0.098, mapID = 1455, label = "Krom Stoutarm", x = 0.742, offMapText = "Travel to Krom Stoutarm in Ironforge." },
            },
            dependsOn = { "accept-1758-tome-of-the-cabal" },
            id = "turnin-1758-tome-of-the-cabal",
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
            classAction = "turnin-1758-tome-of-the-cabal",
        },
        {
            priority = 1320,
            route = {
                { y = 0.098, mapID = 1455, label = "Krom Stoutarm", x = 0.742, offMapText = "Travel to Krom Stoutarm in Ironforge." },
            },
            dependsOn = { "turnin-1758-tome-of-the-cabal" },
            id = "accept-1802-tome-of-the-cabal",
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
            priority = 1330,
            id = "objective-1802-book-1",
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
            dependsOn = { "accept-1802-tome-of-the-cabal" },
            route = {
                { mapID = 1424, x = 0.2778, y = 0.7278, label = "Moldy Tome", offMapText = "Travel to Moldy Tome." },
            },
            classAction = "objective-1802-book-1",
        },
        {
            priority = 1340,
            id = "objective-1802-book-2",
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
            dependsOn = { "accept-1802-tome-of-the-cabal" },
            route = {
                { mapID = 1441, x = 0.4343, y = 0.32689999999999997, label = "Tattered Manuscript", offMapText = "Travel to Tattered Manuscript." },
            },
            classAction = "objective-1802-book-2",
        },
        {
            priority = 1350,
            route = {
                { y = 0.098, mapID = 1455, label = "Krom Stoutarm", x = 0.742, offMapText = "Travel to Krom Stoutarm in Ironforge." },
            },
            dependsOn = { "accept-1802-tome-of-the-cabal", "objective-1802-book-1", "objective-1802-book-2" },
            id = "turnin-1802-tome-of-the-cabal",
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
            priority = 1360,
            route = {
                { y = 0.098, mapID = 1455, label = "Krom Stoutarm", x = 0.742, offMapText = "Travel to Krom Stoutarm in Ironforge." },
            },
            dependsOn = { "turnin-1802-tome-of-the-cabal", "turnin-1758-tome-of-the-cabal" },
            id = "accept-1804-tome-of-the-cabal",
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
            priority = 1370,
            id = "objective-1804-quest-work",
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
            dependsOn = { "accept-1804-tome-of-the-cabal" },
            classAction = "objective-1804-quest-work",
        },
        {
            priority = 1380,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "accept-1804-tome-of-the-cabal", "objective-1804-quest-work" },
            id = "turnin-1804-tome-of-the-cabal",
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
            id = "level-before-accept-2996-seeking-strahad",
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
                        race = { 2, 5, 6, 8, 96 },
                    },
                    {
                        race = { 2, 5 },
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
            checkpointQuest = 2996,
            priority = 1390,
        },
        {
            priority = 1400,
            route = {
                { y = 0.456, mapID = 1454, label = "Gan'rul Bloodeye", x = 0.482, offMapText = "Travel to Gan'rul Bloodeye in Orgrimmar." },
            },
            dependsOn = { "turnin-1513-the-binding" },
            id = "accept-2996-seeking-strahad",
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
            priority = 1410,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "accept-2996-seeking-strahad" },
            id = "turnin-2996-seeking-strahad",
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
            priority = 1420,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "turnin-2996-seeking-strahad" },
            id = "accept-1801-tome-of-the-cabal",
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
            priority = 1430,
            route = {
                { y = 0.376, mapID = 1458, label = "Jorah Annison", x = 0.76, offMapText = "Travel to Jorah Annison in Undercity." },
            },
            dependsOn = { "accept-1801-tome-of-the-cabal" },
            id = "turnin-1801-tome-of-the-cabal",
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
            priority = 1440,
            route = {
                { y = 0.376, mapID = 1458, label = "Jorah Annison", x = 0.76, offMapText = "Travel to Jorah Annison in Undercity." },
            },
            id = "accept-1803-tome-of-the-cabal",
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
            priority = 1450,
            id = "objective-1803-book-1",
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
            dependsOn = { "accept-1803-tome-of-the-cabal" },
            route = {
                { mapID = 1424, x = 0.2778, y = 0.7278, label = "Moldy Tome", offMapText = "Travel to Moldy Tome." },
            },
            classAction = "objective-1803-book-1",
        },
        {
            priority = 1460,
            id = "objective-1803-book-2",
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
            dependsOn = { "accept-1803-tome-of-the-cabal" },
            route = {
                { mapID = 1441, x = 0.4343, y = 0.32689999999999997, label = "Tattered Manuscript", offMapText = "Travel to Tattered Manuscript." },
            },
            classAction = "objective-1803-book-2",
        },
        {
            priority = 1470,
            route = {
                { y = 0.376, mapID = 1458, label = "Jorah Annison", x = 0.76, offMapText = "Travel to Jorah Annison in Undercity." },
            },
            dependsOn = { "accept-1803-tome-of-the-cabal", "objective-1803-book-1", "objective-1803-book-2" },
            id = "turnin-1803-tome-of-the-cabal",
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
            priority = 1480,
            route = {
                { y = 0.376, mapID = 1458, label = "Jorah Annison", x = 0.76, offMapText = "Travel to Jorah Annison in Undercity." },
            },
            dependsOn = { "turnin-1803-tome-of-the-cabal" },
            id = "accept-1805-tome-of-the-cabal",
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
            priority = 1490,
            id = "objective-1805-quest-work",
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
            dependsOn = { "accept-1805-tome-of-the-cabal" },
            classAction = "objective-1805-quest-work",
        },
        {
            priority = 1500,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "accept-1805-tome-of-the-cabal", "objective-1805-quest-work" },
            id = "turnin-1805-tome-of-the-cabal",
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
            id = "level-before-accept-1795-the-binding",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
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
            priority = 1510,
        },
        {
            priority = 1520,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "turnin-1805-tome-of-the-cabal" },
            id = "accept-1795-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
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
            priority = 1530,
            id = "objective-1795-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 2, 5, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1795-the-binding" },
            classAction = "objective-1795-quest-work",
        },
        {
            priority = 1540,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "accept-1795-the-binding", "objective-1795-quest-work" },
            id = "turnin-1795-the-binding",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
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
            priority = 1550,
            route = {
                { y = 0.256, mapID = 1458, label = "Carendin Halgar", x = 0.85, offMapText = "Travel to Carendin Halgar in Undercity." },
            },
            id = "accept-3001-seeking-strahad",
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
            priority = 1560,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "accept-3001-seeking-strahad" },
            id = "turnin-3001-seeking-strahad",
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
            id = "level-before-accept-4736-in-search-of-menara-voidrender",
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
            checkpointQuest = 4736,
            alternativeQuests = { 4737, 4738, 4739 },
            priority = 1570,
        },
        {
            priority = 1580,
            route = {
                { y = 0.06, mapID = 1455, label = "Briarthorn", x = 0.502, offMapText = "Travel to Briarthorn in Ironforge." },
            },
            id = "accept-4736-in-search-of-menara-voidrender",
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
            priority = 1590,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4736-in-search-of-menara-voidrender" },
            id = "turnin-4736-in-search-of-menara-voidrender",
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
            id = "level-before-accept-4737-in-search-of-menara-voidrender",
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
            checkpointQuest = 4737,
            alternativeQuests = { 4736, 4738, 4739 },
            priority = 1600,
        },
        {
            priority = 1610,
            route = {
                { y = 0.456, mapID = 1454, label = "Zevrost", x = 0.484, offMapText = "Travel to Zevrost in Orgrimmar." },
            },
            id = "accept-4737-in-search-of-menara-voidrender",
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
            priority = 1620,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4737-in-search-of-menara-voidrender" },
            id = "turnin-4737-in-search-of-menara-voidrender",
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
            priority = 1630,
            route = {
                { y = 0.782, mapID = 1453, label = "Demisette Cloyce", x = 0.254, offMapText = "Travel to Demisette Cloyce in Stormwind City." },
            },
            id = "accept-4738-in-search-of-menara-voidrender",
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
            priority = 1640,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4738-in-search-of-menara-voidrender" },
            id = "turnin-4738-in-search-of-menara-voidrender",
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
            priority = 1650,
            route = {
                { y = 0.156, mapID = 1458, label = "Kaal Soulreaper", x = 0.86, offMapText = "Travel to Kaal Soulreaper in Undercity." },
            },
            id = "accept-4739-in-search-of-menara-voidrender",
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
            priority = 1660,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4739-in-search-of-menara-voidrender" },
            id = "turnin-4739-in-search-of-menara-voidrender",
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
            id = "level-before-accept-1796-components-for-the-enchanted-gold-bloodrobe",
            kind = "note",
            text = "Reach level 31 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            checkpointQuest = 1796,
            priority = 1670,
        },
        {
            priority = 1680,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "turnin-4739-in-search-of-menara-voidrender" },
            id = "accept-1796-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1796-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 1690,
            id = "objective-1796-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1796-components-for-the-enchanted-gold-bloodrobe" },
            classAction = "objective-1796-quest-work",
        },
        {
            priority = 1700,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-1796-components-for-the-enchanted-gold-bloodrobe", "objective-1796-quest-work" },
            id = "turnin-1796-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1796-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 1710,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "turnin-1796-components-for-the-enchanted-gold-bloodrobe" },
            id = "accept-4781-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4781-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 1720,
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
            dependsOn = { "accept-4781-components-for-the-enchanted-gold-bloodrobe" },
            id = "objective-4781-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-4781-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 1730,
            route = {
                { y = 0.768, mapID = 1434, label = "Xizk Goodstitch", x = 0.286, offMapText = "Travel to Xizk Goodstitch in Stranglethorn Vale." },
            },
            dependsOn = {
                "accept-4781-components-for-the-enchanted-gold-bloodrobe",
                "objective-4781-components-for-the-enchanted-gold-bloodrobe",
            },
            id = "turnin-4781-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4781-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 1740,
            route = {
                { y = 0.768, mapID = 1434, label = "Xizk Goodstitch", x = 0.286, offMapText = "Travel to Xizk Goodstitch in Stranglethorn Vale." },
            },
            dependsOn = { "turnin-4781-components-for-the-enchanted-gold-bloodrobe" },
            id = "accept-4782-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4782-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 1750,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4782-components-for-the-enchanted-gold-bloodrobe" },
            id = "turnin-4782-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4782-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 1760,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "turnin-4782-components-for-the-enchanted-gold-bloodrobe" },
            id = "accept-4783-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4783-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 1770,
            id = "objective-4783-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-4783-components-for-the-enchanted-gold-bloodrobe" },
            classAction = "objective-4783-quest-work",
        },
        {
            priority = 1780,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4783-components-for-the-enchanted-gold-bloodrobe", "objective-4783-quest-work" },
            id = "turnin-4783-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4783-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 1790,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "turnin-4783-components-for-the-enchanted-gold-bloodrobe" },
            id = "accept-4784-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4784-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 1800,
            id = "objective-4784-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-4784-components-for-the-enchanted-gold-bloodrobe" },
            classAction = "objective-4784-quest-work",
        },
        {
            priority = 1810,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4784-components-for-the-enchanted-gold-bloodrobe", "objective-4784-quest-work" },
            id = "turnin-4784-components-for-the-enchanted-gold-bloodrobe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4784-components-for-the-enchanted-gold-bloodrobe",
        },
        {
            priority = 1820,
            route = {
                { y = 0.768, mapID = 1434, label = "Xizk Goodstitch", x = 0.286, offMapText = "Travel to Xizk Goodstitch in Stranglethorn Vale." },
            },
            id = "accept-4785-fine-gold-thread",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
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
            priority = 1830,
            route = {
                { y = 0.768, mapID = 1434, label = "Xizk Goodstitch", x = 0.286, offMapText = "Travel to Xizk Goodstitch in Stranglethorn Vale." },
            },
            dependsOn = { "accept-4785-fine-gold-thread" },
            id = "turnin-4785-fine-gold-thread",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4785-fine-gold-thread",
        },
        {
            priority = 1840,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "turnin-4784-components-for-the-enchanted-gold-bloodrobe" },
            id = "accept-4786-the-completed-robe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4786-the-completed-robe",
        },
        {
            priority = 1850,
            id = "objective-4786-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-4786-the-completed-robe" },
            classAction = "objective-4786-quest-work",
        },
        {
            priority = 1860,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4786-the-completed-robe", "objective-4786-quest-work" },
            id = "turnin-4786-the-completed-robe",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 31 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4786-the-completed-robe",
        },
        {
            id = "level-before-accept-4962-shard-of-a-felhound",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                },
            },
            complete = {
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4962,
            alternativeQuests = { 4963 },
            priority = 1870,
        },
        {
            priority = 1880,
            route = {
                { y = 0.352, mapID = 1413, label = "Acolyte Wytula", x = 0.626, offMapText = "Travel to Acolyte Wytula in The Barrens." },
            },
            id = "accept-4962-shard-of-a-felhound",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4962-shard-of-a-felhound",
        },
        {
            priority = 1890,
            id = "objective-4962-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-4962-shard-of-a-felhound" },
            classAction = "objective-4962-quest-work",
        },
        {
            priority = 1900,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4962-shard-of-a-felhound", "objective-4962-quest-work" },
            id = "turnin-4962-shard-of-a-felhound",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4962-shard-of-a-felhound",
        },
        {
            priority = 1910,
            route = {
                { y = 0.352, mapID = 1413, label = "Acolyte Magaz", x = 0.626, offMapText = "Travel to Acolyte Magaz in The Barrens." },
            },
            id = "accept-4963-shard-of-an-infernal",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4963-shard-of-an-infernal",
        },
        {
            priority = 1920,
            id = "objective-4963-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-4963-shard-of-an-infernal" },
            classAction = "objective-4963-quest-work",
        },
        {
            priority = 1930,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4963-shard-of-an-infernal", "objective-4963-quest-work" },
            id = "turnin-4963-shard-of-an-infernal",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4963-shard-of-an-infernal",
        },
        {
            id = "level-before-accept-4965-knowledge-of-the-orb-of-orahil",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4965,
            alternativeQuests = { 4967, 4968, 4969 },
            priority = 1940,
        },
        {
            priority = 1950,
            route = {
                { y = 0.06, mapID = 1455, label = "Briarthorn", x = 0.502, offMapText = "Travel to Briarthorn in Ironforge." },
            },
            id = "accept-4965-knowledge-of-the-orb-of-orahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
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
            classAction = "accept-4965-knowledge-of-the-orb-of-orahil",
        },
        {
            priority = 1960,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4965-knowledge-of-the-orb-of-orahil" },
            id = "turnin-4965-knowledge-of-the-orb-of-orahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
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
            classAction = "turnin-4965-knowledge-of-the-orb-of-orahil",
        },
        {
            id = "level-before-accept-4967-knowledge-of-the-orb-of-orahil",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4967,
            alternativeQuests = { 4965, 4968, 4969 },
            priority = 1970,
        },
        {
            priority = 1980,
            route = {
                { y = 0.456, mapID = 1454, label = "Zevrost", x = 0.484, offMapText = "Travel to Zevrost in Orgrimmar." },
            },
            id = "accept-4967-knowledge-of-the-orb-of-orahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
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
            classAction = "accept-4967-knowledge-of-the-orb-of-orahil",
        },
        {
            priority = 1990,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4967-knowledge-of-the-orb-of-orahil" },
            id = "turnin-4967-knowledge-of-the-orb-of-orahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
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
            classAction = "turnin-4967-knowledge-of-the-orb-of-orahil",
        },
        {
            priority = 2000,
            route = {
                { y = 0.782, mapID = 1453, label = "Demisette Cloyce", x = 0.254, offMapText = "Travel to Demisette Cloyce in Stormwind City." },
            },
            id = "accept-4968-knowledge-of-the-orb-of-orahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
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
            classAction = "accept-4968-knowledge-of-the-orb-of-orahil",
        },
        {
            priority = 2010,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4968-knowledge-of-the-orb-of-orahil" },
            id = "turnin-4968-knowledge-of-the-orb-of-orahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
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
            classAction = "turnin-4968-knowledge-of-the-orb-of-orahil",
        },
        {
            priority = 2020,
            route = {
                { y = 0.156, mapID = 1458, label = "Kaal Soulreaper", x = 0.86, offMapText = "Travel to Kaal Soulreaper in Undercity." },
            },
            id = "accept-4969-knowledge-of-the-orb-of-orahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
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
            classAction = "accept-4969-knowledge-of-the-orb-of-orahil",
        },
        {
            priority = 2030,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4969-knowledge-of-the-orb-of-orahil" },
            id = "turnin-4969-knowledge-of-the-orb-of-orahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
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
            classAction = "turnin-4969-knowledge-of-the-orb-of-orahil",
        },
        {
            priority = 2040,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "turnin-4969-knowledge-of-the-orb-of-orahil" },
            id = "accept-1799-fragments-of-the-orb-of-orahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1799-fragments-of-the-orb-of-orahil",
        },
        {
            priority = 2050,
            id = "objective-1799-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1799-fragments-of-the-orb-of-orahil" },
            classAction = "objective-1799-quest-work",
        },
        {
            priority = 2060,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "accept-1799-fragments-of-the-orb-of-orahil", "objective-1799-quest-work" },
            id = "turnin-1799-fragments-of-the-orb-of-orahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1799-fragments-of-the-orb-of-orahil",
        },
        {
            priority = 2070,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "turnin-1799-fragments-of-the-orb-of-orahil" },
            id = "accept-4961-cleansing-of-the-orb-of-orahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4961-cleansing-of-the-orb-of-orahil",
        },
        {
            priority = 2080,
            id = "objective-4961-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-4961-cleansing-of-the-orb-of-orahil" },
            classAction = "objective-4961-quest-work",
        },
        {
            priority = 2090,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "accept-4961-cleansing-of-the-orb-of-orahil", "objective-4961-quest-work" },
            id = "turnin-4961-cleansing-of-the-orb-of-orahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4961-cleansing-of-the-orb-of-orahil",
        },
        {
            priority = 2100,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "turnin-4961-cleansing-of-the-orb-of-orahil" },
            id = "accept-4976-returning-the-cleansed-orb",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4976-returning-the-cleansed-orb",
        },
        {
            priority = 2110,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4976-returning-the-cleansed-orb" },
            id = "turnin-4976-returning-the-cleansed-orb",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4976-returning-the-cleansed-orb",
        },
        {
            priority = 2120,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "turnin-4976-returning-the-cleansed-orb" },
            id = "accept-4964-the-completed-orb-of-darorahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4964-the-completed-orb-of-darorahil",
        },
        {
            priority = 2130,
            id = "objective-4964-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-4964-the-completed-orb-of-darorahil" },
            classAction = "objective-4964-quest-work",
        },
        {
            priority = 2140,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4964-the-completed-orb-of-darorahil", "objective-4964-quest-work" },
            id = "turnin-4964-the-completed-orb-of-darorahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4964-the-completed-orb-of-darorahil",
        },
        {
            priority = 2150,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "turnin-4976-returning-the-cleansed-orb" },
            id = "accept-4975-the-completed-orb-of-nohorahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-4975-the-completed-orb-of-nohorahil",
        },
        {
            priority = 2160,
            id = "objective-4975-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-4975-the-completed-orb-of-nohorahil" },
            classAction = "objective-4975-quest-work",
        },
        {
            priority = 2170,
            route = {
                { y = 0.354, mapID = 1413, label = "Menara Voidrender", x = 0.624, offMapText = "Travel to Menara Voidrender in The Barrens." },
            },
            dependsOn = { "accept-4975-the-completed-orb-of-nohorahil", "objective-4975-quest-work" },
            id = "turnin-4975-the-completed-orb-of-nohorahil",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4975-the-completed-orb-of-nohorahil",
        },
        {
            id = "level-before-accept-4487-summon-felsteed",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4487,
            alternativeQuests = { 3631, 4488, 4489 },
            priority = 2180,
        },
        {
            priority = 2190,
            route = {
                { y = 0.06, mapID = 1455, label = "Briarthorn", x = 0.502, offMapText = "Travel to Briarthorn in Ironforge." },
            },
            id = "accept-4487-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
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
            classAction = "accept-4487-summon-felsteed",
        },
        {
            priority = 2200,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "accept-4487-summon-felsteed" },
            id = "turnin-4487-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
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
            classAction = "turnin-4487-summon-felsteed",
        },
        {
            priority = 2210,
            route = {
                { y = 0.782, mapID = 1453, label = "Demisette Cloyce", x = 0.254, offMapText = "Travel to Demisette Cloyce in Stormwind City." },
            },
            id = "accept-4488-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
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
            classAction = "accept-4488-summon-felsteed",
        },
        {
            priority = 2220,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "accept-4488-summon-felsteed" },
            id = "turnin-4488-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 40 },
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
            classAction = "turnin-4488-summon-felsteed",
        },
        {
            id = "level-before-accept-3631-summon-felsteed",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 40 },
            },
            requiredLevel = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3631,
            alternativeQuests = { 4487, 4488, 4489 },
            priority = 2230,
        },
        {
            priority = 2240,
            route = {
                { y = 0.456, mapID = 1454, label = "Zevrost", x = 0.484, offMapText = "Travel to Zevrost in Orgrimmar." },
            },
            id = "accept-3631-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
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
            classAction = "accept-3631-summon-felsteed",
        },
        {
            priority = 2250,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "accept-3631-summon-felsteed" },
            id = "turnin-3631-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
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
            classAction = "turnin-3631-summon-felsteed",
        },
        {
            priority = 2260,
            route = {
                { y = 0.156, mapID = 1458, label = "Kaal Soulreaper", x = 0.86, offMapText = "Travel to Kaal Soulreaper in Undercity." },
            },
            id = "accept-4489-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
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
            classAction = "accept-4489-summon-felsteed",
        },
        {
            priority = 2270,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "accept-4489-summon-felsteed" },
            id = "turnin-4489-summon-felsteed",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
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
            classAction = "turnin-4489-summon-felsteed",
        },
        {
            id = "level-before-accept-4490-summon-felsteed",
            kind = "note",
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        any = {
                            {},
                            {},
                            {},
                            {},
                            {},
                        },
                    },
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        race = { 1, 2, 5, 7 },
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
            checkpointQuest = 4490,
            priority = 2280,
        },
        {
            priority = 2290,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            id = "accept-4490-summon-felsteed",
            conditions = {
                all = {
                    {
                        any = {
                            {},
                            {},
                            {},
                            {},
                            {},
                        },
                    },
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 2, 5, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-4490-summon-felsteed",
        },
        {
            priority = 2300,
            route = {
                { y = 0.354, mapID = 1413, label = "Strahad Farsan", x = 0.626, offMapText = "Travel to Strahad Farsan in The Barrens." },
            },
            dependsOn = { "accept-4490-summon-felsteed" },
            id = "turnin-4490-summon-felsteed",
            conditions = {
                all = {
                    {
                        any = {
                            {},
                            {},
                            {},
                            {},
                            {},
                        },
                    },
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 1, 2, 5, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-4490-summon-felsteed",
        },
        {
            id = "level-before-accept-7601-what-niby-commands",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            checkpointQuest = 7601,
            priority = 2310,
        },
        {
            priority = 2320,
            route = {
                { y = 0.448, mapID = 1448, label = "Niby the Almighty", x = 0.414, offMapText = "Travel to Niby the Almighty in Felwood." },
            },
            id = "accept-7601-what-niby-commands",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7601-what-niby-commands",
        },
        {
            priority = 2330,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "accept-7601-what-niby-commands" },
            id = "turnin-7601-what-niby-commands",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7601-what-niby-commands",
        },
        {
            priority = 2340,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "turnin-7601-what-niby-commands" },
            id = "accept-7602-flawless-fel-essence",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7602-flawless-fel-essence",
        },
        {
            priority = 2350,
            dependsOn = { "accept-7602-flawless-fel-essence" },
            id = "objective-7602-flawless-fel-essence",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7602-flawless-fel-essence",
        },
        {
            priority = 2360,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "accept-7602-flawless-fel-essence", "objective-7602-flawless-fel-essence" },
            id = "turnin-7602-flawless-fel-essence",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7602-flawless-fel-essence",
        },
        {
            id = "level-before-accept-8419-an-imps-request",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8419,
            alternativeQuests = { 8420 },
            priority = 2370,
        },
        {
            priority = 2380,
            route = {
                { y = 0.782, mapID = 1453, label = "Demisette Cloyce", x = 0.254, offMapText = "Travel to Demisette Cloyce in Stormwind City." },
            },
            id = "accept-8419-an-imps-request",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8419-an-imps-request",
        },
        {
            id = "level-before-accept-8419-an-imps-request-horde",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8419,
            alternativeQuests = { 8420 },
            priority = 2390,
        },
        {
            priority = 2400,
            route = {
                { y = 0.156, mapID = 1458, label = "Kaal Soulreaper", x = 0.86, offMapText = "Travel to Kaal Soulreaper in Undercity." },
            },
            id = "accept-8419-an-imps-request-horde",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8419-an-imps-request-horde",
        },
        {
            priority = 2410,
            id = "objective-8419-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-8419-an-imps-request", "accept-8419-an-imps-request-horde" },
            classAction = "objective-8419-quest-work",
        },
        {
            priority = 2420,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "accept-8419-an-imps-request", "objective-8419-quest-work", "accept-8419-an-imps-request-horde" },
            id = "turnin-8419-an-imps-request",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8419-an-imps-request",
        },
        {
            priority = 2430,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "turnin-8419-an-imps-request", "turnin-7601-what-niby-commands" },
            id = "accept-8420-hot-and-itchy",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8420-hot-and-itchy",
        },
        {
            priority = 2440,
            route = {
                { y = 0.666, mapID = 1448, label = "Jadefire Rogue", x = 0.334, offMapText = "Travel to Jadefire Rogue in Felwood." },
                { y = 0.19, mapID = 1448, label = "Jadefire Trickster", x = 0.41, offMapText = "Travel to Jadefire Trickster in Felwood." },
                { y = 0.214, mapID = 1448, label = "Jadefire Betrayer", x = 0.392, offMapText = "Travel to Jadefire Betrayer in Felwood." },
                { y = 0.668, mapID = 1448, label = "Jadefire Felsworn", x = 0.354, offMapText = "Travel to Jadefire Felsworn in Felwood." },
                { y = 0.666, mapID = 1448, label = "Jadefire Shadowstalker", x = 0.35, offMapText = "Travel to Jadefire Shadowstalker in Felwood." },
                { y = 0.17, mapID = 1448, label = "Jadefire Hellcaller", x = 0.422, offMapText = "Travel to Jadefire Hellcaller in Felwood." },
                { y = 0.67, mapID = 1448, label = "Xavathras", x = 0.324, offMapText = "Travel to Xavathras in Felwood." },
                { y = 0.446, mapID = 1448, label = "Lord Banehollow", x = 0.36, offMapText = "Travel to Lord Banehollow in Felwood." },
                { y = 0.506, mapID = 1448, label = "Rakaiah", x = 0.38, offMapText = "Travel to Rakaiah in Felwood." },
                { y = 0.468, mapID = 1448, label = "Salia", x = 0.388, offMapText = "Travel to Salia in Felwood." },
                { y = 0.468, mapID = 1448, label = "Moora", x = 0.388, offMapText = "Travel to Moora in Felwood." },
                { y = 0.532, mapID = 1448, label = "Jaedenar Legionnaire", x = 0.374, offMapText = "Travel to Jaedenar Legionnaire in Felwood." },
                { y = 0.566, mapID = 1448, label = "Prince Xavalis", x = 0.366, offMapText = "Travel to Prince Xavalis in Felwood." },
                { y = 0.222, mapID = 1448, label = "Xavaric", x = 0.39, offMapText = "Travel to Xavaric in Felwood." },
                { y = 0.862, mapID = 1448, label = "Alshirr Banebreath", x = 0.42, offMapText = "Travel to Alshirr Banebreath in Felwood." },
            },
            dependsOn = { "accept-8420-hot-and-itchy" },
            id = "objective-8420-hot-and-itchy",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8420-hot-and-itchy",
        },
        {
            priority = 2450,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "accept-8420-hot-and-itchy", "objective-8420-hot-and-itchy" },
            id = "turnin-8420-hot-and-itchy",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8420-hot-and-itchy",
        },
        {
            priority = 2460,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "turnin-8420-hot-and-itchy", "turnin-7601-what-niby-commands" },
            id = "accept-8421-the-wrong-stuff",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8421-the-wrong-stuff",
        },
        {
            priority = 2470,
            route = {
                { y = 0.564, mapID = 1448, label = "Tainted Ooze", x = 0.4, offMapText = "Travel to Tainted Ooze in Felwood." },
                { y = 0.146, mapID = 1448, label = "Irontree Wanderer", x = 0.494, offMapText = "Travel to Irontree Wanderer in Felwood." },
                { y = 0.298, mapID = 1448, label = "Irontree Stomper", x = 0.486, offMapText = "Travel to Irontree Stomper in Felwood." },
                { y = 0.182, mapID = 1448, label = "Withered Protector", x = 0.506, offMapText = "Travel to Withered Protector in Felwood." },
            },
            dependsOn = { "accept-8421-the-wrong-stuff" },
            id = "objective-8421-the-wrong-stuff",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8421-the-wrong-stuff",
        },
        {
            priority = 2480,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "accept-8421-the-wrong-stuff", "objective-8421-the-wrong-stuff" },
            id = "turnin-8421-the-wrong-stuff",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8421-the-wrong-stuff",
        },
        {
            priority = 2490,
            route = {
                { y = 0.448, mapID = 1448, label = "Impsy", x = 0.414, offMapText = "Travel to Impsy in Felwood." },
            },
            dependsOn = { "turnin-7602-flawless-fel-essence", "turnin-8421-the-wrong-stuff" },
            id = "accept-7603-kroshius-infernal-core",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7603-kroshius-infernal-core",
        },
        {
            priority = 2500,
            dependsOn = { "accept-7603-kroshius-infernal-core" },
            id = "objective-7603-kroshius-infernal-core",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7603-kroshius-infernal-core",
        },
        {
            priority = 2510,
            route = {
                { y = 0.448, mapID = 1448, label = "Niby the Almighty", x = 0.414, offMapText = "Travel to Niby the Almighty in Felwood." },
            },
            dependsOn = { "accept-7603-kroshius-infernal-core", "objective-7603-kroshius-infernal-core" },
            id = "turnin-7603-kroshius-infernal-core",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7603-kroshius-infernal-core",
        },
        {
            id = "level-before-accept-7562-morzul-bloodbringer",
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
            checkpointQuest = 7562,
            priority = 2520,
        },
        {
            priority = 2530,
            route = {
                { y = 0.776, mapID = 1453, label = "Spackle Thornberry", x = 0.258, offMapText = "Travel to Spackle Thornberry in Stormwind City." },
            },
            id = "accept-7562-morzul-bloodbringer",
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
            id = "level-before-accept-7562-morzul-bloodbringer-horde",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 60 },
            },
            requiredLevel = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7562,
            priority = 2540,
        },
        {
            priority = 2550,
            route = {
                { y = 0.158, mapID = 1458, label = "Martha Strain", x = 0.858, offMapText = "Travel to Martha Strain in Undercity." },
            },
            id = "accept-7562-morzul-bloodbringer-horde",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-7562-morzul-bloodbringer-horde",
        },
        {
            id = "level-before-turnin-7562-morzul-bloodbringer",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
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
            checkpointQuest = 7562,
            priority = 2560,
        },
        {
            priority = 2570,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            dependsOn = { "accept-7562-morzul-bloodbringer", "accept-7562-morzul-bloodbringer-horde" },
            id = "turnin-7562-morzul-bloodbringer",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7562-morzul-bloodbringer",
        },
        {
            priority = 2580,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            dependsOn = { "turnin-7562-morzul-bloodbringer" },
            id = "accept-7563-rage-of-blood",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7563-rage-of-blood",
        },
        {
            priority = 2590,
            id = "objective-7563-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-7563-rage-of-blood" },
            classAction = "objective-7563-quest-work",
        },
        {
            priority = 2600,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            dependsOn = { "accept-7563-rage-of-blood", "objective-7563-quest-work" },
            id = "turnin-7563-rage-of-blood",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7563-rage-of-blood",
        },
        {
            priority = 2610,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            dependsOn = { "turnin-7563-rage-of-blood", "turnin-7562-morzul-bloodbringer" },
            id = "accept-7564-wildeyes",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7564-wildeyes",
        },
        {
            priority = 2620,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = { "accept-7564-wildeyes" },
            id = "turnin-7564-wildeyes",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7564-wildeyes",
        },
        {
            priority = 2630,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = { "turnin-7564-wildeyes" },
            id = "accept-7623-lord-banehollow",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7623-lord-banehollow",
        },
        {
            priority = 2640,
            dependsOn = { "accept-7623-lord-banehollow" },
            id = "objective-7623-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7623-reviewed-mechanics",
        },
        {
            priority = 2650,
            route = {
                { y = 0.446, mapID = 1448, label = "Lord Banehollow", x = 0.36, offMapText = "Travel to Lord Banehollow in Felwood." },
            },
            dependsOn = { "accept-7623-lord-banehollow", "objective-7623-reviewed-mechanics" },
            id = "turnin-7623-lord-banehollow",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7623-lord-banehollow",
        },
        {
            priority = 2660,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            id = "accept-7626-bell-of-dethmoora",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
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
            priority = 2670,
            dependsOn = { "accept-7626-bell-of-dethmoora" },
            id = "objective-7626-bell-of-dethmoora",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7626-bell-of-dethmoora",
        },
        {
            priority = 2680,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = { "accept-7626-bell-of-dethmoora", "objective-7626-bell-of-dethmoora" },
            id = "turnin-7626-bell-of-dethmoora",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7626-bell-of-dethmoora",
        },
        {
            priority = 2690,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            id = "accept-7627-wheel-of-the-black-march",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
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
            priority = 2700,
            dependsOn = { "accept-7627-wheel-of-the-black-march" },
            id = "objective-7627-wheel-of-the-black-march",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7627-wheel-of-the-black-march",
        },
        {
            priority = 2710,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = { "accept-7627-wheel-of-the-black-march", "objective-7627-wheel-of-the-black-march" },
            id = "turnin-7627-wheel-of-the-black-march",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7627-wheel-of-the-black-march",
        },
        {
            priority = 2720,
            route = {
                { y = 0.316, mapID = 1428, label = "Mor'zul Bloodbringer", x = 0.126, offMapText = "Travel to Mor'zul Bloodbringer in Burning Steppes." },
            },
            id = "accept-7628-doomsday-candle",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
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
            priority = 2730,
            dependsOn = { "accept-7628-doomsday-candle" },
            id = "objective-7628-doomsday-candle",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-7628-doomsday-candle",
        },
        {
            priority = 2740,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = { "accept-7628-doomsday-candle", "objective-7628-doomsday-candle" },
            id = "turnin-7628-doomsday-candle",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7628-doomsday-candle",
        },
        {
            priority = 2750,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = { "turnin-7626-bell-of-dethmoora", "turnin-7627-wheel-of-the-black-march", "turnin-7628-doomsday-candle" },
            id = "accept-7630-arcanite",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7630-arcanite",
        },
        {
            priority = 2760,
            id = "objective-7630-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-7630-arcanite" },
            classAction = "objective-7630-quest-work",
        },
        {
            priority = 2770,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = { "accept-7630-arcanite", "objective-7630-quest-work" },
            id = "turnin-7630-arcanite",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7630-arcanite",
        },
        {
            priority = 2780,
            route = {
                { y = 0.446, mapID = 1448, label = "Lord Banehollow", x = 0.36, offMapText = "Travel to Lord Banehollow in Felwood." },
            },
            dependsOn = { "turnin-7623-lord-banehollow" },
            id = "accept-7624-ulathek-the-traitor",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7624-ulathek-the-traitor",
        },
        {
            priority = 2790,
            route = {
                { y = 0.484, mapID = 1448, label = "Ulathek", x = 0.406, offMapText = "Travel to Ulathek in Felwood." },
            },
            dependsOn = { "accept-7624-ulathek-the-traitor" },
            id = "objective-7624-ulathek-the-traitor",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-7624-ulathek-the-traitor",
        },
        {
            priority = 2800,
            route = {
                { y = 0.446, mapID = 1448, label = "Lord Banehollow", x = 0.36, offMapText = "Travel to Lord Banehollow in Felwood." },
            },
            dependsOn = { "accept-7624-ulathek-the-traitor", "objective-7624-ulathek-the-traitor" },
            id = "turnin-7624-ulathek-the-traitor",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7624-ulathek-the-traitor",
        },
        {
            priority = 2810,
            route = {
                { y = 0.446, mapID = 1448, label = "Lord Banehollow", x = 0.36, offMapText = "Travel to Lord Banehollow in Felwood." },
            },
            dependsOn = { "turnin-7624-ulathek-the-traitor", "turnin-7623-lord-banehollow" },
            id = "accept-7625-xorothian-stardust",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-7625-xorothian-stardust",
        },
        {
            priority = 2820,
            id = "objective-7625-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-7625-xorothian-stardust" },
            classAction = "objective-7625-quest-work",
        },
        {
            priority = 2830,
            route = {
                { y = 0.316, mapID = 1428, label = "Gorzeeki Wildeyes", x = 0.124, offMapText = "Travel to Gorzeeki Wildeyes in Burning Steppes." },
            },
            dependsOn = { "accept-7625-xorothian-stardust", "objective-7625-quest-work" },
            id = "turnin-7625-xorothian-stardust",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7625-xorothian-stardust",
        },
        {
            priority = 2840,
            route = {
                { y = 0.502, mapID = 1419, label = "Daio the Decrepit", x = 0.34, offMapText = "Travel to Daio the Decrepit in Blasted Lands." },
            },
            id = "accept-7582-the-prisons-casing",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
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
            priority = 2850,
            id = "objective-7582-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-7582-the-prisons-casing" },
            classAction = "objective-7582-quest-work",
        },
        {
            priority = 2860,
            route = {
                { y = 0.502, mapID = 1419, label = "Daio the Decrepit", x = 0.34, offMapText = "Travel to Daio the Decrepit in Blasted Lands." },
            },
            dependsOn = { "accept-7582-the-prisons-casing", "objective-7582-quest-work" },
            id = "turnin-7582-the-prisons-casing",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7582-the-prisons-casing",
        },
        {
            id = "level-before-handoff-7581-class-dungeon",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                class = { 9 },
            },
            complete = {
                level = { min = 60 },
            },
            requiredLevel = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7581,
            priority = 2870,
        },
        {
            id = "handoff-7581-class-dungeon",
            conditions = {
                all = {
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 2880,
            classAction = "handoff-7581-class-dungeon",
        },
        {
            priority = 2890,
            route = {
                { y = 0.502, mapID = 1419, label = "Daio the Decrepit", x = 0.34, offMapText = "Travel to Daio the Decrepit in Blasted Lands." },
            },
            id = "accept-7583-suppression",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
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
            priority = 2900,
            id = "objective-7583-quest-work",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-7583-suppression" },
            classAction = "objective-7583-quest-work",
        },
        {
            priority = 2910,
            route = {
                { y = 0.502, mapID = 1419, label = "Daio the Decrepit", x = 0.34, offMapText = "Travel to Daio the Decrepit in Blasted Lands." },
            },
            dependsOn = { "accept-7583-suppression", "objective-7583-quest-work" },
            id = "turnin-7583-suppression",
            conditions = {
                all = {
                    { class = 9 },
                    {
                        class = { 9 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-7583-suppression",
        },
    },
    routeMode = "ordered",
})
