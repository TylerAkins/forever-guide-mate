local _, ns = ...

ns:RegisterGuide({
    revision = 7,
    title = "Warrior",
    category = "Class Quests",
    id = "class-warrior",
    conditions = {
        all = {
            { class = 1 },
            {
                level = { min = 1 },
            },
        },
    },
    goals = {
        {
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "accept-3106-simple-rune",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-3106-simple-rune",
        },
        {
            route = {
                { y = 0.672, mapID = 1426, label = "Thran Khorman", x = 0.288, offMapText = "Travel to Thran Khorman in Dun Morogh." },
            },
            dependsOn = { "accept-3106-simple-rune" },
            id = "turnin-3106-simple-rune",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-3106-simple-rune",
        },
        {
            route = {
                { y = 0.712, mapID = 1426, label = "Sten Stoutarm", x = 0.298, offMapText = "Travel to Sten Stoutarm in Dun Morogh." },
            },
            id = "accept-3112-simple-memorandum",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-3112-simple-memorandum",
        },
        {
            route = {
                { y = 0.672, mapID = 1426, label = "Thran Khorman", x = 0.288, offMapText = "Travel to Thran Khorman in Dun Morogh." },
            },
            dependsOn = { "accept-3112-simple-memorandum" },
            id = "turnin-3112-simple-memorandum",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-3112-simple-memorandum",
        },
        {
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
            },
            id = "accept-747-the-hunt-begins",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
            useClientPin = false,
            dependsOn = { "accept-747-the-hunt-begins" },
            classAction = "objective-747-2-plainstrider-feather",
        },
        {
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", offMapText = "Travel to Grull Hawkwind in Mulgore.", x = 0.445 },
            },
            dependsOn = { "accept-747-the-hunt-begins", "objective-747-1-plainstrider-meat", "objective-747-2-plainstrider-feather" },
            id = "turnin-747-the-hunt-begins",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
            route = {
                { y = 0.775, mapID = 1412, label = "Grull Hawkwind", x = 0.445, offMapText = "Travel to Grull Hawkwind in Mulgore." },
            },
            id = "accept-3091-simple-note",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-3091-simple-note",
        },
        {
            route = {
                { y = 0.767, mapID = 1412, label = "Harutt Thunderhorn", x = 0.437, offMapText = "Travel to Harutt Thunderhorn in Mulgore." },
            },
            dependsOn = { "accept-3091-simple-note" },
            id = "turnin-3091-simple-note",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-3091-simple-note",
        },
        {
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "accept-92479-a-scribbled-letter",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-92479-a-scribbled-letter",
        },
        {
            route = {
                { y = 0.408, mapID = 1429, label = "Tordrin Sternblade", x = 0.512, offMapText = "Travel to Tordrin Sternblade in Elwynn Forest." },
            },
            dependsOn = { "accept-92479-a-scribbled-letter" },
            id = "turnin-92479-a-scribbled-letter",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-92479-a-scribbled-letter",
        },
        {
            route = {
                { y = 0.416, mapID = 1429, label = "Marshal McBride", x = 0.488, offMapText = "Travel to Marshal McBride in Elwynn Forest." },
            },
            id = "accept-3100-simple-letter",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-3100-simple-letter",
        },
        {
            route = {
                { y = 0.422, mapID = 1429, label = "Llane Beshere", x = 0.502, offMapText = "Travel to Llane Beshere in Elwynn Forest." },
            },
            dependsOn = { "accept-3100-simple-letter" },
            id = "turnin-3100-simple-letter",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-3100-simple-letter",
        },
        {
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-2383-simple-parchment",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-2383-simple-parchment",
        },
        {
            route = {
                { y = 0.694, mapID = 1411, label = "Frang", x = 0.428, offMapText = "Travel to Frang in Durotar." },
            },
            dependsOn = { "accept-2383-simple-parchment" },
            id = "turnin-2383-simple-parchment",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-2383-simple-parchment",
        },
        {
            route = {
                { y = 0.684, mapID = 1411, label = "Gornek", x = 0.42, offMapText = "Travel to Gornek in Durotar." },
            },
            id = "accept-3065-simple-tablet",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-3065-simple-tablet",
        },
        {
            route = {
                { y = 0.694, mapID = 1411, label = "Frang", x = 0.428, offMapText = "Travel to Frang in Durotar." },
            },
            dependsOn = { "accept-3065-simple-tablet" },
            id = "turnin-3065-simple-tablet",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-3065-simple-tablet",
        },
        {
            route = {
                { y = 0.234, mapID = 2521, label = "Ailee Farheart", offMapText = "Travel to Zephras Isle.", x = 0.428 },
            },
            id = "accept-coming-of-age",
            conditions = {
                all = {
                    {
                        any = {
                            {
                                all = {
                                    { class = 1 },
                                    {
                                        class = { 1 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 1 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-coming-of-age",
        },
        {
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 1 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-92461-harmony-in-balance",
        },
        {
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
                                    },
                                    {
                                        race = { 95, 96 },
                                    },
                                },
                            },
                        },
                    },
                    { class = 1 },
                    {
                        level = { min = 1 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-92461-harmony-in-balance",
        },
        {
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
            useClientPin = false,
            dependsOn = { "accept-364-the-mindless-ones" },
            classAction = "objective-364-2-wretched-zombie",
        },
        {
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
            route = {
                { y = 0.662, mapID = 1420, label = "Shadow Priest Sarvis", x = 0.308, offMapText = "Travel to Shadow Priest Sarvis in Tirisfal Glades." },
            },
            id = "accept-3095-simple-scroll",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-3095-simple-scroll",
        },
        {
            route = {
                { y = 0.656, mapID = 1420, label = "Dannal Stern", x = 0.326, offMapText = "Travel to Dannal Stern in Tirisfal Glades." },
            },
            dependsOn = { "accept-3095-simple-scroll" },
            id = "turnin-3095-simple-scroll",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-3095-simple-scroll",
        },
        {
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
                                    { class = 1 },
                                    {
                                        class = { 1 },
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
                    { class = 1 },
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
            route = {
                { y = 0.442, mapID = 1438, label = "Conservator Ilthalaine", x = 0.586, offMapText = "Travel to Conservator Ilthalaine in Teldrassil." },
            },
            id = "accept-3116-simple-sigil",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-3116-simple-sigil",
        },
        {
            route = {
                { y = 0.384, mapID = 1438, label = "Alyissia", x = 0.596, offMapText = "Travel to Alyissia in Teldrassil." },
            },
            dependsOn = { "accept-3116-simple-sigil" },
            id = "turnin-3116-simple-sigil",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-3116-simple-sigil",
        },
        {
            id = "level-before-accept-92532-the-warriors-path",
            kind = "note",
            text = "Reach level 2 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            checkpointQuest = 92532,
        },
        {
            route = {
                { y = 0.234, mapID = 2521, label = "Rorian the Dayseeker", x = 0.42, offMapText = "Travel to Rorian the Dayseeker in Zephras Isle." },
            },
            dependsOn = { "turnin-92461-harmony-in-balance" },
            id = "accept-92532-the-warriors-path",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-92532-the-warriors-path",
        },
        {
            route = {
                { y = 0.242, mapID = 2521, label = "Blademaster Ren", x = 0.436, offMapText = "Travel to Blademaster Ren in Zephras Isle." },
            },
            dependsOn = { "accept-92532-the-warriors-path" },
            id = "turnin-92532-the-warriors-path",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-92532-the-warriors-path",
        },
        {
            id = "level-before-accept-1638-a-warriors-training",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    { race = 1 },
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
            checkpointQuest = 1638,
            alternativeQuests = { 1678, 1683, 1639 },
        },
        {
            route = {
                { y = 0.598, mapID = 1453, label = "Ilsa Corbin", x = 0.804, offMapText = "Travel to Ilsa Corbin in Stormwind City." },
            },
            id = "accept-1638-a-warriors-training",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1638-a-warriors-training",
        },
        {
            route = {
                { y = 0.372, mapID = 1453, label = "Harry Burlguard", x = 0.74, offMapText = "Travel to Harry Burlguard in Stormwind City." },
            },
            dependsOn = { "accept-1638-a-warriors-training" },
            id = "turnin-1638-a-warriors-training",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1638-a-warriors-training",
        },
        {
            route = {
                { y = 0.533, mapID = 1453, label = "Harry Burlguard", x = 0.771, offMapText = "Travel to Harry Burlguard in Stormwind City." },
            },
            dependsOn = { "turnin-1638-a-warriors-training" },
            id = "accept-1639-bartleby-the-drunk",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1639-bartleby-the-drunk",
        },
        {
            route = {
                { y = 0.366, mapID = 1453, label = "Bartleby", x = 0.738, offMapText = "Travel to Bartleby in Stormwind City." },
            },
            dependsOn = { "accept-1639-bartleby-the-drunk" },
            id = "turnin-1639-bartleby-the-drunk",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1639-bartleby-the-drunk",
        },
        {
            id = "level-before-accept-1679-muren-stormpike",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 3, 7 },
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
            checkpointQuest = 1679,
            alternativeQuests = { 1639, 1683 },
        },
        {
            route = {
                { y = 0.526, mapID = 1426, label = "Granis Swiftaxe", x = 0.472, offMapText = "Travel to Granis Swiftaxe in Dun Morogh." },
            },
            id = "accept-1679-muren-stormpike",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1679-muren-stormpike",
        },
        {
            route = {
                { y = 0.904, mapID = 1455, label = "Muren Stormpike", x = 0.706, offMapText = "Travel to Muren Stormpike in Ironforge." },
            },
            dependsOn = { "accept-1679-muren-stormpike" },
            id = "turnin-1679-muren-stormpike",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1679-muren-stormpike",
        },
        {
            route = {
                { y = 0.904, mapID = 1455, label = "Muren Stormpike", x = 0.706, offMapText = "Travel to Muren Stormpike in Ironforge." },
            },
            dependsOn = { "turnin-1679-muren-stormpike" },
            id = "accept-1678-vejrek",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1678-vejrek",
        },
        {
            id = "objective-1678-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1678-vejrek" },
            classAction = "objective-1678-quest-work",
        },
        {
            route = {
                { y = 0.904, mapID = 1455, label = "Muren Stormpike", x = 0.706, offMapText = "Travel to Muren Stormpike in Ironforge." },
            },
            dependsOn = { "accept-1678-vejrek", "objective-1678-quest-work" },
            id = "turnin-1678-vejrek",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1678-vejrek",
        },
        {
            id = "level-before-accept-1684-elanaria",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    { race = 4 },
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
            checkpointQuest = 1684,
            alternativeQuests = { 1639, 1678, 1683 },
        },
        {
            route = {
                { y = 0.584, mapID = 1438, label = "Moon Priestess Amara", x = 0.556, offMapText = "Travel to Moon Priestess Amara in Teldrassil." },
                { y = 0.592, mapID = 1438, label = "Kyra Windblade", x = 0.562, offMapText = "Travel to Kyra Windblade in Teldrassil." },
            },
            id = "accept-1684-elanaria",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1684-elanaria",
        },
        {
            route = {
                { y = 0.348, mapID = 1457, label = "Elanaria", x = 0.574, offMapText = "Travel to Elanaria in Darnassus." },
            },
            dependsOn = { "accept-1684-elanaria" },
            id = "turnin-1684-elanaria",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1684-elanaria",
        },
        {
            route = {
                { y = 0.348, mapID = 1457, label = "Elanaria", x = 0.574, offMapText = "Travel to Elanaria in Darnassus." },
            },
            dependsOn = { "turnin-1684-elanaria" },
            id = "accept-1683-vorlus-vilehoof",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1683-vorlus-vilehoof",
        },
        {
            route = {
                { mapID = 1438, x = 0.4725, y = 0.636, label = "Horn of Vorlus", offMapText = "Travel to Horn of Vorlus." },
            },
            id = "objective-1683-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-1683-vorlus-vilehoof" },
            classAction = "objective-1683-quest-work",
        },
        {
            route = {
                { y = 0.348, mapID = 1457, label = "Elanaria", x = 0.574, offMapText = "Travel to Elanaria in Darnassus." },
            },
            dependsOn = { "accept-1683-vorlus-vilehoof", "objective-1683-quest-work" },
            id = "turnin-1683-vorlus-vilehoof",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 4 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1683-vorlus-vilehoof",
        },
        {
            route = {
                { y = 0.525, mapID = 1453, label = "Bartleby", x = 0.768, offMapText = "Travel to Bartleby in Stormwind City." },
            },
            dependsOn = { "turnin-1639-bartleby-the-drunk" },
            id = "accept-1640-beat-bartleby",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1640-beat-bartleby",
        },
        {
            id = "objective-1640-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1640-beat-bartleby" },
            classAction = "objective-1640-quest-work",
        },
        {
            route = {
                { y = 0.366, mapID = 1453, label = "Bartleby", x = 0.738, offMapText = "Travel to Bartleby in Stormwind City." },
            },
            dependsOn = { "accept-1640-beat-bartleby", "objective-1640-quest-work" },
            id = "turnin-1640-beat-bartleby",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1640-beat-bartleby",
        },
        {
            route = {
                { y = 0.525, mapID = 1453, label = "Bartleby", x = 0.768, offMapText = "Travel to Bartleby in Stormwind City." },
            },
            dependsOn = { "turnin-1640-beat-bartleby", "turnin-1639-bartleby-the-drunk" },
            id = "accept-1665-bartlebys-mug",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1665-bartlebys-mug",
        },
        {
            route = {
                { y = 0.372, mapID = 1453, label = "Harry Burlguard", x = 0.74, offMapText = "Travel to Harry Burlguard in Stormwind City." },
            },
            dependsOn = { "accept-1665-bartlebys-mug" },
            id = "turnin-1665-bartlebys-mug",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1665-bartlebys-mug",
        },
        {
            id = "level-before-accept-94003-the-skybreaker-bulwark",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            checkpointQuest = 94003,
        },
        {
            route = {
                { y = 0.728, mapID = 2521, label = "Seena Skybreaker", x = 0.598, offMapText = "Travel to Seena Skybreaker in Zephras Isle." },
            },
            id = "accept-94003-the-skybreaker-bulwark",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-94003-the-skybreaker-bulwark",
        },
        {
            route = {
                { y = 0.504, mapID = 2521, label = "Zaal Stormshield", x = 0.566, offMapText = "Travel to Zaal Stormshield in Zephras Isle." },
            },
            dependsOn = { "accept-94003-the-skybreaker-bulwark" },
            id = "objective-94003-the-skybreaker-bulwark",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "objective-94003-the-skybreaker-bulwark",
        },
        {
            route = {
                { y = 0.728, mapID = 2521, label = "Seena Skybreaker", x = 0.598, offMapText = "Travel to Seena Skybreaker in Zephras Isle." },
            },
            dependsOn = { "accept-94003-the-skybreaker-bulwark", "objective-94003-the-skybreaker-bulwark" },
            id = "turnin-94003-the-skybreaker-bulwark",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-94003-the-skybreaker-bulwark",
        },
        {
            id = "level-before-accept-1505-veteran-uzzek",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            checkpointQuest = 1505,
            alternativeQuests = { 1819 },
        },
        {
            route = {
                { y = 0.324, mapID = 1454, label = "Sorek", x = 0.802, offMapText = "Travel to Sorek in Orgrimmar." },
            },
            id = "accept-1505-veteran-uzzek",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1505-veteran-uzzek",
        },
        {
            route = {
                { y = 0.21, mapID = 1413, label = "Uzzek", x = 0.614, offMapText = "Travel to Uzzek in The Barrens." },
            },
            dependsOn = { "accept-1505-veteran-uzzek" },
            id = "turnin-1505-veteran-uzzek",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1505-veteran-uzzek",
        },
        {
            route = {
                { y = 0.21, mapID = 1413, label = "Uzzek", x = 0.614, offMapText = "Travel to Uzzek in The Barrens." },
            },
            dependsOn = { "turnin-1505-veteran-uzzek" },
            id = "accept-1498-path-of-defense",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1498-path-of-defense",
        },
        {
            id = "objective-1498-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            dependsOn = { "accept-1498-path-of-defense" },
            classAction = "objective-1498-quest-work",
        },
        {
            route = {
                { y = 0.21, mapID = 1413, label = "Uzzek", x = 0.614, offMapText = "Travel to Uzzek in The Barrens." },
            },
            dependsOn = { "accept-1498-path-of-defense", "objective-1498-quest-work" },
            id = "turnin-1498-path-of-defense",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1498-path-of-defense",
        },
        {
            id = "level-before-accept-1818-speak-with-dillinger",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 1818,
            alternativeQuests = { 1498 },
        },
        {
            route = {
                { y = 0.524, mapID = 1420, label = "Austil de Mon", x = 0.618, offMapText = "Travel to Austil de Mon in Tirisfal Glades." },
            },
            id = "accept-1818-speak-with-dillinger",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1818-speak-with-dillinger",
        },
        {
            route = {
                { y = 0.514, mapID = 1420, label = "Deathguard Dillinger", x = 0.582, offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades." },
            },
            dependsOn = { "accept-1818-speak-with-dillinger" },
            id = "turnin-1818-speak-with-dillinger",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1818-speak-with-dillinger",
        },
        {
            route = {
                { y = 0.514, mapID = 1420, label = "Deathguard Dillinger", x = 0.582, offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades." },
            },
            dependsOn = { "turnin-1818-speak-with-dillinger" },
            id = "accept-1819-ulag-the-cleaver",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1819-ulag-the-cleaver",
        },
        {
            route = {
                { mapID = 1420, x = 0.5916, y = 0.4851, label = "Ulag the Cleaver", offMapText = "Travel to Ulag the Cleaver." },
            },
            id = "objective-1819-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = { "accept-1819-ulag-the-cleaver" },
            classAction = "objective-1819-quest-work",
        },
        {
            route = {
                { y = 0.514, mapID = 1420, label = "Deathguard Dillinger", x = 0.582, offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades." },
            },
            dependsOn = { "accept-1819-ulag-the-cleaver", "objective-1819-quest-work" },
            id = "turnin-1819-ulag-the-cleaver",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1819-ulag-the-cleaver",
        },
        {
            route = {
                { y = 0.21, mapID = 1413, label = "Uzzek", x = 0.614, offMapText = "Travel to Uzzek in The Barrens." },
            },
            dependsOn = { "turnin-1498-path-of-defense", "turnin-1505-veteran-uzzek" },
            id = "accept-1502-thungrim-firegaze",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1502-thungrim-firegaze",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "accept-1502-thungrim-firegaze" },
            id = "turnin-1502-thungrim-firegaze",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1502-thungrim-firegaze",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "turnin-1502-thungrim-firegaze" },
            id = "accept-1503-forged-steel",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1503-forged-steel",
        },
        {
            id = "objective-1503-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            dependsOn = { "accept-1503-forged-steel" },
            classAction = "objective-1503-quest-work",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "accept-1503-forged-steel", "objective-1503-quest-work" },
            id = "turnin-1503-forged-steel",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1503-forged-steel",
        },
        {
            route = {
                { y = 0.514, mapID = 1420, label = "Deathguard Dillinger", x = 0.582, offMapText = "Travel to Deathguard Dillinger in Tirisfal Glades." },
            },
            dependsOn = { "turnin-1819-ulag-the-cleaver", "turnin-1818-speak-with-dillinger" },
            id = "accept-1820-speak-with-coleman",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1820-speak-with-coleman",
        },
        {
            route = {
                { y = 0.524, mapID = 1420, label = "Coleman Farthing", x = 0.618, offMapText = "Travel to Coleman Farthing in Tirisfal Glades." },
            },
            dependsOn = { "accept-1820-speak-with-coleman" },
            id = "turnin-1820-speak-with-coleman",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1820-speak-with-coleman",
        },
        {
            route = {
                { y = 0.524, mapID = 1420, label = "Coleman Farthing", x = 0.618, offMapText = "Travel to Coleman Farthing in Tirisfal Glades." },
            },
            dependsOn = { "turnin-1820-speak-with-coleman" },
            id = "accept-1821-agamand-heirlooms",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1821-agamand-heirlooms",
        },
        {
            id = "objective-1821-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1821-agamand-heirlooms" },
            classAction = "objective-1821-quest-work",
        },
        {
            route = {
                { y = 0.524, mapID = 1420, label = "Coleman Farthing", x = 0.618, offMapText = "Travel to Coleman Farthing in Tirisfal Glades." },
            },
            dependsOn = { "accept-1821-agamand-heirlooms", "objective-1821-quest-work" },
            id = "turnin-1821-agamand-heirlooms",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1821-agamand-heirlooms",
        },
        {
            route = {
                { y = 0.533, mapID = 1453, label = "Harry Burlguard", x = 0.771, offMapText = "Travel to Harry Burlguard in Stormwind City." },
            },
            id = "accept-1666-marshal-haggard",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1666-marshal-haggard",
        },
        {
            route = {
                { y = 0.694, mapID = 1429, label = "Marshal Haggard", x = 0.846, offMapText = "Travel to Marshal Haggard in Elwynn Forest." },
            },
            dependsOn = { "accept-1666-marshal-haggard" },
            id = "turnin-1666-marshal-haggard",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1666-marshal-haggard",
        },
        {
            route = {
                { y = 0.694, mapID = 1429, label = "Marshal Haggard", x = 0.846, offMapText = "Travel to Marshal Haggard in Elwynn Forest." },
            },
            dependsOn = { "turnin-1666-marshal-haggard" },
            id = "accept-1667-dead-tooth-jack",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1667-dead-tooth-jack",
        },
        {
            route = {
                { y = 0.79, mapID = 1429, label = "Dead-Tooth Jack", x = 0.892, offMapText = "Travel to Dead-Tooth Jack in Elwynn Forest." },
            },
            dependsOn = { "accept-1667-dead-tooth-jack" },
            id = "objective-1667-dead-tooth-jack",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1667-dead-tooth-jack",
        },
        {
            route = {
                { y = 0.694, mapID = 1429, label = "Marshal Haggard", x = 0.846, offMapText = "Travel to Marshal Haggard in Elwynn Forest." },
            },
            dependsOn = { "accept-1667-dead-tooth-jack", "objective-1667-dead-tooth-jack" },
            id = "turnin-1667-dead-tooth-jack",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    { race = 1 },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1667-dead-tooth-jack",
        },
        {
            id = "level-before-accept-1680-tormus-deepforge",
            kind = "note",
            text = "Reach level 10 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
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
            checkpointQuest = 1680,
        },
        {
            route = {
                { y = 0.904, mapID = 1455, label = "Muren Stormpike", x = 0.706, offMapText = "Travel to Muren Stormpike in Ironforge." },
            },
            dependsOn = { "turnin-1678-vejrek" },
            id = "accept-1680-tormus-deepforge",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1680-tormus-deepforge",
        },
        {
            route = {
                { y = 0.43, mapID = 1455, label = "Tormus Deepforge", x = 0.486, offMapText = "Travel to Tormus Deepforge in Ironforge." },
            },
            dependsOn = { "accept-1680-tormus-deepforge" },
            id = "turnin-1680-tormus-deepforge",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1680-tormus-deepforge",
        },
        {
            route = {
                { y = 0.43, mapID = 1455, label = "Tormus Deepforge", x = 0.486, offMapText = "Travel to Tormus Deepforge in Ironforge." },
            },
            dependsOn = { "turnin-1680-tormus-deepforge" },
            id = "accept-1681-ironbands-compound",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1681-ironbands-compound",
        },
        {
            id = "objective-1681-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1681-ironbands-compound" },
            classAction = "objective-1681-quest-work",
        },
        {
            route = {
                { y = 0.43, mapID = 1455, label = "Tormus Deepforge", x = 0.486, offMapText = "Travel to Tormus Deepforge in Ironforge." },
            },
            dependsOn = { "accept-1681-ironbands-compound", "objective-1681-quest-work" },
            id = "turnin-1681-ironbands-compound",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1681-ironbands-compound",
        },
        {
            route = {
                { y = 0.43, mapID = 1455, label = "Tormus Deepforge", x = 0.486, offMapText = "Travel to Tormus Deepforge in Ironforge." },
            },
            id = "accept-1682-grey-iron-weapons",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1682-grey-iron-weapons",
        },
        {
            route = {
                { y = 0.43, mapID = 1455, label = "Tormus Deepforge", x = 0.486, offMapText = "Travel to Tormus Deepforge in Ironforge." },
            },
            dependsOn = { "accept-1682-grey-iron-weapons" },
            id = "turnin-1682-grey-iron-weapons",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1682-grey-iron-weapons",
        },
        {
            route = {
                { y = 0.348, mapID = 1457, label = "Elanaria", x = 0.574, offMapText = "Travel to Elanaria in Darnassus." },
            },
            id = "accept-1686-the-shade-of-elura",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1686-the-shade-of-elura",
        },
        {
            id = "objective-1686-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1686-the-shade-of-elura" },
            classAction = "objective-1686-quest-work",
        },
        {
            route = {
                { y = 0.348, mapID = 1457, label = "Elanaria", x = 0.574, offMapText = "Travel to Elanaria in Darnassus." },
            },
            dependsOn = { "accept-1686-the-shade-of-elura", "objective-1686-quest-work" },
            id = "turnin-1686-the-shade-of-elura",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1686-the-shade-of-elura",
        },
        {
            route = {
                { y = 0.348, mapID = 1457, label = "Elanaria", x = 0.574, offMapText = "Travel to Elanaria in Darnassus." },
            },
            dependsOn = { "turnin-1686-the-shade-of-elura" },
            id = "accept-1692-smith-mathiel",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1692-smith-mathiel",
        },
        {
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            dependsOn = { "accept-1692-smith-mathiel" },
            id = "turnin-1692-smith-mathiel",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1692-smith-mathiel",
        },
        {
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            id = "accept-1693-weapons-of-elunite",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1693-weapons-of-elunite",
        },
        {
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            dependsOn = { "accept-1693-weapons-of-elunite" },
            id = "turnin-1693-weapons-of-elunite",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                    {
                        race = { 1, 3, 4, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1693-weapons-of-elunite",
        },
        {
            route = {
                { y = 0.524, mapID = 1420, label = "Coleman Farthing", x = 0.618, offMapText = "Travel to Coleman Farthing in Tirisfal Glades." },
            },
            id = "accept-1822-heirloom-weapon",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1822-heirloom-weapon",
        },
        {
            route = {
                { y = 0.524, mapID = 1420, label = "Coleman Farthing", x = 0.618, offMapText = "Travel to Coleman Farthing in Tirisfal Glades." },
            },
            dependsOn = { "accept-1822-heirloom-weapon" },
            id = "turnin-1822-heirloom-weapon",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    { race = 5 },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1822-heirloom-weapon",
        },
        {
            id = "level-before-accept-1698-yorus-barleybrew",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            checkpointQuest = 1698,
        },
        {
            route = {
                { y = 0.456, mapID = 1453, label = "Wu Shen", x = 0.788, offMapText = "Travel to Wu Shen in Stormwind City." },
            },
            id = "accept-1698-yorus-barleybrew",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1698-yorus-barleybrew",
        },
        {
            route = {
                { y = 0.448, mapID = 1433, label = "Yorus Barleybrew", x = 0.266, offMapText = "Travel to Yorus Barleybrew in Redridge Mountains." },
            },
            dependsOn = { "accept-1698-yorus-barleybrew" },
            id = "turnin-1698-yorus-barleybrew",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1698-yorus-barleybrew",
        },
        {
            route = {
                { y = 0.447, mapID = 1433, label = "Yorus Barleybrew", x = 0.215, offMapText = "Travel to Yorus Barleybrew in Redridge Mountains." },
            },
            dependsOn = { "turnin-1698-yorus-barleybrew" },
            id = "accept-1699-the-rethban-gauntlet",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1699-the-rethban-gauntlet",
        },
        {
            dependsOn = { "accept-1699-the-rethban-gauntlet" },
            id = "objective-1699-reviewed-mechanics",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "objective-1699-reviewed-mechanics",
        },
        {
            route = {
                { y = 0.448, mapID = 1433, label = "Yorus Barleybrew", x = 0.266, offMapText = "Travel to Yorus Barleybrew in Redridge Mountains." },
            },
            dependsOn = { "accept-1699-the-rethban-gauntlet", "objective-1699-reviewed-mechanics" },
            id = "turnin-1699-the-rethban-gauntlet",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1699-the-rethban-gauntlet",
        },
        {
            route = {
                { y = 0.447, mapID = 1433, label = "Yorus Barleybrew", x = 0.215, offMapText = "Travel to Yorus Barleybrew in Redridge Mountains." },
            },
            id = "accept-1702-the-shieldsmith",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1702-the-shieldsmith",
        },
        {
            route = {
                { y = 0.168, mapID = 1453, label = "Furen Longbeard", x = 0.58, offMapText = "Travel to Furen Longbeard in Stormwind City." },
            },
            dependsOn = { "accept-1702-the-shieldsmith" },
            id = "turnin-1702-the-shieldsmith",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1702-the-shieldsmith",
        },
        {
            route = {
                { y = 0.372, mapID = 1453, label = "Furen Longbeard", x = 0.646, offMapText = "Travel to Furen Longbeard in Stormwind City." },
            },
            dependsOn = { "turnin-1702-the-shieldsmith" },
            id = "accept-1701-fire-hardened-mail",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1701-fire-hardened-mail",
        },
        {
            id = "objective-1701-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            dependsOn = { "accept-1701-fire-hardened-mail" },
            classAction = "objective-1701-quest-work",
        },
        {
            route = {
                { y = 0.168, mapID = 1453, label = "Furen Longbeard", x = 0.58, offMapText = "Travel to Furen Longbeard in Stormwind City." },
            },
            dependsOn = { "accept-1701-fire-hardened-mail", "objective-1701-quest-work" },
            id = "turnin-1701-fire-hardened-mail",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1701-fire-hardened-mail",
        },
        {
            id = "level-before-accept-1823-speak-with-ruga",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            checkpointQuest = 1823,
        },
        {
            route = {
                { y = 0.17, mapID = 1458, label = "Baltus Fowler", x = 0.472, offMapText = "Travel to Baltus Fowler in Undercity." },
            },
            id = "accept-1823-speak-with-ruga",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            dependsOn = {},
            classAction = "accept-1823-speak-with-ruga",
        },
        {
            route = {
                { y = 0.594, mapID = 1413, label = "Ruga Ragetotem", x = 0.446, offMapText = "Travel to Ruga Ragetotem in The Barrens." },
            },
            dependsOn = { "accept-1823-speak-with-ruga" },
            id = "turnin-1823-speak-with-ruga",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1823-speak-with-ruga",
        },
        {
            route = {
                { y = 0.594, mapID = 1413, label = "Ruga Ragetotem", x = 0.446, offMapText = "Travel to Ruga Ragetotem in The Barrens." },
            },
            dependsOn = { "turnin-1823-speak-with-ruga" },
            id = "accept-1824-trial-at-the-field-of-giants",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1824-trial-at-the-field-of-giants",
        },
        {
            route = {
                { y = 0.694, mapID = 1413, label = "Silithid Creeper", x = 0.454, offMapText = "Travel to Silithid Creeper in The Barrens." },
                { y = 0.694, mapID = 1413, label = "Silithid Grub", x = 0.452, offMapText = "Travel to Silithid Grub in The Barrens." },
                { y = 0.688, mapID = 1413, label = "Silithid Swarmer", x = 0.452, offMapText = "Travel to Silithid Swarmer in The Barrens." },
                { y = 0.702, mapID = 1413, label = "Silithid Harvester", x = 0.478, offMapText = "Travel to Silithid Harvester in The Barrens." },
                { y = 0.704, mapID = 1413, label = "Silithid Protector", x = 0.434, offMapText = "Travel to Silithid Protector in The Barrens." },
            },
            dependsOn = { "accept-1824-trial-at-the-field-of-giants" },
            id = "objective-1824-trial-at-the-field-of-giants",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "objective-1824-trial-at-the-field-of-giants",
        },
        {
            route = {
                { y = 0.594, mapID = 1413, label = "Ruga Ragetotem", x = 0.446, offMapText = "Travel to Ruga Ragetotem in The Barrens." },
            },
            dependsOn = { "accept-1824-trial-at-the-field-of-giants", "objective-1824-trial-at-the-field-of-giants" },
            id = "turnin-1824-trial-at-the-field-of-giants",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1824-trial-at-the-field-of-giants",
        },
        {
            route = {
                { y = 0.594, mapID = 1413, label = "Ruga Ragetotem", x = 0.446, offMapText = "Travel to Ruga Ragetotem in The Barrens." },
            },
            dependsOn = { "turnin-1824-trial-at-the-field-of-giants" },
            id = "accept-1825-speak-with-thungrim",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1825-speak-with-thungrim",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "accept-1825-speak-with-thungrim" },
            id = "turnin-1825-speak-with-thungrim",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1825-speak-with-thungrim",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "turnin-1825-speak-with-thungrim" },
            id = "accept-1838-brutal-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1838-brutal-armor",
        },
        {
            dependsOn = { "accept-1838-brutal-armor" },
            id = "objective-1838-brutal-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            useClientPin = true,
            classAction = "objective-1838-brutal-armor",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "accept-1838-brutal-armor", "objective-1838-brutal-armor" },
            id = "turnin-1838-brutal-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1838-brutal-armor",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "turnin-1838-brutal-armor" },
            id = "accept-1848-brutal-hauberk",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1848-brutal-hauberk",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "accept-1848-brutal-hauberk" },
            id = "turnin-1848-brutal-hauberk",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1848-brutal-hauberk",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "turnin-1848-brutal-hauberk" },
            id = "accept-1839-ulaelek-and-the-brutal-gauntlets",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1839-ulaelek-and-the-brutal-gauntlets",
        },
        {
            route = {
                { y = 0.744, mapID = 1411, label = "Ula'elek", x = 0.562, offMapText = "Travel to Ula'elek in Durotar." },
            },
            dependsOn = { "accept-1839-ulaelek-and-the-brutal-gauntlets" },
            id = "turnin-1839-ulaelek-and-the-brutal-gauntlets",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1839-ulaelek-and-the-brutal-gauntlets",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "turnin-1848-brutal-hauberk" },
            id = "accept-1840-orm-stonehoof-and-the-brutal-helm",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1840-orm-stonehoof-and-the-brutal-helm",
        },
        {
            route = {
                { y = 0.558, mapID = 1456, label = "Orm Stonehoof", x = 0.39, offMapText = "Travel to Orm Stonehoof in Thunder Bluff." },
            },
            dependsOn = { "accept-1840-orm-stonehoof-and-the-brutal-helm" },
            id = "turnin-1840-orm-stonehoof-and-the-brutal-helm",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1840-orm-stonehoof-and-the-brutal-helm",
        },
        {
            route = {
                { y = 0.302, mapID = 1413, label = "Thun'grim Firegaze", x = 0.572, offMapText = "Travel to Thun'grim Firegaze in The Barrens." },
            },
            dependsOn = { "turnin-1848-brutal-hauberk" },
            id = "accept-1841-velora-nitely-and-the-brutal-legguards",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1841-velora-nitely-and-the-brutal-legguards",
        },
        {
            route = {
                { y = 0.392, mapID = 1458, label = "Velora Nitely", x = 0.624, offMapText = "Travel to Velora Nitely in Undercity." },
            },
            dependsOn = { "accept-1841-velora-nitely-and-the-brutal-legguards" },
            id = "turnin-1841-velora-nitely-and-the-brutal-legguards",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1841-velora-nitely-and-the-brutal-legguards",
        },
        {
            route = {
                { y = 0.744, mapID = 1411, label = "Ula'elek", x = 0.562, offMapText = "Travel to Ula'elek in Durotar." },
            },
            dependsOn = { "turnin-1839-ulaelek-and-the-brutal-gauntlets" },
            id = "accept-1842-satyr-hooves",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1842-satyr-hooves",
        },
        {
            id = "objective-1842-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            useClientPin = true,
            dependsOn = { "accept-1842-satyr-hooves" },
            classAction = "objective-1842-quest-work",
        },
        {
            route = {
                { y = 0.744, mapID = 1411, label = "Ula'elek", x = 0.562, offMapText = "Travel to Ula'elek in Durotar." },
            },
            dependsOn = { "accept-1842-satyr-hooves", "objective-1842-quest-work" },
            id = "turnin-1842-satyr-hooves",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1842-satyr-hooves",
        },
        {
            route = {
                { y = 0.744, mapID = 1411, label = "Ula'elek", x = 0.562, offMapText = "Travel to Ula'elek in Durotar." },
            },
            dependsOn = { "turnin-1842-satyr-hooves" },
            id = "accept-1843-brutal-gauntlets",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1843-brutal-gauntlets",
        },
        {
            route = {
                { y = 0.744, mapID = 1411, label = "Ula'elek", x = 0.562, offMapText = "Travel to Ula'elek in Durotar." },
            },
            dependsOn = { "accept-1843-brutal-gauntlets" },
            id = "turnin-1843-brutal-gauntlets",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1843-brutal-gauntlets",
        },
        {
            route = {
                { y = 0.558, mapID = 1456, label = "Orm Stonehoof", x = 0.39, offMapText = "Travel to Orm Stonehoof in Thunder Bluff." },
            },
            dependsOn = { "turnin-1840-orm-stonehoof-and-the-brutal-helm" },
            id = "accept-1844-chimaeric-horn",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1844-chimaeric-horn",
        },
        {
            id = "objective-1844-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            useClientPin = true,
            dependsOn = { "accept-1844-chimaeric-horn" },
            classAction = "objective-1844-quest-work",
        },
        {
            route = {
                { y = 0.558, mapID = 1456, label = "Orm Stonehoof", x = 0.39, offMapText = "Travel to Orm Stonehoof in Thunder Bluff." },
            },
            dependsOn = { "accept-1844-chimaeric-horn", "objective-1844-quest-work" },
            id = "turnin-1844-chimaeric-horn",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1844-chimaeric-horn",
        },
        {
            route = {
                { y = 0.558, mapID = 1456, label = "Orm Stonehoof", x = 0.39, offMapText = "Travel to Orm Stonehoof in Thunder Bluff." },
            },
            dependsOn = { "turnin-1844-chimaeric-horn" },
            id = "accept-1845-brutal-helm",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1845-brutal-helm",
        },
        {
            route = {
                { y = 0.558, mapID = 1456, label = "Orm Stonehoof", x = 0.39, offMapText = "Travel to Orm Stonehoof in Thunder Bluff." },
            },
            dependsOn = { "accept-1845-brutal-helm" },
            id = "turnin-1845-brutal-helm",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1845-brutal-helm",
        },
        {
            route = {
                { y = 0.392, mapID = 1458, label = "Velora Nitely", x = 0.624, offMapText = "Travel to Velora Nitely in Undercity." },
            },
            dependsOn = { "turnin-1841-velora-nitely-and-the-brutal-legguards" },
            id = "accept-1846-dragonmaw-shinbones",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1846-dragonmaw-shinbones",
        },
        {
            id = "objective-1846-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            useClientPin = true,
            dependsOn = { "accept-1846-dragonmaw-shinbones" },
            classAction = "objective-1846-quest-work",
        },
        {
            route = {
                { y = 0.392, mapID = 1458, label = "Velora Nitely", x = 0.624, offMapText = "Travel to Velora Nitely in Undercity." },
            },
            dependsOn = { "accept-1846-dragonmaw-shinbones", "objective-1846-quest-work" },
            id = "turnin-1846-dragonmaw-shinbones",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1846-dragonmaw-shinbones",
        },
        {
            route = {
                { y = 0.392, mapID = 1458, label = "Velora Nitely", x = 0.624, offMapText = "Travel to Velora Nitely in Undercity." },
            },
            dependsOn = { "turnin-1846-dragonmaw-shinbones" },
            id = "accept-1847-brutal-legguards",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1847-brutal-legguards",
        },
        {
            route = {
                { y = 0.392, mapID = 1458, label = "Velora Nitely", x = 0.624, offMapText = "Travel to Velora Nitely in Undercity." },
            },
            dependsOn = { "accept-1847-brutal-legguards" },
            id = "turnin-1847-brutal-legguards",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1847-brutal-legguards",
        },
        {
            id = "level-before-accept-1782-authored-class-prerequisite",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
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
            checkpointQuest = 1782,
        },
        {
            id = "accept-1782-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 1 },
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
            route = {
                { mapID = 1453, x = 0.646, y = 0.372, label = "Furen Longbeard", offMapText = "Travel to Furen Longbeard." },
            },
            dependsOn = {},
            classAction = "accept-1782-authored-class-prerequisite",
        },
        {
            id = "turnin-1782-authored-class-prerequisite",
            conditions = {
                all = {
                    {
                        class = { 1 },
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
            route = {
                { mapID = 1453, x = 0.58, y = 0.168, label = "Furen Longbeard", offMapText = "Travel to Furen Longbeard." },
            },
            dependsOn = { "accept-1782-authored-class-prerequisite" },
            classAction = "turnin-1782-authored-class-prerequisite",
        },
        {
            id = "level-before-accept-1700-grimand-elmore",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            checkpointQuest = 1700,
        },
        {
            route = {
                { y = 0.372, mapID = 1453, label = "Furen Longbeard", x = 0.646, offMapText = "Travel to Furen Longbeard in Stormwind City." },
            },
            id = "accept-1700-grimand-elmore",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1700-grimand-elmore",
        },
        {
            route = {
                { y = 0.122, mapID = 1453, label = "Grimand Elmore", x = 0.516, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            dependsOn = { "accept-1700-grimand-elmore" },
            id = "turnin-1700-grimand-elmore",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1700-grimand-elmore",
        },
        {
            id = "level-before-accept-1703-mathiel",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            checkpointQuest = 1703,
        },
        {
            route = {
                { y = 0.372, mapID = 1453, label = "Furen Longbeard", x = 0.646, offMapText = "Travel to Furen Longbeard in Stormwind City." },
            },
            id = "accept-1703-mathiel",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1703-mathiel",
        },
        {
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            dependsOn = { "accept-1703-mathiel" },
            id = "turnin-1703-mathiel",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1703-mathiel",
        },
        {
            id = "level-before-accept-1704-klockmort-spannerspan",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 3, 7 },
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
            checkpointQuest = 1704,
        },
        {
            route = {
                { y = 0.372, mapID = 1453, label = "Furen Longbeard", x = 0.646, offMapText = "Travel to Furen Longbeard in Stormwind City." },
            },
            id = "accept-1704-klockmort-spannerspan",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1704-klockmort-spannerspan",
        },
        {
            route = {
                { y = 0.462, mapID = 1455, label = "Klockmort Spannerspan", x = 0.682, offMapText = "Travel to Klockmort Spannerspan in Ironforge." },
            },
            dependsOn = { "accept-1704-klockmort-spannerspan" },
            id = "turnin-1704-klockmort-spannerspan",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 3, 7 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1704-klockmort-spannerspan",
        },
        {
            route = {
                { y = 0.338, mapID = 1453, label = "Grimand Elmore", x = 0.597, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            dependsOn = { "turnin-1700-grimand-elmore" },
            id = "accept-1705-burning-blood",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1705-burning-blood",
        },
        {
            id = "objective-1705-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            dependsOn = { "accept-1705-burning-blood" },
            classAction = "objective-1705-quest-work",
        },
        {
            route = {
                { y = 0.122, mapID = 1453, label = "Grimand Elmore", x = 0.516, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            dependsOn = { "accept-1705-burning-blood", "objective-1705-quest-work" },
            id = "turnin-1705-burning-blood",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1705-burning-blood",
        },
        {
            route = {
                { y = 0.338, mapID = 1453, label = "Grimand Elmore", x = 0.597, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            id = "accept-1706-grimands-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1706-grimands-armor",
        },
        {
            route = {
                { y = 0.122, mapID = 1453, label = "Grimand Elmore", x = 0.516, offMapText = "Travel to Grimand Elmore in Stormwind City." },
            },
            dependsOn = { "accept-1706-grimands-armor" },
            id = "turnin-1706-grimands-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1706-grimands-armor",
        },
        {
            route = {
                { y = 0.462, mapID = 1455, label = "Klockmort Spannerspan", x = 0.682, offMapText = "Travel to Klockmort Spannerspan in Ironforge." },
            },
            dependsOn = { "turnin-1704-klockmort-spannerspan" },
            id = "accept-1708-iron-coral",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1708-iron-coral",
        },
        {
            id = "objective-1708-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            dependsOn = { "accept-1708-iron-coral" },
            classAction = "objective-1708-quest-work",
        },
        {
            route = {
                { y = 0.462, mapID = 1455, label = "Klockmort Spannerspan", x = 0.682, offMapText = "Travel to Klockmort Spannerspan in Ironforge." },
            },
            dependsOn = { "accept-1708-iron-coral", "objective-1708-quest-work" },
            id = "turnin-1708-iron-coral",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1708-iron-coral",
        },
        {
            route = {
                { y = 0.462, mapID = 1455, label = "Klockmort Spannerspan", x = 0.682, offMapText = "Travel to Klockmort Spannerspan in Ironforge." },
            },
            id = "accept-1709-klockmorts-creation",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1709-klockmorts-creation",
        },
        {
            route = {
                { y = 0.462, mapID = 1455, label = "Klockmort Spannerspan", x = 0.682, offMapText = "Travel to Klockmort Spannerspan in Ironforge." },
            },
            dependsOn = { "accept-1709-klockmorts-creation" },
            id = "turnin-1709-klockmorts-creation",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1709-klockmorts-creation",
        },
        {
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            dependsOn = { "turnin-1703-mathiel" },
            id = "accept-1710-sunscorched-shells",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1710-sunscorched-shells",
        },
        {
            id = "objective-1710-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            dependsOn = { "accept-1710-sunscorched-shells" },
            classAction = "objective-1710-quest-work",
        },
        {
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            dependsOn = { "accept-1710-sunscorched-shells", "objective-1710-quest-work" },
            id = "turnin-1710-sunscorched-shells",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1710-sunscorched-shells",
        },
        {
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            id = "accept-1711-mathiels-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "accept-1711-mathiels-armor",
        },
        {
            route = {
                { y = 0.454, mapID = 1457, label = "Mathiel", x = 0.592, offMapText = "Travel to Mathiel in Darnassus." },
            },
            dependsOn = { "accept-1711-mathiels-armor" },
            id = "turnin-1711-mathiels-armor",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            classAction = "turnin-1711-mathiels-armor",
        },
        {
            id = "level-before-accept-1718-the-islander",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
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
        },
        {
            route = {
                { y = 0.456, mapID = 1453, label = "Wu Shen", x = 0.788, offMapText = "Travel to Wu Shen in Stormwind City." },
            },
            id = "accept-1718-the-islander",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1718-the-islander",
        },
        {
            id = "level-before-accept-1718-the-islander-horde",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
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
            checkpointQuest = 1718,
        },
        {
            route = {
                { y = 0.17, mapID = 1458, label = "Baltus Fowler", x = 0.472, offMapText = "Travel to Baltus Fowler in Undercity." },
            },
            id = "accept-1718-the-islander-horde",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1718-the-islander-horde",
        },
        {
            id = "level-before-turnin-1718-the-islander",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            checkpointQuest = 1718,
        },
        {
            route = {
                { y = 0.49, mapID = 1413, label = "Klannoc Macleod", x = 0.686, offMapText = "Travel to Klannoc Macleod in The Barrens." },
            },
            dependsOn = { "accept-1718-the-islander", "accept-1718-the-islander-horde" },
            id = "turnin-1718-the-islander",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1718-the-islander",
        },
        {
            route = {
                { y = 0.49, mapID = 1413, label = "Klannoc Macleod", x = 0.666, offMapText = "Travel to Klannoc Macleod in The Barrens." },
            },
            dependsOn = { "turnin-1718-the-islander" },
            id = "accept-1719-the-affray",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1719-the-affray",
        },
        {
            id = "objective-1719-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-1719-the-affray" },
            classAction = "objective-1719-quest-work",
        },
        {
            route = {
                { y = 0.49, mapID = 1413, label = "Klannoc Macleod", x = 0.686, offMapText = "Travel to Klannoc Macleod in The Barrens." },
            },
            dependsOn = { "accept-1719-the-affray", "objective-1719-quest-work" },
            id = "turnin-1719-the-affray",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1719-the-affray",
        },
        {
            route = {
                { y = 0.49, mapID = 1413, label = "Klannoc Macleod", x = 0.686, offMapText = "Travel to Klannoc Macleod in The Barrens." },
            },
            dependsOn = { "turnin-1719-the-affray" },
            id = "accept-1791-the-windwatcher",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1791-the-windwatcher",
        },
        {
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "accept-1791-the-windwatcher" },
            id = "turnin-1791-the-windwatcher",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1791-the-windwatcher",
        },
        {
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "turnin-1791-the-windwatcher" },
            id = "accept-1712-cyclonian",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1712-cyclonian",
        },
        {
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah's Cauldron", x = 0.804, offMapText = "Travel to Bath'rah's Cauldron in Alterac Mountains." },
            },
            id = "accept-1714-essence-of-the-exile",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-1714-essence-of-the-exile",
        },
        {
            dependsOn = { "accept-1714-essence-of-the-exile" },
            id = "objective-1714-essence-of-the-exile",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1714-essence-of-the-exile",
        },
        {
            route = {
                { y = 0.667, mapID = 1416, label = "Bath'rah's Cauldron", x = 0.793, offMapText = "Travel to Bath'rah's Cauldron in Alterac Mountains." },
            },
            dependsOn = { "accept-1714-essence-of-the-exile", "objective-1714-essence-of-the-exile" },
            id = "turnin-1714-essence-of-the-exile",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1714-essence-of-the-exile",
        },
        {
            dependsOn = { "accept-1712-cyclonian" },
            id = "objective-1712-cyclonian",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = true,
            classAction = "objective-1712-cyclonian",
        },
        {
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "accept-1712-cyclonian", "objective-1712-cyclonian" },
            id = "turnin-1712-cyclonian",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1712-cyclonian",
        },
        {
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "turnin-1712-cyclonian" },
            id = "accept-1713-the-summoning",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1713-the-summoning",
        },
        {
            route = {
                { y = 0.62, mapID = 1416, label = "Cyclonian", x = 0.802, offMapText = "Travel to Cyclonian in Alterac Mountains." },
            },
            dependsOn = { "accept-1713-the-summoning" },
            id = "objective-1713-the-summoning",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "objective-1713-the-summoning",
        },
        {
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "accept-1713-the-summoning", "objective-1713-the-summoning" },
            id = "turnin-1713-the-summoning",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1713-the-summoning",
        },
        {
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "turnin-1713-the-summoning", "turnin-1712-cyclonian" },
            id = "accept-1792-whirlwind-weapon",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-1792-whirlwind-weapon",
        },
        {
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "accept-1792-whirlwind-weapon" },
            id = "turnin-1792-whirlwind-weapon",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1792-whirlwind-weapon",
        },
        {
            id = "level-before-accept-8417-a-troubled-spirit",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            checkpointQuest = 8417,
        },
        {
            route = {
                { y = 0.456, mapID = 1453, label = "Wu Shen", x = 0.788, offMapText = "Travel to Wu Shen in Stormwind City." },
            },
            id = "accept-8417-a-troubled-spirit",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8417-a-troubled-spirit",
        },
        {
            id = "level-before-accept-8417-a-troubled-spirit-horde",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            checkpointQuest = 8417,
        },
        {
            route = {
                { y = 0.15, mapID = 1458, label = "Christoph Walker", x = 0.472, offMapText = "Travel to Christoph Walker in Undercity." },
            },
            id = "accept-8417-a-troubled-spirit-horde",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            dependsOn = {},
            classAction = "accept-8417-a-troubled-spirit-horde",
        },
        {
            id = "level-before-turnin-8417-a-troubled-spirit",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
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
            checkpointQuest = 8417,
        },
        {
            route = {
                { y = 0.66, mapID = 1435, label = "Fallen Hero of the Horde", x = 0.342, offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows." },
            },
            dependsOn = { "accept-8417-a-troubled-spirit", "accept-8417-a-troubled-spirit-horde" },
            id = "turnin-8417-a-troubled-spirit",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8417-a-troubled-spirit",
        },
        {
            route = {
                { y = 0.66, mapID = 1435, label = "Fallen Hero of the Horde", x = 0.342, offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows." },
            },
            dependsOn = { "turnin-8417-a-troubled-spirit" },
            id = "accept-8423-warrior-kinship",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8423-warrior-kinship",
        },
        {
            id = "objective-8423-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-8423-warrior-kinship" },
            classAction = "objective-8423-quest-work",
        },
        {
            route = {
                { y = 0.66, mapID = 1435, label = "Fallen Hero of the Horde", x = 0.342, offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows." },
            },
            dependsOn = { "accept-8423-warrior-kinship", "objective-8423-quest-work" },
            id = "turnin-8423-warrior-kinship",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8423-warrior-kinship",
        },
        {
            route = {
                { y = 0.66, mapID = 1435, label = "Fallen Hero of the Horde", x = 0.342, offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows." },
            },
            dependsOn = { "turnin-8423-warrior-kinship", "turnin-8417-a-troubled-spirit" },
            id = "accept-8424-war-on-the-shadowsworn",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "accept-8424-war-on-the-shadowsworn",
        },
        {
            id = "objective-8424-quest-work",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "accept-8424-war-on-the-shadowsworn" },
            classAction = "objective-8424-quest-work",
        },
        {
            route = {
                { y = 0.66, mapID = 1435, label = "Fallen Hero of the Horde", x = 0.342, offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows." },
            },
            dependsOn = { "accept-8424-war-on-the-shadowsworn", "objective-8424-quest-work" },
            id = "turnin-8424-war-on-the-shadowsworn",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    {
                        level = { min = 50 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-8424-war-on-the-shadowsworn",
        },
    },
    routeMode = "ordered",
})
