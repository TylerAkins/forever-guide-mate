local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Mage",
    category = "Class Quests",
    id = "class-mage",
    conditions = {
        all = {
            { class = 8 },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
            priority = 10,
            route = {
                { y = 0.802, mapID = 1453, label = "Garion Wendell", x = 0.378, offMapText = "Travel to Garion Wendell in Stormwind City." },
            },
            id = "accept-97286-research-access",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
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
            dependsOn = {},
            classAction = "accept-97286-research-access",
        },
        {
            priority = 20,
            route = {
                { y = 0.802, mapID = 1453, label = "Garion Wendell", x = 0.378, offMapText = "Travel to Garion Wendell in Stormwind City." },
            },
            dependsOn = { "accept-97286-research-access" },
            id = "turnin-97286-research-access",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
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
            classAction = "turnin-97286-research-access",
        },
        {
            priority = 30,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-98576-glyphic-parchment",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            classAction = "accept-98576-glyphic-parchment",
        },
        {
            priority = 40,
            route = {
                { y = 0.69, mapID = 1411, label = "Mai'ah", x = 0.424, offMapText = "Travel to Mai'ah in Durotar." },
            },
            dependsOn = { "accept-98576-glyphic-parchment" },
            id = "turnin-98576-glyphic-parchment",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            classAction = "turnin-98576-glyphic-parchment",
        },
        {
            priority = 50,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
            priority = 60,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
            priority = 70,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
            priority = 80,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
            priority = 90,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
            priority = 100,
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "accept-3104-glyphic-letter",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            classAction = "accept-3104-glyphic-letter",
        },
        {
            priority = 110,
            route = {
                { y = 0.394, mapID = 1429, label = "Khelden Bremen", x = 0.496, offMapText = "Travel to Khelden Bremen in Elwynn Forest." },
            },
            dependsOn = { "accept-3104-glyphic-letter" },
            id = "turnin-3104-glyphic-letter",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            classAction = "turnin-3104-glyphic-letter",
        },
        {
            route = {
                { y = 0.234, mapID = 2521, label = "Ailee Farheart", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            priority = 120,
            id = "accept-coming-of-age",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 8 },
                                    {
                                        class = { 8 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 95 },
                                    {
                                        race = { 1, 3, 4, 7, 95 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 8 },
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
            priority = 130,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 95 },
                                    {
                                        race = { 1, 3, 4, 7, 95 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 8 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-coming-of-age",
        },
        {
            priority = 140,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 95 },
                                    {
                                        race = { 1, 3, 4, 7, 95 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 8 },
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
            priority = 150,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 95 },
                                    {
                                        race = { 1, 3, 4, 7, 95 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 8 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-92461-harmony-in-balance",
        },
        {
            priority = 160,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
                                    },
                                    { faction = "Alliance" },
                                    { race = 95 },
                                    {
                                        race = { 1, 3, 4, 7, 95 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 8 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92461-harmony-in-balance",
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
            id = "accept-3114-glyphic-memorandum",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            classAction = "accept-3114-glyphic-memorandum",
        },
        {
            priority = 210,
            route = {
                { y = 0.664, mapID = 1426, label = "Marryk Nurribit", x = 0.286, offMapText = "Travel to Marryk Nurribit in Dun Morogh." },
            },
            dependsOn = { "accept-3114-glyphic-memorandum" },
            id = "turnin-3114-glyphic-memorandum",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            classAction = "turnin-3114-glyphic-memorandum",
        },
        {
            priority = 220,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
            priority = 230,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
            priority = 240,
            useClientPin = false,
            dependsOn = { "accept-364-the-mindless-ones" },
            classAction = "objective-364-2-wretched-zombie",
        },
        {
            priority = 250,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
            priority = 260,
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", x = 0.308, offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades." },
            },
            id = "accept-3098-glyphic-scroll",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            classAction = "accept-3098-glyphic-scroll",
        },
        {
            priority = 270,
            route = {
                { y = 0.66, mapID = 1420, label = "Isabella", x = 0.308, offMapText = "Travel to Isabella in Tirisfal Glades." },
            },
            dependsOn = { "accept-3098-glyphic-scroll" },
            id = "turnin-3098-glyphic-scroll",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            classAction = "turnin-3098-glyphic-scroll",
        },
        {
            priority = 280,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
            priority = 290,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
            priority = 300,
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
                                    { class = 8 },
                                    {
                                        class = { 8 },
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
                    { class = 8 },
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
            priority = 310,
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-3086-glyphic-tablet",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            classAction = "accept-3086-glyphic-tablet",
        },
        {
            priority = 320,
            route = {
                { y = 0.69, mapID = 1411, label = "Mai'ah", x = 0.424, offMapText = "Travel to Mai'ah in Durotar." },
            },
            dependsOn = { "accept-3086-glyphic-tablet" },
            id = "turnin-3086-glyphic-tablet",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            classAction = "turnin-3086-glyphic-tablet",
        },
        {
            id = "level-before-accept-92481-a-student-of-the-arcane",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 92481,
            priority = 330,
        },
        {
            priority = 340,
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-92481-a-student-of-the-arcane",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-92481-a-student-of-the-arcane",
        },
        {
            priority = 350,
            dependsOn = { "accept-92481-a-student-of-the-arcane" },
            id = "objective-92481-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-92481-reviewed-mechanics",
        },
        {
            priority = 360,
            route = {
                { y = 0.236, mapID = 2521, label = "Dorii Brightwhisper", x = 0.416, offMapText = "Travel to Dorii Brightwhisper in Zephras Isle." },
            },
            dependsOn = { "accept-92481-a-student-of-the-arcane", "objective-92481-reviewed-mechanics" },
            id = "turnin-92481-a-student-of-the-arcane",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 2 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92481-a-student-of-the-arcane",
        },
        {
            id = "level-before-accept-1860-speak-with-jennea",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
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
            checkpointQuest = 1860,
            alternativeQuests = { 1880 },
            priority = 370,
        },
        {
            priority = 380,
            route = {
                { y = 0.662, mapID = 1429, label = "Zaldimar Wefhellt", x = 0.432, offMapText = "Travel to Zaldimar Wefhellt in Elwynn Forest." },
            },
            id = "accept-1860-speak-with-jennea",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1860-speak-with-jennea",
        },
        {
            priority = 390,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = { "accept-1860-speak-with-jennea" },
            id = "turnin-1860-speak-with-jennea",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1860-speak-with-jennea",
        },
        {
            id = "level-before-accept-1861-mirror-lake",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 7, 95 },
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
            checkpointQuest = 1861,
            alternativeQuests = { 1880 },
            priority = 400,
        },
        {
            priority = 410,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = { "turnin-1860-speak-with-jennea" },
            id = "accept-1861-mirror-lake",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1861-mirror-lake",
        },
        {
            priority = 420,
            id = "objective-1861-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1861-mirror-lake" },
            classAction = "objective-1861-quest-work",
        },
        {
            priority = 430,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = { "accept-1861-mirror-lake", "objective-1861-quest-work" },
            id = "turnin-1861-mirror-lake",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7, 95 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1861-mirror-lake",
        },
        {
            id = "level-before-accept-93791-speak-with-belann",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    { race = 95 },
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
            checkpointQuest = 93791,
            priority = 440,
        },
        {
            priority = 450,
            route = {
                { y = 0.804, mapID = 2521, label = "Anathamaas Aetherwind", x = 0.658, offMapText = "Travel to Anathamaas Aetherwind in Zephras Isle." },
                { y = 0.774, mapID = 2521, label = "Belann Windwood", x = 0.628, offMapText = "Travel to Belann Windwood in Zephras Isle." },
            },
            id = "accept-93791-speak-with-belann",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-93791-speak-with-belann",
        },
        {
            priority = 460,
            route = {
                { y = 0.774, mapID = 2521, label = "Belann Windwood", x = 0.628, offMapText = "Travel to Belann Windwood in Zephras Isle." },
            },
            dependsOn = { "accept-93791-speak-with-belann" },
            id = "turnin-93791-speak-with-belann",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-93791-speak-with-belann",
        },
        {
            priority = 470,
            route = {
                { y = 0.774, mapID = 2521, label = "Belann Windwood", x = 0.628, offMapText = "Travel to Belann Windwood in Zephras Isle." },
            },
            dependsOn = { "turnin-93791-speak-with-belann" },
            id = "accept-93797-boughs-in-the-wind",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-93797-boughs-in-the-wind",
        },
        {
            priority = 480,
            id = "objective-93797-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-93797-boughs-in-the-wind" },
            classAction = "objective-93797-quest-work",
        },
        {
            priority = 490,
            route = {
                { y = 0.774, mapID = 2521, label = "Belann Windwood", x = 0.628, offMapText = "Travel to Belann Windwood in Zephras Isle." },
            },
            dependsOn = { "accept-93797-boughs-in-the-wind", "objective-93797-quest-work" },
            id = "turnin-93797-boughs-in-the-wind",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 95 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-93797-boughs-in-the-wind",
        },
        {
            id = "level-before-accept-1883-speak-with-unthuwa",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 5, 8 },
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
            checkpointQuest = 1883,
            alternativeQuests = { 1882 },
            priority = 500,
        },
        {
            priority = 510,
            route = {
                { y = 0.86, mapID = 1454, label = "Uthel'nay", x = 0.39, offMapText = "Travel to Uthel'nay in Orgrimmar." },
            },
            id = "accept-1883-speak-with-unthuwa",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1883-speak-with-unthuwa",
        },
        {
            priority = 520,
            route = {
                { y = 0.75, mapID = 1411, label = "Un'Thuwa", x = 0.562, offMapText = "Travel to Un'Thuwa in Durotar." },
            },
            dependsOn = { "accept-1883-speak-with-unthuwa" },
            id = "turnin-1883-speak-with-unthuwa",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1883-speak-with-unthuwa",
        },
        {
            id = "level-before-accept-1884-ju-ju-heaps",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 8 },
                    },
                    {
                        race = { 5, 8 },
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
            checkpointQuest = 1884,
            alternativeQuests = { 1882 },
            priority = 530,
        },
        {
            priority = 540,
            route = {
                { y = 0.75, mapID = 1411, label = "Un'Thuwa", x = 0.562, offMapText = "Travel to Un'Thuwa in Durotar." },
            },
            dependsOn = { "turnin-1883-speak-with-unthuwa" },
            id = "accept-1884-ju-ju-heaps",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1884-ju-ju-heaps",
        },
        {
            priority = 550,
            id = "objective-1884-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1884-ju-ju-heaps" },
            classAction = "objective-1884-quest-work",
        },
        {
            priority = 560,
            route = {
                { y = 0.75, mapID = 1411, label = "Un'Thuwa", x = 0.562, offMapText = "Travel to Un'Thuwa in Durotar." },
            },
            dependsOn = { "accept-1884-ju-ju-heaps", "objective-1884-quest-work" },
            id = "turnin-1884-ju-ju-heaps",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1884-ju-ju-heaps",
        },
        {
            priority = 570,
            route = {
                { y = 0.52, mapID = 1426, label = "Magis Sparkmantle", x = 0.474, offMapText = "Travel to Magis Sparkmantle in Dun Morogh." },
            },
            id = "accept-1879-speak-with-bink",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1879-speak-with-bink",
        },
        {
            priority = 580,
            route = {
                { y = 0.082, mapID = 1455, label = "Bink", x = 0.27, offMapText = "Travel to Bink in Ironforge." },
            },
            dependsOn = { "accept-1879-speak-with-bink" },
            id = "turnin-1879-speak-with-bink",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1879-speak-with-bink",
        },
        {
            priority = 590,
            route = {
                { y = 0.082, mapID = 1455, label = "Bink", x = 0.27, offMapText = "Travel to Bink in Ironforge." },
            },
            dependsOn = { "turnin-1879-speak-with-bink" },
            id = "accept-1880-mage-tastic-gizmonitor",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1880-mage-tastic-gizmonitor",
        },
        {
            priority = 600,
            id = "objective-1880-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1880-mage-tastic-gizmonitor" },
            classAction = "objective-1880-quest-work",
        },
        {
            priority = 610,
            route = {
                { y = 0.082, mapID = 1455, label = "Bink", x = 0.27, offMapText = "Travel to Bink in Ironforge." },
            },
            dependsOn = { "accept-1880-mage-tastic-gizmonitor", "objective-1880-quest-work" },
            id = "turnin-1880-mage-tastic-gizmonitor",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1880-mage-tastic-gizmonitor",
        },
        {
            priority = 620,
            route = {
                { y = 0.524, mapID = 1420, label = "Cain Firesong", x = 0.618, offMapText = "Travel to Cain Firesong in Tirisfal Glades." },
            },
            id = "accept-1881-speak-with-anastasia",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1881-speak-with-anastasia",
        },
        {
            priority = 630,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = { "accept-1881-speak-with-anastasia" },
            id = "turnin-1881-speak-with-anastasia",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1881-speak-with-anastasia",
        },
        {
            priority = 640,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = { "turnin-1881-speak-with-anastasia" },
            id = "accept-1882-the-balnir-farmstead",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1882-the-balnir-farmstead",
        },
        {
            priority = 650,
            route = {
                { mapID = 1420, x = 0.7694, y = 0.6238, label = "Balnir Snapdragons", offMapText = "Travel to Balnir Snapdragons." },
            },
            id = "objective-1882-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-1882-the-balnir-farmstead" },
            classAction = "objective-1882-quest-work",
        },
        {
            priority = 660,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = { "accept-1882-the-balnir-farmstead", "objective-1882-quest-work" },
            id = "turnin-1882-the-balnir-farmstead",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1882-the-balnir-farmstead",
        },
        {
            id = "level-before-accept-1919-report-to-jennea",
            kind = "note",
            text = "Reach level 15 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            complete = {
                level = { min = 15 },
            },
            requiredLevel = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1919,
            priority = 670,
        },
        {
            priority = 680,
            route = {
                { y = 0.084, mapID = 1455, label = "Dink", x = 0.268, offMapText = "Travel to Dink in Ironforge." },
            },
            id = "accept-1919-report-to-jennea",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1919-report-to-jennea",
        },
        {
            priority = 690,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = { "accept-1919-report-to-jennea" },
            id = "turnin-1919-report-to-jennea",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1919-report-to-jennea",
        },
        {
            priority = 700,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = { "turnin-1919-report-to-jennea" },
            id = "accept-1920-investigate-the-blue-recluse",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1920-investigate-the-blue-recluse",
        },
        {
            priority = 710,
            id = "objective-1920-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1920-investigate-the-blue-recluse" },
            classAction = "objective-1920-quest-work",
        },
        {
            priority = 720,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = { "accept-1920-investigate-the-blue-recluse", "objective-1920-quest-work" },
            id = "turnin-1920-investigate-the-blue-recluse",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1920-investigate-the-blue-recluse",
        },
        {
            priority = 730,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            dependsOn = { "turnin-1920-investigate-the-blue-recluse", "turnin-1919-report-to-jennea" },
            id = "accept-1921-gathering-materials",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1921-gathering-materials",
        },
        {
            priority = 740,
            dependsOn = { "accept-1921-gathering-materials" },
            id = "objective-1921-gathering-materials",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1921-gathering-materials",
        },
        {
            priority = 750,
            route = {
                { y = 0.766, mapID = 1453, label = "Wynne Larson", x = 0.416, offMapText = "Travel to Wynne Larson in Stormwind City." },
            },
            dependsOn = { "accept-1921-gathering-materials", "objective-1921-gathering-materials" },
            id = "turnin-1921-gathering-materials",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1921-gathering-materials",
        },
        {
            priority = 760,
            route = {
                { y = 0.766, mapID = 1453, label = "Wynne Larson", x = 0.416, offMapText = "Travel to Wynne Larson in Stormwind City." },
            },
            dependsOn = { "turnin-1921-gathering-materials" },
            id = "accept-1941-manaweave-robe",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1941-manaweave-robe",
        },
        {
            priority = 770,
            route = {
                { y = 0.766, mapID = 1453, label = "Wynne Larson", x = 0.416, offMapText = "Travel to Wynne Larson in Stormwind City." },
            },
            dependsOn = { "accept-1941-manaweave-robe" },
            id = "turnin-1941-manaweave-robe",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1941-manaweave-robe",
        },
        {
            id = "level-before-accept-1959-report-to-anastasia",
            kind = "note",
            text = "Reach level 15 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            complete = {
                level = { min = 15 },
            },
            requiredLevel = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1959,
            priority = 780,
        },
        {
            priority = 790,
            route = {
                { y = 0.86, mapID = 1454, label = "Uthel'nay", x = 0.39, offMapText = "Travel to Uthel'nay in Orgrimmar." },
            },
            id = "accept-1959-report-to-anastasia",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1959-report-to-anastasia",
        },
        {
            priority = 800,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = { "accept-1959-report-to-anastasia" },
            id = "turnin-1959-report-to-anastasia",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1959-report-to-anastasia",
        },
        {
            priority = 810,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = { "turnin-1959-report-to-anastasia" },
            id = "accept-1960-investigate-the-alchemist-shop",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1960-investigate-the-alchemist-shop",
        },
        {
            priority = 820,
            id = "objective-1960-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1960-investigate-the-alchemist-shop" },
            classAction = "objective-1960-quest-work",
        },
        {
            priority = 830,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = { "accept-1960-investigate-the-alchemist-shop", "objective-1960-quest-work" },
            id = "turnin-1960-investigate-the-alchemist-shop",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1960-investigate-the-alchemist-shop",
        },
        {
            id = "level-before-accept-1961-gathering-materials",
            kind = "note",
            text = "Reach level 15 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 8 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            complete = {
                level = { min = 15 },
            },
            requiredLevel = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1961,
            priority = 840,
        },
        {
            priority = 850,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            dependsOn = { "turnin-1960-investigate-the-alchemist-shop", "turnin-1959-report-to-anastasia" },
            id = "accept-1961-gathering-materials",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1961-gathering-materials",
        },
        {
            priority = 860,
            dependsOn = { "accept-1961-gathering-materials" },
            id = "objective-1961-gathering-materials",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1961-gathering-materials",
        },
        {
            priority = 870,
            route = {
                { y = 0.304, mapID = 1458, label = "Josef Gregorian", x = 0.706, offMapText = "Travel to Josef Gregorian in Undercity." },
            },
            dependsOn = { "accept-1961-gathering-materials", "objective-1961-gathering-materials" },
            id = "turnin-1961-gathering-materials",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 2, 5, 8 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1961-gathering-materials",
        },
        {
            priority = 880,
            route = {
                { y = 0.302, mapID = 1458, label = "Rhiannon Davis", x = 0.702, offMapText = "Travel to Rhiannon Davis in Undercity." },
            },
            dependsOn = { "turnin-1961-gathering-materials" },
            id = "accept-1962-spellfire-robes",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1962-spellfire-robes",
        },
        {
            priority = 890,
            route = {
                { y = 0.304, mapID = 1458, label = "Josef Gregorian", x = 0.706, offMapText = "Travel to Josef Gregorian in Undercity." },
                { y = 0.296, mapID = 1458, label = "Victor Ward", x = 0.702, offMapText = "Travel to Victor Ward in Undercity." },
                { y = 0.302, mapID = 1458, label = "Rhiannon Davis", x = 0.702, offMapText = "Travel to Rhiannon Davis in Undercity." },
            },
            dependsOn = { "accept-1962-spellfire-robes" },
            id = "turnin-1962-spellfire-robes",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 15 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1962-spellfire-robes",
        },
        {
            id = "level-before-accept-1939-high-sorcerer-andromath",
            kind = "note",
            text = "Reach level 26 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            complete = {
                level = { min = 26 },
            },
            requiredLevel = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1939,
            priority = 900,
        },
        {
            priority = 910,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            id = "accept-1939-high-sorcerer-andromath",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1939-high-sorcerer-andromath",
        },
        {
            priority = 920,
            route = {
                { y = 0.816, mapID = 1453, label = "High Sorcerer Andromath", x = 0.376, offMapText = "Travel to High Sorcerer Andromath in Stormwind City." },
            },
            dependsOn = { "accept-1939-high-sorcerer-andromath" },
            id = "turnin-1939-high-sorcerer-andromath",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1939-high-sorcerer-andromath",
        },
        {
            priority = 930,
            route = {
                { y = 0.816, mapID = 1453, label = "High Sorcerer Andromath", x = 0.376, offMapText = "Travel to High Sorcerer Andromath in Stormwind City." },
            },
            dependsOn = { "turnin-1939-high-sorcerer-andromath" },
            id = "accept-1938-urs-treatise-on-shadow-magic",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1938-urs-treatise-on-shadow-magic",
        },
        {
            priority = 940,
            id = "objective-1938-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1938-urs-treatise-on-shadow-magic" },
            classAction = "objective-1938-quest-work",
        },
        {
            priority = 950,
            route = {
                { y = 0.816, mapID = 1453, label = "High Sorcerer Andromath", x = 0.376, offMapText = "Travel to High Sorcerer Andromath in Stormwind City." },
            },
            dependsOn = { "accept-1938-urs-treatise-on-shadow-magic", "objective-1938-quest-work" },
            id = "turnin-1938-urs-treatise-on-shadow-magic",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1938-urs-treatise-on-shadow-magic",
        },
        {
            priority = 960,
            route = {
                { y = 0.816, mapID = 1453, label = "High Sorcerer Andromath", x = 0.376, offMapText = "Travel to High Sorcerer Andromath in Stormwind City." },
            },
            dependsOn = { "turnin-1938-urs-treatise-on-shadow-magic", "turnin-1939-high-sorcerer-andromath" },
            id = "accept-1940-pristine-spider-silk",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1940-pristine-spider-silk",
        },
        {
            priority = 970,
            id = "objective-1940-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1940-pristine-spider-silk" },
            classAction = "objective-1940-quest-work",
        },
        {
            priority = 980,
            route = {
                { y = 0.766, mapID = 1453, label = "Wynne Larson", x = 0.416, offMapText = "Travel to Wynne Larson in Stormwind City." },
            },
            dependsOn = { "accept-1940-pristine-spider-silk", "objective-1940-quest-work" },
            id = "turnin-1940-pristine-spider-silk",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1940-pristine-spider-silk",
        },
        {
            priority = 990,
            route = {
                { y = 0.766, mapID = 1453, label = "Wynne Larson", x = 0.416, offMapText = "Travel to Wynne Larson in Stormwind City." },
            },
            dependsOn = { "turnin-1940-pristine-spider-silk" },
            id = "accept-1942-astral-knot-garment",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1942-astral-knot-garment",
        },
        {
            priority = 1000,
            route = {
                { y = 0.766, mapID = 1453, label = "Wynne Larson", x = 0.416, offMapText = "Travel to Wynne Larson in Stormwind City." },
            },
            dependsOn = { "accept-1942-astral-knot-garment" },
            id = "turnin-1942-astral-knot-garment",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1942-astral-knot-garment",
        },
        {
            id = "level-before-accept-1943-speak-with-deino",
            kind = "note",
            text = "Reach level 26 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            complete = {
                level = { min = 26 },
            },
            requiredLevel = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1943,
            priority = 1010,
        },
        {
            priority = 1020,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            id = "accept-1943-speak-with-deino",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1943-speak-with-deino",
        },
        {
            priority = 1030,
            route = {
                { y = 0.858, mapID = 1454, label = "Deino", x = 0.384, offMapText = "Travel to Deino in Orgrimmar." },
            },
            dependsOn = { "accept-1943-speak-with-deino" },
            id = "turnin-1943-speak-with-deino",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1943-speak-with-deino",
        },
        {
            priority = 1040,
            route = {
                { y = 0.858, mapID = 1454, label = "Deino", x = 0.384, offMapText = "Travel to Deino in Orgrimmar." },
            },
            dependsOn = { "turnin-1943-speak-with-deino" },
            id = "accept-1944-waters-of-xavian",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1944-waters-of-xavian",
        },
        {
            priority = 1050,
            id = "objective-1944-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1944-waters-of-xavian" },
            classAction = "objective-1944-quest-work",
        },
        {
            priority = 1060,
            route = {
                { y = 0.858, mapID = 1454, label = "Deino", x = 0.384, offMapText = "Travel to Deino in Orgrimmar." },
            },
            dependsOn = { "accept-1944-waters-of-xavian", "objective-1944-quest-work" },
            id = "turnin-1944-waters-of-xavian",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1944-waters-of-xavian",
        },
        {
            priority = 1070,
            route = {
                { y = 0.858, mapID = 1454, label = "Deino", x = 0.384, offMapText = "Travel to Deino in Orgrimmar." },
            },
            dependsOn = { "turnin-1944-waters-of-xavian", "turnin-1943-speak-with-deino" },
            id = "accept-1945-laughing-sisters",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1945-laughing-sisters",
        },
        {
            priority = 1080,
            id = "objective-1945-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1945-laughing-sisters" },
            classAction = "objective-1945-quest-work",
        },
        {
            priority = 1090,
            route = {
                { y = 0.316, mapID = 1413, label = "Kil'hala", x = 0.522, offMapText = "Travel to Kil'hala in The Barrens." },
            },
            dependsOn = { "accept-1945-laughing-sisters", "objective-1945-quest-work" },
            id = "turnin-1945-laughing-sisters",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1945-laughing-sisters",
        },
        {
            priority = 1100,
            route = {
                { y = 0.316, mapID = 1413, label = "Kil'hala", x = 0.522, offMapText = "Travel to Kil'hala in The Barrens." },
            },
            dependsOn = { "turnin-1945-laughing-sisters" },
            id = "accept-1946-nether-lace-garment",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1946-nether-lace-garment",
        },
        {
            priority = 1110,
            route = {
                { y = 0.316, mapID = 1413, label = "Kil'hala", x = 0.522, offMapText = "Travel to Kil'hala in The Barrens." },
            },
            dependsOn = { "accept-1946-nether-lace-garment" },
            id = "turnin-1946-nether-lace-garment",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 5, 8 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1946-nether-lace-garment",
        },
        {
            id = "level-before-accept-1947-journey-to-the-marsh",
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
            priority = 1120,
        },
        {
            priority = 1130,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            id = "accept-1947-journey-to-the-marsh",
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
            id = "level-before-accept-1947-journey-to-the-marsh-horde",
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
            priority = 1140,
        },
        {
            priority = 1150,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            id = "accept-1947-journey-to-the-marsh-horde",
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
            id = "level-before-turnin-1947-journey-to-the-marsh",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            checkpointQuest = 1947,
            priority = 1160,
        },
        {
            priority = 1170,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "accept-1947-journey-to-the-marsh", "accept-1947-journey-to-the-marsh-horde" },
            id = "turnin-1947-journey-to-the-marsh",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1947-journey-to-the-marsh",
        },
        {
            priority = 1180,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "turnin-1947-journey-to-the-marsh" },
            id = "accept-1949-hidden-secrets",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1949-hidden-secrets",
        },
        {
            priority = 1190,
            route = {
                { y = 0.758, mapID = 1441, label = "Magus Tirth", x = 0.782, offMapText = "Travel to Magus Tirth in Thousand Needles." },
            },
            dependsOn = { "accept-1949-hidden-secrets" },
            id = "turnin-1949-hidden-secrets",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1949-hidden-secrets",
        },
        {
            priority = 1200,
            route = {
                { y = 0.758, mapID = 1441, label = "Magus Tirth", x = 0.782, offMapText = "Travel to Magus Tirth in Thousand Needles." },
            },
            dependsOn = { "turnin-1949-hidden-secrets" },
            id = "accept-1950-get-the-scoop",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1950-get-the-scoop",
        },
        {
            priority = 1210,
            id = "objective-1950-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1950-get-the-scoop" },
            classAction = "objective-1950-quest-work",
        },
        {
            priority = 1220,
            route = {
                { y = 0.758, mapID = 1441, label = "Magus Tirth", x = 0.782, offMapText = "Travel to Magus Tirth in Thousand Needles." },
            },
            dependsOn = { "accept-1950-get-the-scoop", "objective-1950-quest-work" },
            id = "turnin-1950-get-the-scoop",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1950-get-the-scoop",
        },
        {
            priority = 1230,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            id = "accept-1948-items-of-power",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
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
            priority = 1240,
            dependsOn = { "accept-1948-items-of-power" },
            id = "objective-1948-items-of-power",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1948-items-of-power",
        },
        {
            priority = 1250,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "accept-1948-items-of-power", "objective-1948-items-of-power" },
            id = "turnin-1948-items-of-power",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1948-items-of-power",
        },
        {
            id = "level-before-handoff-1951-class-dungeon",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                class = { 8 },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1951,
            priority = 1260,
        },
        {
            id = "handoff-1951-class-dungeon",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            priority = 1270,
            classAction = "handoff-1951-class-dungeon",
        },
        {
            priority = 1280,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "turnin-1948-items-of-power" },
            id = "accept-1952-mages-wand",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1952-mages-wand",
        },
        {
            priority = 1290,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "accept-1952-mages-wand" },
            id = "turnin-1952-mages-wand",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1952-mages-wand",
        },
        {
            id = "level-before-accept-1953-return-to-the-marsh",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1953,
            priority = 1300,
        },
        {
            priority = 1310,
            route = {
                { y = 0.794, mapID = 1453, label = "Jennea Cannon", x = 0.386, offMapText = "Travel to Jennea Cannon in Stormwind City." },
            },
            id = "accept-1953-return-to-the-marsh",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1953-return-to-the-marsh",
        },
        {
            id = "level-before-accept-1953-return-to-the-marsh-horde",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1953,
            priority = 1320,
        },
        {
            priority = 1330,
            route = {
                { y = 0.102, mapID = 1458, label = "Anastasia Hartwell", x = 0.85, offMapText = "Travel to Anastasia Hartwell in Undercity." },
            },
            id = "accept-1953-return-to-the-marsh-horde",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1953-return-to-the-marsh-horde",
        },
        {
            id = "level-before-turnin-1953-return-to-the-marsh",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            checkpointQuest = 1953,
            priority = 1340,
        },
        {
            priority = 1350,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "accept-1953-return-to-the-marsh", "accept-1953-return-to-the-marsh-horde" },
            id = "turnin-1953-return-to-the-marsh",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1953-return-to-the-marsh",
        },
        {
            priority = 1360,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "turnin-1953-return-to-the-marsh" },
            id = "accept-1954-the-infernal-orb",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1954-the-infernal-orb",
        },
        {
            priority = 1370,
            id = "objective-1954-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1954-the-infernal-orb" },
            classAction = "objective-1954-quest-work",
        },
        {
            priority = 1380,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "accept-1954-the-infernal-orb", "objective-1954-quest-work" },
            id = "turnin-1954-the-infernal-orb",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1954-the-infernal-orb",
        },
        {
            priority = 1390,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "turnin-1954-the-infernal-orb", "turnin-1953-return-to-the-marsh" },
            id = "accept-1955-the-exorcism",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1955-the-exorcism",
        },
        {
            priority = 1400,
            id = "objective-1955-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1955-the-exorcism" },
            classAction = "objective-1955-quest-work",
        },
        {
            priority = 1410,
            route = {
                { y = 0.57, mapID = 1445, label = "Tabetha", x = 0.46, offMapText = "Travel to Tabetha in Dustwallow Marsh." },
            },
            dependsOn = { "accept-1955-the-exorcism", "objective-1955-quest-work" },
            id = "turnin-1955-the-exorcism",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 35 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1955-the-exorcism",
        },
        {
            id = "level-before-accept-8250-magecraft",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8250,
            priority = 1420,
        },
        {
            priority = 1430,
            route = {
                { y = 0.816, mapID = 1453, label = "Maginor Dumas", x = 0.38, offMapText = "Travel to Maginor Dumas in Stormwind City." },
            },
            id = "accept-8250-magecraft",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8250-magecraft",
        },
        {
            id = "level-before-accept-8250-magecraft-horde",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
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
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 8250,
            priority = 1440,
        },
        {
            priority = 1450,
            route = {
                { y = 0.138, mapID = 1458, label = "Pierce Shackleton", x = 0.854, offMapText = "Travel to Pierce Shackleton in Undercity." },
            },
            id = "accept-8250-magecraft-horde",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8250-magecraft-horde",
        },
        {
            id = "level-before-turnin-8250-magecraft",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            checkpointQuest = 8250,
            priority = 1460,
        },
        {
            priority = 1470,
            route = {
                { y = 0.5, mapID = 1447, label = "Sanath Lim-yo", x = 0.28, offMapText = "Travel to Sanath Lim-yo in Azshara." },
            },
            dependsOn = { "accept-8250-magecraft", "accept-8250-magecraft-horde" },
            id = "turnin-8250-magecraft",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8250-magecraft",
        },
        {
            priority = 1480,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            id = "accept-8251-magic-dust",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8251-magic-dust",
        },
        {
            priority = 1490,
            route = {
                { y = 0.286, mapID = 1447, label = "Blood Elf Surveyor", x = 0.554, offMapText = "Travel to Blood Elf Surveyor in Azshara." },
                { y = 0.288, mapID = 1447, label = "Blood Elf Reclaimer", x = 0.564, offMapText = "Travel to Blood Elf Reclaimer in Azshara." },
                { y = 0.314, mapID = 1447, label = "Blood Elf Defender", x = 0.594, offMapText = "Travel to Blood Elf Defender in Azshara." },
            },
            dependsOn = { "accept-8251-magic-dust" },
            id = "objective-8251-magic-dust",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8251-magic-dust",
        },
        {
            priority = 1500,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "accept-8251-magic-dust", "objective-8251-magic-dust" },
            id = "turnin-8251-magic-dust",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8251-magic-dust",
        },
        {
            priority = 1510,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "turnin-8251-magic-dust" },
            id = "accept-8252-the-sirens-coral",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8252-the-sirens-coral",
        },
        {
            priority = 1520,
            route = {
                { y = 0.53, mapID = 1447, label = "Spitelash Siren", x = 0.402, offMapText = "Travel to Spitelash Siren in Azshara." },
            },
            dependsOn = { "accept-8252-the-sirens-coral" },
            id = "objective-8252-the-sirens-coral",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-8252-the-sirens-coral",
        },
        {
            priority = 1530,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "accept-8252-the-sirens-coral", "objective-8252-the-sirens-coral" },
            id = "turnin-8252-the-sirens-coral",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8252-the-sirens-coral",
        },
        {
            id = "level-before-accept-9362-warlord-krellian",
            kind = "note",
            text = "Reach level 60 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
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
            checkpointQuest = 9362,
            priority = 1540,
        },
        {
            priority = 1550,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            id = "accept-9362-warlord-krellian",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
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
            priority = 1560,
            route = {
                { y = 0.53, mapID = 1447, label = "Warlord Krellian", x = 0.404, offMapText = "Travel to Warlord Krellian in Azshara." },
                { y = 0.484, mapID = 1447, label = "Scalebeard", x = 0.544, offMapText = "Travel to Scalebeard in Azshara." },
            },
            dependsOn = { "accept-9362-warlord-krellian" },
            id = "objective-9362-warlord-krellian",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-9362-warlord-krellian",
        },
        {
            priority = 1570,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "accept-9362-warlord-krellian", "objective-9362-warlord-krellian" },
            id = "turnin-9362-warlord-krellian",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-9362-warlord-krellian",
        },
        {
            priority = 1580,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "turnin-9362-warlord-krellian" },
            id = "accept-9364-fragmented-magic",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-9364-fragmented-magic",
        },
        {
            priority = 1590,
            id = "objective-9364-quest-work",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-9364-fragmented-magic" },
            classAction = "objective-9364-quest-work",
        },
        {
            priority = 1600,
            route = {
                { y = 0.402, mapID = 1447, label = "Archmage Xylem", x = 0.292, offMapText = "Travel to Archmage Xylem in Azshara." },
            },
            dependsOn = { "accept-9364-fragmented-magic", "objective-9364-quest-work" },
            id = "turnin-9364-fragmented-magic",
            conditions = {
                all = {
                    { class = 8 },
                    {
                        class = { 8 },
                    },
                    {
                        level = { min = 60 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-9364-fragmented-magic",
        },
    },
    routeMode = "ordered",
})
